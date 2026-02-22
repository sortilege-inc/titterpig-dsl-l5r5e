# L5R5e v0.1 Rules Review Checklist

**Started:** 2026-02-20
**Status:** In Progress
**Scope:** All 27 `.ttrpg` files, 38 `.lore` files, 1 `.arc` file (67 total)
**Rule:** No changes to any source files until this review is complete. All findings go to `l5r5e-review-findings.md`.

---

## Review Criteria

For each file, check against these categories:

**S — Syntax & Structure**
- Brace balance, indentation, comment formatting
- Correct use of DSL keywords (`DEF`, `APPLIES TO`, `PROPERTIES`, `RULES`, etc.)
- Header metadata present (`EXTENSION`, `NAME`, `VERSION`, `RELEASE_DATE`, `EXTENDS`)

**C — Consistency**
- Property naming matches canonical conventions (see validation report Rounds 1-4)
- `APPLIES TO` targets are valid metatype anchors from the registry
- `EXTENDS` chains point to correct parent files
- Enum values match those defined in core files

**A — Accuracy**
- Stat blocks match source material where verifiable
- Derived stats follow formulas (Endurance = (Earth+Fire)×2, Composure = (Earth+Water)×2, etc.)
- Ring associations on advantages/disadvantages match source
- Skill groups and technique references are correct

**O — Completeness**
- No stub entries remaining (empty DEFs, placeholder comments)
- All properties present (no missing `^"Type"`, `^"Skills"`, etc. on NPCs)
- RULES hashes present on all DEFs that need them
- Cross-references between files are reciprocal

**L — Lore Accuracy** (.lore files only)
- Content faithfully represents source material
- No contradictions between lore files
- Names, dates, and relationships are consistent across files

---

## Group 1: Core System (5 files, ~3,227 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 1.1 | [ ] | `l5r5e-0.1-core-base.ttrpg` | 572 | Actor types, dice, metatype anchors |
| 1.2 | [ ] | `l5r5e-0.1-core-traits.ttrpg` | 727 | Rings, skills, skill groups, derived stats |
| 1.3 | [ ] | `l5r5e-0.1-core-character.ttrpg` | 495 | Schools, clans, families, advantages, disadvantages |
| 1.4 | [ ] | `l5r5e-0.1-core-systems.ttrpg` | 533 | Conditions, terrain, weapons, armor, conflict rules |
| 1.5 | [ ] | `l5r5e-0.1-core-techniques.ttrpg` | 370 | Technique types, framework, groups |

**Review focus:** These define the canonical schema. Everything else builds on them. Priority is confirming the metatype anchor registry, attribute/skill definitions, and derived stat formulas are complete and correct.

---

## Group 2: Supplement Mechanics (8 files, ~11,465 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 2.1 | [ ] | `l5r5e-0.1-emerald-empire-mechanics.ttrpg` | 1,356 | |
| 2.2 | [ ] | `l5r5e-0.1-courts-of-stone-mechanics.ttrpg` | 1,898 | |
| 2.3 | [ ] | `l5r5e-0.1-fields-of-victory-mechanics.ttrpg` | 2,279 | Largest mechanics file |
| 2.4 | [ ] | `l5r5e-0.1-celestial-realms-mechanics.ttrpg` | 1,830 | |
| 2.5 | [ ] | `l5r5e-0.1-children-of-five-winds-mechanics.ttrpg` | 1,637 | |
| 2.6 | [ ] | `l5r5e-0.1-shadowlands-mechanics.ttrpg` | 1,673 | |
| 2.7 | [ ] | `l5r5e-0.1-writ-of-wilds-mechanics.ttrpg` | 982 | |
| 2.8 | [ ] | `l5r5e-0.1-legacies-of-war-mechanics.ttrpg` | 329 | Smallest supplement |

**Review focus:** EXTENDS chains, school curricula (TECH_GROUP / TECHNIQUE entries), advantage/disadvantage format, item/equipment definitions. These files were heavily modified in validation Rounds 2-3 — check that fixes held.

---

## Group 3: Supplement Techniques (2 files, ~1,456 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 3.1 | [ ] | `l5r5e-0.1-writ-of-wilds-techniques.ttrpg` | 540 | |
| 3.2 | [ ] | `l5r5e-0.1-path-of-waves-techniques.ttrpg` | 916 | Contains Celestial Implement metatype |

**Review focus:** Technique definitions, APPLIES TO targets, prerequisite structures, activation costs.

---

## Group 4: Path of Waves (3 files, ~4,141 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 4.1 | [ ] | `l5r5e-0.1-path-of-waves-character.ttrpg` | 1,752 | Ronin/gaijin schools, Sage/Artisan roles |
| 4.2 | [ ] | `l5r5e-0.1-path-of-waves-systems.ttrpg` | 1,945 | NPC stat blocks (spirits, animals), systems |
| 4.3 | [ ] | `l5r5e-0.1-path-of-waves-items.ttrpg` | 444 | Foreign/ronin equipment |

**Review focus:** PW NPCs were fixed in validation Phase E. Verify those corrections held. Check the Sage/Artisan role ENUM extension. Foreign item naming and cost conventions.

---

## Group 5: GM Tools (3 files, ~3,477 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 5.1 | [ ] | `l5r5e-0.1-celestial-realms-gm-tools.ttrpg` | 429 | Baku, Komainu NPCs |
| 5.2 | [ ] | `l5r5e-0.1-children-of-five-winds-gm-tools.ttrpg` | 2,185 | Largest NPC file (43 NPCs) |
| 5.3 | [ ] | `l5r5e-0.1-writ-of-wilds-gm-tools.ttrpg` | 863 | Dragon-area NPCs |

**Review focus:** NPC canonical format (nested Rings DEF, LIST OF STRING, split conflict ranks, Social Skill Check TN Modifiers). These were the primary target of validation Rounds 4-F. Verify all 43+ NPCs match canonical format and derived stats check out.

---

## Group 6: Standalone .ttrpg (6 files, ~3,449 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 6.1 | [ ] | `l5r5e-0.1-fields-of-victory-mass-battle.ttrpg` | 1,103 | Mass battle subsystem |
| 6.2 | [ ] | `l5r5e-0.1-gm-screen-reference.ttrpg` | 546 | Quick-reference tables |
| 6.3 | [ ] | `l5r5e-0.1-daidoji-shin-npcs.ttrpg` | 129 | 2 NPCs, cross-refs CW-GM |
| 6.4 | [ ] | `l5r5e-0.1-mantis-clan.ttrpg` | 852 | Schools, NPCs, items |
| 6.5 | [ ] | `l5r5e-0.1-errata-faq-2019.ttrpg` | 270 | |
| 6.6 | [ ] | `l5r5e-0.1-errata-faq-2020.ttrpg` | 560 | |

**Review focus:** Errata files should correctly reference and override parent rules. Mass battle subsystem APPLIES TO targets. Mantis Clan NPC format (fixed in Phase 6J/6L). Daidoji Shin cross-references match CW-GM.

---

## Group 7: Core & World Lore (6 files, ~912 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 7.1 | [ ] | `l5r5e-0.1-core-world.lore` | 159 | Foundation worldbuilding |
| 7.2 | [ ] | `l5r5e-0.1-emerald-empire-governance.lore` | 129 | |
| 7.3 | [ ] | `l5r5e-0.1-emerald-empire-history.lore` | 137 | |
| 7.4 | [ ] | `l5r5e-0.1-emerald-empire-religion.lore` | 161 | |
| 7.5 | [ ] | `l5r5e-0.1-emerald-empire-society.lore` | 133 | Contains Rich Frog description |
| 7.6 | [ ] | `l5r5e-0.1-emerald-empire-wilds.lore` | 97 | |

---

## Group 8: Clan & Faction Lore (11 files, ~1,633 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 8.1 | [ ] | `l5r5e-0.1-celestial-realms-phoenix-clan.lore` | 110 | |
| 8.2 | [ ] | `l5r5e-0.1-celestial-realms-centipede-clan.lore` | 114 | |
| 8.3 | [ ] | `l5r5e-0.1-courts-of-stone-crane-clan.lore` | 167 | |
| 8.4 | [ ] | `l5r5e-0.1-courts-of-stone-deer-clan.lore` | 237 | |
| 8.5 | [ ] | `l5r5e-0.1-fields-of-victory-lion-clan.lore` | 155 | |
| 8.6 | [ ] | `l5r5e-0.1-fields-of-victory-badger-clan.lore` | 115 | |
| 8.7 | [ ] | `l5r5e-0.1-shadowlands-crab-clan.lore` | 87 | |
| 8.8 | [ ] | `l5r5e-0.1-shadowlands-falcon-clan.lore` | 71 | |
| 8.9 | [ ] | `l5r5e-0.1-children-of-five-winds-unicorn-clan.lore` | 133 | |
| 8.10 | [ ] | `l5r5e-0.1-children-of-five-winds-fox-clan.lore` | 104 | |
| 8.11 | [ ] | `l5r5e-0.1-mantis-clan.lore` | 119 | |

---

## Group 9: Geography & Setting Lore (8 files, ~1,327 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 9.1 | [ ] | `l5r5e-0.1-celestial-realms-cosmology.lore` | 170 | Spirit realms |
| 9.2 | [ ] | `l5r5e-0.1-courts-of-stone-castles.lore` | 267 | |
| 9.3 | [ ] | `l5r5e-0.1-courts-of-stone-courts.lore` | 126 | |
| 9.4 | [ ] | `l5r5e-0.1-fields-of-victory-armies.lore` | 418 | Largest lore file |
| 9.5 | [ ] | `l5r5e-0.1-fields-of-victory-warfare.lore` | 179 | |
| 9.6 | [ ] | `l5r5e-0.1-shadowlands-geography.lore` | 105 | |
| 9.7 | [ ] | `l5r5e-0.1-shadowlands-the-wall.lore` | 109 | |
| 9.8 | [ ] | `l5r5e-0.1-shadowlands-nezumi.lore` | 97 | |

---

## Group 10: Writ of Wilds Lore (4 files, ~725 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 10.1 | [ ] | `l5r5e-0.1-writ-of-wilds-dragon-clan.lore` | 172 | |
| 10.2 | [ ] | `l5r5e-0.1-writ-of-wilds-peoples.lore` | 177 | |
| 10.3 | [ ] | `l5r5e-0.1-writ-of-wilds-temples.lore` | 203 | |
| 10.4 | [ ] | `l5r5e-0.1-writ-of-wilds-wilderness.lore` | 173 | |

---

## Group 11: Children of Five Winds Lore (4 files, ~420 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 11.1 | [ ] | `l5r5e-0.1-children-of-five-winds-adventure.lore` | 79 | Lost Writer source lore |
| 11.2 | [ ] | `l5r5e-0.1-children-of-five-winds-qamarist.lore` | 102 | |
| 11.3 | [ ] | `l5r5e-0.1-children-of-five-winds-sand-road.lore` | 135 | |
| 11.4 | [ ] | `l5r5e-0.1-legacies-of-war-lore.lore` | 103 | |

---

## Group 12: Path of Waves Lore (5 files, ~1,197 lines)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 12.1 | [ ] | `l5r5e-0.1-path-of-waves-ronin.lore` | 227 | |
| 12.2 | [ ] | `l5r5e-0.1-path-of-waves-gaijin.lore` | 210 | |
| 12.3 | [ ] | `l5r5e-0.1-path-of-waves-campaigns.lore` | 296 | |
| 12.4 | [ ] | `l5r5e-0.1-path-of-waves-hirosaka.lore` | 325 | |
| 12.5 | [ ] | `l5r5e-0.1-path-of-waves-twin-blessings.lore` | 139 | |

---

## Group 13: Narrative Files (1 file, newly created)

| # | Status | File | Lines | Notes |
|---|--------|------|-------|-------|
| 13.1 | [ ] | `l5r5e-0.1-lost-writer.arc` | ~680 | Verify against DSL spec v0.2 narrative constructs |

**Review focus:** Validate `.arc` syntax against the new DSL spec. Check NPC stat blocks match their source definitions in CW-GM tools. Verify scene cross-references and FLOW structure.

---

## Group 14: Cross-Cutting Checks

These are not file-specific but span the entire corpus:

| # | Status | Check | Description |
|---|--------|-------|-------------|
| 14.1 | [ ] | EXTENDS chain integrity | Every EXTENDS target resolves to a real file/EXTENSION ID |
| 14.2 | [ ] | APPLIES TO anchor coverage | Every APPLIES TO target is in the metatype anchor registry |
| 14.3 | [ ] | RULES hash uniqueness | No duplicate hash IDs across the corpus |
| 14.4 | [ ] | Derived stat verification | Spot-check Endurance/Composure/Focus/Vigilance on NPCs |
| 14.5 | [ ] | Advantage/disadvantage ring consistency | Ring associations match across files when same adv/disadv appears |
| 14.6 | [ ] | Skill group naming consistency | All curricula use short names (Artisan, Martial, Scholar, Social, Trade) |
| 14.7 | [ ] | Duplicate NPC detection | No unintended duplicate definitions (intentional cross-refs are OK) |
| 14.8 | [ ] | Lore ↔ .ttrpg consistency | NPCs/locations mentioned in lore match definitions in .ttrpg files |
| 14.9 | [ ] | Errata coverage | 2019 and 2020 errata rules correctly override their targets |
| 14.10 | [ ] | .arc ↔ .ttrpg consistency | Lost Writer arc NPC stats match CW-GM tools definitions |

---

## Progress Summary

| Group | Files | Lines | Status |
|-------|-------|-------|--------|
| 1. Core System | 5 | 2,697 | Not started |
| 2. Supplement Mechanics | 8 | 11,929 | Not started |
| 3. Supplement Techniques | 2 | 1,456 | Not started |
| 4. Path of Waves | 3 | 4,141 | Not started |
| 5. GM Tools | 3 | 3,477 | Not started |
| 6. Standalone .ttrpg | 6 | 3,460 | Not started |
| 7. Core & World Lore | 6 | 816 | Not started |
| 8. Clan & Faction Lore | 11 | 1,412 | Not started |
| 9. Geography & Setting Lore | 8 | 1,471 | Not started |
| 10. Writ of Wilds Lore | 4 | 725 | Not started |
| 11. CotFW & LoW Lore | 4 | 419 | Not started |
| 12. Path of Waves Lore | 5 | 1,197 | Not started |
| 13. Narrative Files | 1 | ~680 | Not started |
| 14. Cross-Cutting Checks | 10 | — | Not started |
| **Total** | **76 items** | **~33,880** | |
