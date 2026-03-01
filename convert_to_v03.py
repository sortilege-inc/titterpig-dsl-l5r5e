#!/usr/bin/env python3
"""Convert L5R5e 0.2 extension .ttrpg files to 0.3 format.

Handles:
1. VERSION/RELEASE_DATE bumps
2. School property name standardization
3. Curriculum syntax: value-first → keyword-first
4. Add EXTENDS ^"School" where missing in school DEFs
"""

import re
import sys


def convert_file(input_path, output_path):
    with open(input_path, 'r') as f:
        content = f.read()

    lines = content.split('\n')
    out_lines = []
    in_curriculum = False
    curriculum_depth = 0
    in_school_def = False
    school_def_depth = 0
    brace_depth = 0

    i = 0
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        # 1. Version bump
        if 'VERSION "0.1"' in line:
            line = line.replace('VERSION "0.1"', 'VERSION "0.3"')
        if 'RELEASE_DATE "2025-06-01"' in line:
            line = line.replace('RELEASE_DATE "2025-06-01"', 'RELEASE_DATE "2026-03-01"')

        # Track brace depth
        open_braces = line.count('{')
        close_braces = line.count('}')

        # 2. Detect school DEF (has APPLIES TO [^"Samurai"] and properties like ^"School")
        # We detect school DEFs by looking for the property pattern
        if stripped.startswith('^"') and 'DEF {' in stripped and not in_curriculum:
            # Check next few lines for school indicators
            is_school = False
            for j in range(i+1, min(i+30, len(lines))):
                if '^"School"' in lines[j] or '^"School Roles"' in lines[j] or '^"Starting Rings"' in lines[j]:
                    is_school = True
                    break
                if lines[j].strip().startswith('^"') and 'DEF {' in lines[j]:
                    break  # hit another DEF, stop looking

            if is_school:
                in_school_def = True
                school_def_depth = brace_depth + open_braces
                # Check if EXTENDS ^"School" is already present in next few lines
                has_extends = False
                has_applies_to = False
                applies_to_line_idx = -1
                for j in range(i+1, min(i+5, len(lines))):
                    if 'EXTENDS' in lines[j] and '^"School"' in lines[j]:
                        has_extends = True
                    if 'APPLIES TO' in lines[j]:
                        has_applies_to = True
                        applies_to_line_idx = j

                if not has_extends and has_applies_to:
                    # Insert EXTENDS ^"School" before APPLIES TO
                    # First, count braces in the DEF line and intermediate lines
                    brace_depth += open_braces - close_braces
                    out_lines.append(line)
                    # Get indentation from APPLIES TO line
                    indent = re.match(r'^(\s*)', lines[applies_to_line_idx]).group(1)
                    # Output lines between current and APPLIES TO, tracking braces
                    for k in range(i+1, applies_to_line_idx):
                        brace_depth += lines[k].count('{') - lines[k].count('}')
                        out_lines.append(lines[k])
                    out_lines.append(f'{indent}EXTENDS ^"School"')
                    i = applies_to_line_idx
                    line = lines[i]
                    stripped = line.strip()
                    open_braces = line.count('{')
                    close_braces = line.count('}')
                    # Don't double-count braces at bottom of loop
                    brace_depth += open_braces - close_braces
                    # Check curriculum/school exit
                    if in_curriculum and brace_depth < curriculum_depth:
                        in_curriculum = False
                    if in_school_def and brace_depth < school_def_depth:
                        in_school_def = False
                    out_lines.append(line)
                    i += 1
                    continue

        # 3. Property name standardization (only within school DEFs)
        if in_school_def:
            # ^"School" STRING → ^"School Name" STRING (but not ^"School Name" already)
            if re.search(r'\^"School"\s+STRING', line) and '^"School Name"' not in line:
                line = line.replace('^"School"', '^"School Name"')

            # ^"School Roles" → ^"Roles"
            if '^"School Roles"' in line:
                line = line.replace('^"School Roles"', '^"Roles"')
                # Also change LIST OF STRING to LIST
                line = re.sub(r'LIST OF STRING (\[)', r'LIST \1', line)

            # ^"Starting Rings" → ^"Ring Increase"
            if '^"Starting Rings"' in line:
                line = line.replace('^"Starting Rings"', '^"Ring Increase"')

            # ^"Available Technique Groups" → ^"Techniques Available"
            if '^"Available Technique Groups"' in line:
                line = line.replace('^"Available Technique Groups"', '^"Techniques Available"')
                # Also change LIST OF STRING to LIST
                line = re.sub(r'LIST OF STRING (\[)', r'LIST \1', line)

            # ^"Starting Techniques" STRING → keep as is (it's descriptive text)
            # ^"School Ability" STRING → keep as is (converting to sub-block would lose the string value)
            # ^"Mastery Ability" STRING → keep as is

        # 4. Curriculum conversion: ^"Rank N" → RANK N, value-first → keyword-first
        if stripped.startswith('CURRICULUM {') or stripped == 'CURRICULUM {':
            in_curriculum = True
            curriculum_depth = brace_depth + open_braces

        if in_curriculum:
            # ^"Rank N" { → RANK N {
            m = re.match(r'^(\s*)\^"Rank (\d+)"\s*\{', line)
            if m:
                indent = m.group(1)
                rank_num = m.group(2)
                line = f'{indent}RANK {rank_num} {{'

            # Value-first conversions:
            # "value" SKILL_GROUP → SKILL_GROUP "value Skills" (add Skills suffix if needed)
            m = re.match(r'^(\s*)"([^"]+)"\s+SKILL_GROUP\s*$', line)
            if m:
                indent = m.group(1)
                value = m.group(2)
                if not value.endswith(' Skills') and not value.endswith(' skills'):
                    value = value + ' Skills'
                line = f'{indent}SKILL_GROUP "{value}"'

            # "value" SKILL → SKILL "value"
            m = re.match(r'^(\s*)"([^"]+)"\s+SKILL\s*$', line)
            if m:
                indent = m.group(1)
                value = m.group(2)
                line = f'{indent}SKILL "{value}"'

            # "value (type)" TECH_GROUP → TECHNIQUE_GROUP "value"
            m = re.match(r'^(\s*)"([^"]+?)(?:\s*\([^)]+\))?\s*"\s+TECH_GROUP\s*$', line)
            if m:
                indent = m.group(1)
                value = m.group(2).strip()
                line = f'{indent}TECHNIQUE_GROUP "{value}"'

            # "value (type)" TECHNIQUE → ^"value" [type]
            m = re.match(r'^(\s*)"([^"]+?)\s*\(([^)]+)\)"\s+TECHNIQUE\s*$', line)
            if m:
                indent = m.group(1)
                name = m.group(2).strip()
                tech_type = m.group(3).strip().lower()
                line = f'{indent}^"{name}" [{tech_type}]'

            # "value" TECHNIQUE (no type tag) → ^"value"
            m2 = re.match(r'^(\s*)"([^"]+)"\s+TECHNIQUE\s*$', line)
            if m2 and not m:
                indent = m2.group(1)
                name = m2.group(2).strip()
                line = f'{indent}^"{name}"'

        # Track curriculum end
        brace_depth += open_braces - close_braces

        if in_curriculum and brace_depth < curriculum_depth:
            in_curriculum = False

        if in_school_def and brace_depth < school_def_depth:
            in_school_def = False

        out_lines.append(line)
        i += 1

    with open(output_path, 'w') as f:
        f.write('\n'.join(out_lines))

    print(f"Converted: {input_path} -> {output_path}")


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} input.ttrpg output.ttrpg")
        sys.exit(1)
    convert_file(sys.argv[1], sys.argv[2])
