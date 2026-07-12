---
name: titterpig-l5r5e
description: >-
  Work in the titterpig-dsl-l5r5e repo — Legend of the Five Rings 5th Edition encoded in Titterpig
  DSL. Use when authoring, editing, or validating l5r5e `.ttrpg`/`.arc`/`.lore` files, or resolving
  its validator findings. Defers to the canonical `titterpig-dsl` skill for all DSL rules,
  validation, FIAT/errata, and migration; adds l5r5e-specific vocabulary and its own sub-spec.
---

# Titterpig — Legend of the Five Rings 5e (l5r5e)

**Read the canonical `titterpig-dsl` skill first.** Then note that l5r5e has its **own system
sub-spec** — `l5r5e-dsl-spec.md` in this repo — which defines the L5R5e vocabulary (keywords,
property shapes, structural patterns) layered on the base spec. **Read it before authoring l5r5e
content.** This skill is a pointer + orientation; the sub-spec is the detail.

## Layout

- Current content lives in `0.4/` (history: `0.1/`, `0.2/`, `0.3/`). Validate the whole dir:
  `python3 ../titterpig-dsl/ttrpg_validator.py 0.4/`
- `l5r5e-dsl-spec.md` — the L5R5e sub-spec (currently headed v0.3; the base spec it targets is v0.4).
- `convert_to_v03.py` — a historical content-conversion script; not part of authoring.
- Large corpus: a 5-file **core** (`base`, `traits`, `character`, `techniques`, `systems`) plus many
  sourcebook EXTENSION sets (Emerald Empire, Shadowlands, Courts of Stone, Path of Waves, Writ of the
  Wilds, Fields of Victory, Celestial Realms, Children of the Five Winds, …), each split into
  `-mechanics.ttrpg` and `-*.lore`.

## System vocabulary

- **Architecture:** multi-file `BASE` core (`L5R5e_Core_*`) with sourcebooks as `EXTENSION` files that
  layer on top. One structural pattern per entity type — don't author schools four different ways.
- **The Five Rings:** Air, Earth, Fire, Water, Void — the core ring stat plus derived attributes.
- **Checks:** custom L5R5e dice (Ring + Skill dice), symbols, Target Number, Opportunity spending,
  Void Points.
- **Conflict:** Stances, conflict types, Actions; Strife / Composure / Unmasking.
- **Generic types:** `Clan` / `Family` / `School` (Great Clan and Minor Clan patterns; standardized
  School DEF, School-EXTENDS-School inheritance, curriculum entry keywords).
- **Character:** Twenty Questions creation; Advantages/Disadvantages (Distinctions/Adversities via the
  ENTRIES pattern); Techniques.
- Romanization / special characters: follow the sub-spec's conventions.

## Migration notes & loose threads (see `titterpig-mastra/RESUME.md` + `TASKS.md`)

- **`APPLIES TO` → `EXTENDS`:** l5r5e NPCs that used `APPLIES TO [^"Type"]` to mean "is a Type" (has a
  stat block) were converted to `EXTENDS`. Apply the same per-case, block-aware rule to new NPCs;
  leave trait/scope uses of `APPLIES TO` alone.
- **NPC Templates modeling** is an open spec-level follow-up.
- **Stashes** in this clone: `stash@{1}` = Jordan's real `0.1/` edits to reconcile with remote
  `cf78e5e`; `stash@{0}` = droppable whitespace-only noise. Don't blindly pop either.
