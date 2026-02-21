# L5R5e v0.1 Review Findings

**Started:** 2026-02-20
**Status:** Collecting findings — no changes until review is complete
**Companion:** `l5r5e-review-checklist.md`

---

## How to Use This File

Each finding is logged with:
- **ID:** Sequential (F-001, F-002, ...)
- **Severity:** `error` (incorrect data), `omission` (missing content), `correction` (improvement/convention fix), `question` (needs source verification)
- **File:** Which file is affected
- **Location:** Line number or DEF name
- **Category:** S (syntax), C (consistency), A (accuracy), O (completeness), L (lore)
- **Description:** What the issue is
- **Resolution:** How to fix it (filled in during batch processing)
- **Status:** `open`, `confirmed`, `fixed`, `wontfix`

---

## Findings

### F-001 — Rings defined on Samurai instead of Entity
- **Severity:** correction
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** Lines 35-41 / ACTOR "Samurai" PROPERTIES ^"Rings"
- **Category:** C (consistency)
- **Description:** The five Rings (Air, Earth, Fire, Water, Void) are defined as properties of ACTOR "Samurai". They should be on ACTOR "Entity" since all actor types (Adversary, Minion, etc.) have rings.
- **Proposed fix:** Move ^"Rings" DEF from Samurai to Entity.
- **Status:** fixed

### F-002 — Missing Samurai properties
- **Severity:** omission
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** ACTOR "Samurai" PROPERTIES
- **Category:** O (completeness)
- **Description:** Samurai is missing several properties that should be defined:
  - **Fatigue** — INTEGER, starts at 0, max = Endurance
  - **Strife** — INTEGER, starts at 0, max = Composure
  - **Focus** — derived stat (Fire + Air)
  - **Vigilance** — derived stat ((Air + Water) / 2, round up)
  - **Void Points** — current pool
  - **Roles** — school roles (Bushi, Courtier, Shugenja, Monk, Shinobi, etc.)
  - **Titles** — list of earned titles
  - **Bonds** — per Courts of Stone bonds system
  - **Bushido Tenets** — paramount tenet and less significant tenet
  - **Ninjo** — personal desire
  - **Giri** — sworn duty
  - **Inventory** — carried items/equipment
  - **Experience** — XP earned/spent
- **Proposed fix:** Add all listed properties to ACTOR "Samurai".
- **Status:** fixed

### F-003 — Consider intermediate actor type between Entity and Samurai
- **Severity:** question
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** ACTOR hierarchy
- **Category:** C (consistency)
- **Description:** When NPCs and Path of Waves PCs are reviewed, there may be a need for a middle-ground actor type that extends Entity, which Samurai then extends. Do not resolve yet — revisit during Group 4 (Path of Waves) and Group 5 (GM Tools) review.
- **Proposed fix:** Deferred. Evaluate after reviewing NPC and PW actor types.
- **Status:** open

### F-004 — Minion description and mechanics incorrect
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** Lines 134-147 / ACTOR "Minion"
- **Category:** A (accuracy)
- **Description:** Minion is described as "Weak adversaries that can be grouped together / Multiple minions act as a single entity in conflicts" with a `^"Group Size"` property (INTEGER MIN 1 MAX 20). This is incorrect per the Core Rulebook. Minions are not groups and do not act as a single entity. Instead, minions have special rules regarding how they take fatigue, receive critical strikes, and use opportunity.
- **Proposed fix:** Remove `^"Group Size"` property. Rewrite comments and RULES to reflect actual minion mechanics: special fatigue handling, critical strike rules, and opportunity restrictions.
- **Status:** fixed

### F-005a — Skill Die faces incorrect
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** Lines 194-207 / ^"Skill Die" FACES
- **Category:** A (accuracy)
- **Description:** Five of the twelve Skill Die faces have wrong symbols. Correct distribution per Core Rulebook: Blank x2, (op) x3, (su)(st) x2, (su) x2, (su)(op) x1, (ex)(st) x1, (ex) x1. Specific errors: Face 3 has (op)(st) should be (op); Face 5 has (su)(st) should be (op); Face 7 has (su) should be (su)(st); Face 9 has (su)(op) should be (su); Face 10 is the only (su)(op) face, not two.
- **Proposed fix:** Replace FACES block with: 1 Blank, 2 Blank, 3 (op), 4 (op), 5 (op), 6 (su)(st), 7 (su)(st), 8 (su), 9 (su), 10 (su)(op), 11 (ex)(st), 12 (ex)
- **Status:** fixed

### F-006 — TN difficulty scale labels wrong above 5
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** Lines 272-281 / ^"Target Number" DIFFICULTY_SCALE
- **Category:** A (accuracy)
- **Description:** The difficulty scale labels diverge from the Core Rulebook above TN 5. File has: 5 Heroic, 6 Legendary, 7 Mythic, 8 Divine. Correct per source: TN 1-6 as currently labeled through 6, but TN 7 is Heroic, TN 8+ is Legendary (achievable via exploding successes). "Mythic" and "Divine" do not exist in the source.
- **Proposed fix:** Replace scale entries 5-8 with: 5 "Hard (challenges even experts)", 6 "Very Hard (requires extraordinary circumstances)", 7 "Heroic (near the limits of mortal ability)", 8 "Legendary (achievable with exploding successes)". Remove entries for Mythic and Divine. Adjust labels 1-4 accordingly to shift down.
- **Status:** fixed

### F-007 — Check missing final step (Narrate Results)
- **Severity:** omission
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** Lines 247-254 / ^"Check" STEPS
- **Category:** O (completeness)
- **Description:** The Check definition has 6 steps ending with "Resolve Symbols on Kept Dice." The Core Rulebook includes a 7th step: narrating the results after resolving symbols.
- **Proposed fix:** Add step 7: "Narrate Results: GM and player narrate the outcome based on success/failure and spent opportunity."
- **Status:** fixed

### F-008 — Clan skill bonuses grant too many skills
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** All ^"Clan" DEFs (Crab line 86, Crane line 114, likely all 7 clans)
- **Category:** A (accuracy)
- **Description:** Clans grant +1 to one ring and +1 to ONE skill. The file gives two skills per clan. Confirmed wrong: Crab has "+1 Fitness, +1 Martial Arts [Melee]" — should be "+1 Fitness" only. Crane has "+1 Aesthetics, +1 Courtesy" — should be "+1 Culture" only. Likely systemic across all 7 clans.
- **Proposed fix:** Correct each clan to grant only one skill. Verify remaining 5 clans against source.
- **Status:** fixed

### F-009 — Family format structurally wrong (all families)
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** All FAMILIES blocks within clan DEFs
- **Category:** A (accuracy)
- **Description:** Every family entry is structurally wrong in multiple ways. The file uses the format `"+1 [single ring], +1 [single skill], Glory [value]"`. The correct format per Core Rulebook is: a choice between two rings, two skill increases, starting glory, and starting wealth (koku). All glory values and ring assignments also differ from source. This is systemic across all families in all clans.
- **Proposed fix:** Restructure all family entries. Verified corrections for Crab and Crane families below.
- **Status:** fixed

### F-009a — Crab family corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 90-96
- **Category:** A (accuracy)
- **Description:** Correct Crab family data per source:
  - Hida: +1 Earth or Fire, +1 Command, +1 Tactics, Glory 44, 4 koku
  - Hiruma: +1 Air or Water, +1 Skulduggery, +1 Survival, Glory 39, 3 koku
  - Kaiu: +1 Earth or Fire, +1 Smithing, +1 Labor, Glory 40, 5 koku
  - Kuni: +1 Earth or Void, +1 Medicine, +1 Theology, Glory 40, 4 koku
  - Yasuki: +1 Air or Water, +1 Commerce, +1 Design, Glory 39, 10 koku
- **Status:** fixed

### F-009b — Crane family corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 118-123
- **Category:** A (accuracy)
- **Description:** Correct Crane family data per source:
  - Asahina: +1 Water or Void, +1 Aesthetics, +1 Theology, Glory 40, 6 koku
  - Daidoji: +1 Earth or Water, +1 Fitness, +1 Tactics, Glory 40, 7 koku
  - Doji: +1 Air or Water, +1 Courtesy, +1 Design, Glory 44, 8 koku
  - Kakita: +1 Air or Fire, +1 Aesthetics, +1 Meditation, Glory 44, 7 koku
- **Status:** fixed

### F-010 — Encoding corruption in Twenty Questions
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Line 36 / Question 12
- **Category:** S (syntax)
- **Description:** Question 12 reads `feelستressed` — Arabic characters where a space should be. Should read `feel stressed`.
- **Proposed fix:** Replace `feelستressed` with `feel stressed`
- **Status:** fixed

### F-008a — Dragon Clan corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 131-156
- **Category:** A (accuracy)
- **Description:** Dragon Clan ring bonus is +1 Void, should be +1 Fire. Skill bonus lists two skills (+1 Martial Arts [Melee], +1 Meditation), should be +1 Meditation only. Clan status 30 is correct.
- **Proposed fix:** Change ring bonus to +1 Fire, skill bonus to +1 Meditation only.
- **Status:** fixed

### F-009c — Dragon family corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 145-150
- **Category:** A (accuracy)
- **Description:** Correct Dragon family data per source:
  - Agasha: +1 Fire or Void, +1 Medicine, +1 Smithing, Glory 40, 4 koku
  - Kitsuki: +1 Air or Water, +1 Government, +1 Sentiment, Glory 44, 6 koku
  - Mirumoto: +1 Earth or Water, +1 Fitness, +1 Tactics, Glory 44, 5 koku
  - Togashi: +1 Earth or Void, +1 Fitness, +1 Theology, Glory 45, 3 koku
- **Status:** fixed

### F-008b — Lion Clan corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 158-183
- **Category:** A (accuracy)
- **Description:** Lion Clan ring bonus is +1 Fire, should be +1 Water. Skill bonus lists two skills (+1 Command, +1 Tactics), should be +1 Tactics only. Clan status 35 is correct.
- **Proposed fix:** Change ring bonus to +1 Water, skill bonus to +1 Tactics only.
- **Status:** fixed

### F-009d — Lion family corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 172-176
- **Category:** A (accuracy)
- **Description:** Correct Lion family data per source:
  - Akodo: +1 Air or Earth, +1 Command, +1 Government, Glory 44, 5 koku
  - Ikoma: +1 Air or Water, +1 Composition, +1 Performance, Glory 40, 5 koku
  - Kitsu: +1 Void or Water, +1 Meditation, +1 Theology, Glory 40, 4 koku
  - Matsu: +1 Earth or Fire, +1 Command, +1 Fitness, Glory 44, 5 koku
- **Status:** fixed

### F-008c — Phoenix Clan corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 185-210
- **Category:** A (accuracy)
- **Description:** Phoenix Clan ring bonus (+1 Void) and status (30) are correct. Skill bonus lists two skills (+1 Culture, +1 Theology), should be +1 Theology only.
- **Proposed fix:** Change skill bonus to +1 Theology only.
- **Status:** fixed

### F-009e — Phoenix family corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 199-203
- **Category:** A (accuracy)
- **Description:** Correct Phoenix family data per source:
  - Asako: +1 Air or Fire, +1 Culture, +1 Sentiment, Glory 40, 5 koku
  - Isawa: +1 Fire or Void, +1 Meditation, +1 Theology, Glory 44, 5 koku
  - Kaito: +1 Air or Void, +1 Fitness, +1 Theology, Glory 40, 4 koku
  - Shiba: +1 Earth or Water, +1 Meditation, +1 Tactics, Glory 40, 5 koku
- **Status:** fixed

### F-008d — Scorpion Clan corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 212-237
- **Category:** A (accuracy)
- **Description:** Scorpion Clan ring bonus (+1 Air) is correct. Skill bonus lists two skills (+1 Courtesy, +1 Skulduggery), should be +1 Skulduggery only. Status is 25, should be 35.
- **Proposed fix:** Change skill bonus to +1 Skulduggery only. Change status to 35.
- **Status:** fixed

### F-009f — Scorpion family corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 226-230
- **Category:** A (accuracy)
- **Description:** Correct Scorpion family data per source:
  - Bayushi: +1 Air or Fire, +1 Courtesy, +1 Design, Glory 44, 8 koku
  - Shosuro: +1 Air or Water, +1 Courtesy, +1 Performance, Glory 40, 6 koku
  - Soshi: +1 Air or Void, +1 Design, +1 Theology, Glory 40, 6 koku
  - Yogo: +1 Earth or Void, +1 Composition, +1 Theology, Glory 39, 4 koku
- **Status:** fixed

### F-008e — Unicorn Clan corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 239-265
- **Category:** A (accuracy)
- **Description:** Unicorn Clan ring bonus (+1 Water) and status (30) are correct. Skill bonus lists two skills (+1 Fitness, +1 Survival), should be +1 Survival only.
- **Proposed fix:** Change skill bonus to +1 Survival only.
- **Status:** fixed

### F-009g — Unicorn family corrections
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** Lines 253-258
- **Category:** A (accuracy)
- **Description:** Correct Unicorn family data per source (note: user provided "Aid/Void" for Iuchi, reading as Air/Void):
  - Ide: +1 Earth or Water, +1 Commerce, +1 Courtesy, Glory 40, 9 koku
  - Iuchi: +1 Air or Void, +1 Meditation, +1 Theology, Glory 40, 5 koku
  - Moto: +1 Earth or Fire, +1 Command, +1 Survival, Glory 40, 6 koku
  - Shinjo: +1 Fire or Water, +1 Sentiment, +1 Survival, Glory 44, 8 koku
  - Utaku: +1 Earth or Fire, +1 Survival, +1 Tactics, Glory 44, 6 koku
- **Status:** fixed

### F-011 — Advantage Interaction names incorrect
- **Severity:** error
- **File:** `l5r5e-0.1-core-character.ttrpg`
- **Location:** ^"Advantage Interaction" INTERACTIONS block
- **Category:** A (accuracy)
- **Description:** Four interaction names were wrong. Correct names per source: "Inverting Your Advantage", "Seizing a Target's Advantage", "Leveraging Your Disadvantage", "Exploiting a Target's Disadvantage".
- **Proposed fix:** Replace all four interaction names.
- **Status:** fixed

### F-012 — Macron convention missing for Japanese terms
- **Severity:** correction
- **File:** Multiple (`core-character.ttrpg`, `core-techniques.ttrpg`, `l5r5e-dsl-spec.md`)
- **Location:** DEF names for Ninjō, Kihō, Shūji, Mahō
- **Category:** C (consistency)
- **Description:** Japanese terms with long vowels should use macrons in canonical DEF names (Ninjō, Kihō, Shūji, Mahō) with ALIAS providing simplified ASCII forms (Ninjo, Kiho, Shuji, Maho). ALIAS is a new DSL keyword added to the main spec's reserved keywords list. Simplified forms are appropriate for file names, rule hash labels, and user input.
- **Proposed fix:** Rename DEFs to macron forms, add ALIAS lines, document convention in spec.
- **Status:** fixed

### F-013 — Generic types missing for Clan, Family, School
- **Severity:** correction
- **File:** `l5r5e-0.1-core-character.ttrpg`, `l5r5e-dsl-spec.md`
- **Location:** Generic Types section (new)
- **Category:** C (consistency)
- **Description:** No generic DEF types existed for Clan, Family, or School. Individual clans were standalone DEFs without EXTENDS. Added generic ^"Clan" (#L5R250), ^"Family" (#L5R251), and ^"School" (#L5R252) with required property shapes. All seven Great Clan DEFs now EXTENDS ^"Clan". ^"Technique" already existed as a generic type in core-techniques.ttrpg.
- **Proposed fix:** Add generic types and update instances to use EXTENDS.
- **Status:** fixed

### F-014 — Imperial Families not structured as a clan
- **Severity:** error
- **File:** `l5r5e-0.1-emerald-empire-mechanics.ttrpg`
- **Location:** Lines 15-94
- **Category:** A (accuracy)
- **Description:** Imperial Families was defined as a generic DEF with three standalone family DEFs (Miya, Otomo, Seppun). Per source, it counts as a clan for mechanical purposes: +1 Air, +1 Government, Status 40. Restructured as a proper clan with EXTENDS ^"Clan" and inline FAMILIES block.
- **Status:** fixed

### F-014a — Miya Family skills and glory wrong
- **Severity:** error
- **File:** `l5r5e-0.1-emerald-empire-mechanics.ttrpg`
- **Location:** Miya Family
- **Category:** A (accuracy)
- **Description:** Miya skills listed as +1 Command, +1 Courtesy. Correct: +1 Courtesy, +1 Culture. Glory listed as 40, correct: 44.
- **Status:** fixed

### F-015 — Ichiro should be Ichirō
- **Severity:** correction
- **File:** `l5r5e-0.1-fields-of-victory-mechanics.ttrpg`
- **Location:** Ichiro Family
- **Category:** C (consistency)
- **Description:** Family name should use macron: ^"Ichirō" with ALIAS "Ichiro", per the romanization convention established in F-012.
- **Status:** fixed

### F-016 — Non-core clans missing EXTENDS ^"Clan" and standardized properties
- **Severity:** correction
- **File:** Multiple (shadowlands, emerald-empire, courts-of-stone, fields-of-victory, celestial-realms, children-of-five-winds, mantis-clan)
- **Location:** All non-core clan and family DEFs
- **Category:** C (consistency)
- **Description:** All non-core clans used ad-hoc property names (Ring Increase, Skill Increase, Status) instead of the standard Clan generic type properties (Clan Name, Clan Ring Bonus, Clan Skill Bonus, Clan Status). Standalone family DEFs were restructured into inline FAMILIES blocks within their parent clan. All clans now EXTENDS ^"Clan".
- **Status:** fixed

### F-032 — Additional Rules for Checks missing (7 sub-systems)
- **Severity:** omission
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** After ^"Assistance" DEF
- **Category:** O (completeness)
- **Description:** The Assistance DEF was oversimplified (no step-by-step integration with Check procedure, no limits on assistance). Additionally, 7 related sub-systems were missing entirely: Bonus Successes and Shortfall (definitions and calculations), Checks to Resist Effects (resist mechanic with TN setting), Competitive Checks (comparison by bonus successes/shortfall), Minimum TN (cannot reduce below 1, TN 0 edge case), Modifying the Dice Pool (terminology for specific results vs containing symbols, maximum modification, adding/cancelling rolled and kept dice, alter/negate/reroll/reserve, simultaneous modification resolution order), Targeting and Checks (targets of checks), and Universal Tiebreaker (PCs > NPCs > minions, randomized final tie).
- **Proposed fix:** Expand Assistance with full step integration and limits. Add all 7 additional check rules as separate DEFs.
- **Status:** fixed

### F-041 — Kata examples incomplete and incorrect (24 missing, 8 wrong)
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Kata" DEF EXAMPLES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Kata had 8 one-line examples, all with wrong or oversimplified descriptions. Source has 32 kata organized by classification: General Kata (20: Battle in the Mind R3, Breath of Wind Style R4, Crashing Wave Style R4, Crescent Moon Style R2, Crimson Leaves Strike R3, Disappearing World Style R4, Flowing Water Strike R3, Heartpiercing Strike R3, Iron in the Mountains Style R4, Lord Hida's Grip R2 Crab, Lord Shiba's Valor R2 Phoenix, Soaring Slice R1, Soul Sunder R5, Striking as Air/Earth/Fire/Water R1, Striking as Void R5, Tactical Assessment R2, Warrior's Resolve R1), Close Combat Kata (9: Coiling Serpent Style R2, Iaijutsu Cut: Crossing Blade R2, Iaijutsu Cut: Rising Blade R2, Iron Forest Style R2, Open-Hand Style R2, Rushing Avalanche Style R2, Spinning Blades Style R2, Thunderclap Strike R3, Veiled Menace Style R2), Ranged Combat Kata (3: Hawk's Precision R1, Pelting Hail Style R2, Pin the Fan R5). Specific wrong ranks: Striking as Void was R1→R5, Lord Hida's Grip was R4→R2, Crescent Moon Style was R5→R2. All descriptions were one-line summaries; source has full Activation, Effects, and Opportunities.
- **Proposed fix:** Replace 8 examples with all 32 kata with full mechanical definitions (Activation, Effects, Opportunities) organized by classification.
- **Status:** fixed

### F-047 — Ninjutsu DEF examples incomplete with wrong rank
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Ninjutsu" DEF EXAMPLES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Ninjutsu had 4 one-line stub examples. Source has the same 4 ninjutsu techniques with full mechanical details. One rank error: Deadly Sting listed as Rank 1 (correct: Rank 2). All technique names were correct. Intro text updated to match source language.
- **Proposed fix:** Replace 4 one-line stubs with full ninjutsu definitions including Activation, Effects, and Opportunities for all 4: Skulk R1, Deadly Sting R2, Noxious Cloud R3, Silencing Stroke R4.
- **Status:** fixed

### F-046 — Mahō DEF examples incomplete with fabricated entry, wrong rank, missing framework rules
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Mahō" DEF EXAMPLES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Mahō had 3 one-line stub examples. Source has 5 mahō techniques (all Rank 1): Grip of Anguish, Incite Haunting, Mark of Desecration, Sinful Whispers, Unholy Fervor. Stub errors: Sinful Whispers listed as Rank 2 (correct: Rank 1). "Dark Wings" Rank 3 does not exist in the source — entirely fabricated. 2 techniques missing (Grip of Anguish, Mark of Desecration, Unholy Fervor). Additionally, 4 framework rules were missing: Proper Sacrifices (blood sacrifice, exceptional sacrifice rerolls 3 blanks), Spiritual Backlash (3+ strife on kept dice → critical strike with severity equal to current strife + Shadowlands Taint assigned to a ring), Channeling Mahō (like invocations but 1 fatigue per reserved die), Importune Mahō (once per scene, Tainted character, requires killing or crossing personal line).
- **Proposed fix:** Replace 3 stubs with all 5 mahō techniques with full mechanical definitions. Remove fabricated "Dark Wings". Add all framework rules. Update intro comments to source-accurate language.
- **Status:** fixed

### F-045 — Shūji DEF examples severely incomplete (26 missing, wrong ranks/elements, missing clan restrictions)
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Shūji" DEF EXAMPLES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Shūji had 8 one-line stub examples. Source has 34 shūji organized by element: Air (9: Artisan's Appraisal R2, Bend with the Storm R5, Cadence R1, Feigned Opening R2, Prey on the Weak R2, Rustling of Leaves R1, The Wind Blows Both Ways R3, Whispers of Court R1, Wolf's Proposal R4), Earth (8: Ancestry Unearthed R1, Civility Foremost R2, Honest Assessment R1, Pillar of Calm R4, Stonewall Tactics R1, Touchstone of Courage R3, The Immovable Hand of Peace R5, Weight of Duty R1), Fire (9: Bravado R4, Dazzling Performance R3, Fanning the Flames R2, Lightning Raid R2, Rallying Cry R3, Sear the Wound R5, Sensational Distraction R1, Stirring the Embers R1, Truth Burns through Lies R1), Water (8: All in Jest R1, Buoyant Arrival R5, Ebb and Flow R3, Regal Bearing R4, Shallow Waters R1, Slippery Maneuvers R2, Tributaries of Trade R2, Well of Desire R1), Void (9: All Arts Are One R3, A Samurai's Fate R4, Courtier's Resolve R1, Lady Doji's Decree R2 Crane-only, Lady Shinjo's Speed R2 Unicorn-only, Lord Akodo's Roar R2 Lion-only, Lord Bayushi's Whispers R2 Scorpion-only, Lord Togashi's Insight R2 Dragon-only, Rouse the Soul R5). Stub errors: Shallow Waters listed as Air (correct: Water), Pillar of Calm listed as R2 (correct: R4), Bravado listed as R3 Water (correct: R4 Fire — wrong on both), Lady Doji's Decree listed as R5 (correct: R2, also missing Crane clan restriction). 5 of 8 stubs had errors. 26 shūji were missing entirely. Five Void shūji have clan restrictions not represented in stubs.
- **Proposed fix:** Replace 8 one-line stubs with all 34 shūji with full mechanical definitions (Activation, Effects, Opportunities) organized by element. Add RESTRICTION property for clan-specific Void shūji.
- **Status:** fixed

### F-044 — Ritual DEF examples incomplete with wrong ranks
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Ritual" DEF EXAMPLES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Rituals had 5 one-line stub examples. Source has the same 5 rituals but with full mechanical details (Activation, Effects, Opportunities). Three rank errors: Divination listed as Rank 2 (correct: Rank 1), Tea Ceremony listed as Rank 1 (correct: Rank 2), Threshold Barrier listed as Rank 3 (correct: Rank 1). Intro text also updated to match source language (rituals are not rarefied secrets of shugenja schools, but day-to-day practices of religious functionaries; usable during downtime and potentially other scenes at GM's discretion).
- **Proposed fix:** Replace 5 one-line stubs with full ritual definitions including Activation (skill, TN, ring, targets), Effects, and Opportunities for all 5 rituals: Cleansing Rite R1, Commune with the Spirits R1, Divination R1, Tea Ceremony R2, Threshold Barrier R1.
- **Status:** fixed

### F-043 — Invocation DEF severely incomplete (56 missing, framework rules absent, wrong ranks)
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Invocation" DEF EXAMPLES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Invocations had 6 one-line examples with wrong ranks and one wrong element. Source has 62 invocations organized by element: Air (16: Blessed Wind R1, By the Light of the Lord Moon R1, Call Upon the Wind R2, Cloak of Night R1, False Realm of the Fox Spirits R4, Grasp of the Air Dragon R3, Mask of Wind R2, Nature's Touch R1, Rise Air R4, Secrets on the Wind R2, Summon Fog R2, Tempest of Air R1, Token of Memory R1, Vapor of Nightmares R3, Wrath of Kaze-no-Kami R5, Yari of Air R1), Earth (16: Armor of Earth R1, Bind the Shadow R2, Caress of Earth R1, Courage of Seven Thunders R1, Earthquake R4, Earth Becomes Sky R3, Embrace of Kenro-Ji-Jin R2, Grasp of Earth R1, Jade Strike R1, Jurōjin's Balm R1, Power of the Earth Dragon R3, Rise Earth R4, Symbol of Earth R2, Tetsubō of Earth R1, Tomb of Jade R5, Wall of Earth R1), Fire (15: Armor of Radiance R2, Biting Steel R1, Breath of the Fire Dragon R3, Extinguish R1, Fukurokujin's Wit R1, Fury of Osano-wo R3, Katana of Fire R1, Matsu's Battlecry R1, Ravenous Swarms R3, Rise Flame R4, The Cleansing Fire R1, The Fires from Within R1, The Soul's Blade R5, Wall of Fire R2, Wings of the Phoenix R4), Water (15: Bō of Water R1, Dance of Seasons R2, Dominion of Suijin R1, Ever-Changing Waves R5, Hands of the Tides R3, Heart of the Water Dragon R2, Inari's Blessing R1, Path to Inner Peace R1, Reflections of P'an Ku R1, Rise Water R4, Stride the Waves R2, Strike the Tsunami R3, Suijin's Embrace R4, Sympathetic Energies R2, The Rushing Wave R1). Original errors: Path to Inner Peace listed as Air (correct: Water), Katana of Fire listed as R2 (correct: R1), Hands of the Tides listed as R1 (correct: R3), Rise Flame listed as R3 (correct: R4), Earthquake listed as R5 (correct: R4). Additionally, 7 major framework rules were missing: Proper Offerings (reroll up to 3 blanks with material offering), Channeling system (reserve kept dice, use on next same-element invocation, limitations, interruption), Spiritual Backlash (3+ strife on kept dice → 3 fatigue + element lockout + per-element effect), Importune Invocations (once per scene, unlearned invocation with offering and increased TN), Prepared Invocations and Wards, Effect Keywords (Augment/Mend/Purify/Scry/Smite/Summon), and per-element general Opportunity spending table.
- **Proposed fix:** Replace 6 one-line examples with all 62 invocations with full mechanical definitions (Activation, Effects, Opportunities, Other Names) organized by element. Add all framework rules.
- **Status:** fixed

### F-042 — Kihō examples incomplete and incorrect (20 missing, 3 wrong)
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Kihō" DEF EXAMPLES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Kihō had 3 one-line examples, one of which ("The Immovable Hand of Peace") does not exist in the source at all. Source has 23 kihō organized by elemental classification: Earth Kihō (5: Cleansing Spirit R1, Earth Needs No Eyes R1, Earthen Fist R1, Grasp the Earth Dragon R3, Way of the Earthquake R2), Air Kihō (4: Air Fist R1, The Great Silence R1, Riding the Clouds R2, Way of the Willow R3), Fire Kihō (5: Breaking Blow R1, Channel the Fire Dragon R2, Flame Fist R1, The Body Is an Anvil R1, Way of the Falling Star R3), Water Kihō (5: Freezing the Lifeblood R2, Ki Protection R1, Ride the Water Dragon R3, Water Fist R1, Way of the Seafoam R1), Void Kihō (4: Death Touch R4, Still the Elements R3, Touch the Void Dragon R5, Way of the Edgeless Sword R5). All descriptions were one-line summaries; source has full Activation, Enhancement, and Burst effects. Enhancement/Burst structure was also corrected: Enhancement persists until ended or another kihō used (not "while in stance"); Burst resolves on sufficient bonus successes (not "spending Void point").
- **Proposed fix:** Replace 3 examples with all 23 kihō with full mechanical definitions (Activation, Enhancement, Burst) organized by elemental classification.
- **Status:** fixed

### F-040 — Technique framework structure incorrect
- **Severity:** error
- **File:** `l5r5e-0.1-core-techniques.ttrpg`
- **Location:** ^"Technique" DEF and all category DEFs
- **Category:** A (accuracy), O (completeness)
- **Description:** Multiple structural issues throughout the techniques file. (1) Type ENUM included "School Ability" and "Mastery Ability" which are not technique categories — core categories are Kata, Kihō, Invocation, Ritual, Shūji, Mahō, Ninjutsu. (2) Rank MAX was 6, should be 5. (3) Activation was a flat ENUM; source has rich structure with Use (As an Action/As a Downtime Activity/When Making a Check), Check (TN, ring, skill group), Targets, Range, Other Requirements. (4) XP Cost was described as "3 (curriculum), rank × 3 (non-curriculum)" — source says "All techniques cost 3 XP" with no rank multiplier. (5) Prerequisites missing waiver rules (= mark for curriculum, losing special access if skipped). (6) Effects missing conditional resolution rules (If you succeed/fail) and persistent effect stacking prohibition. (7) New Opportunities missing ring-specific (op) spending rules. (8) Kata had "Unarmed Kata" subcategory that doesn't exist (source: General, Close Combat, Ranged Combat only). (9) Kihō Enhancement/Burst descriptions wrong (Enhancement persists until ended or another kihō used, not "while in stance"; Burst resolves on sufficient bonus successes, not "spending Void point"). (10) Invocations missing "no Void" note. (11) Shūji missing elemental classifications note. (12) All category descriptions were paraphrased rather than matching source language. (13) Inversion and Mantra not noted as sourcebook content. (14) Separate Technique Prerequisite DEF was redundant.
- **Proposed fix:** Rewrite ^"Technique" DEF with correct category ENUM, full activation structure, effects rules, opportunities rules, correct XP cost, prerequisite waiver rules. Update all category DEFs with source-accurate descriptions. Remove redundant Technique Prerequisite DEF.
- **Status:** fixed

### F-038 — Downtime DEF oversimplified with invented activity list
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Downtime" DEF
- **Category:** A (accuracy)
- **Description:** Downtime had an invented ACTIVITIES list (Craft, Prepare, Recover, Research, Socialize, Train, Perform Ritual) that doesn't appear in the source. The source describes downtime scenes as low-stakes narrative periods with flexible time, not a fixed menu. Key rules: GM decides what can be accomplished per scene, one activity per two days for long scenes (GM may allow extra at cost of sleep), extremely long narrative gaps (month+) should allocate small XP and let players describe activities. The scene type transitions (to conflict if actions matter, to narrative for interpersonal) were also missing.
- **Proposed fix:** Remove invented ACTIVITIES block. Rewrite with source rules for downtime scene structure, long downtime scenes, and extremely long narrative gaps.
- **Status:** fixed

### F-039 — Shadowlands Taint incorrectly modeled as standalone mechanic
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Shadowlands Taint" DEF
- **Category:** A (accuracy)
- **Description:** Shadowlands Taint was modeled as a standalone DEF with INTEGER MIN 0 MAX 10 and 4 hash rules, implying it is a separate numeric attribute. Per the source, Shadowlands Taint is a type of disadvantage (adversity), not an independent mechanic. It should be defined in the traits/disadvantages files, not in core-systems.
- **Proposed fix:** Remove the standalone ^"Shadowlands Taint" DEF. Add a comment noting it is a disadvantage type defined elsewhere, referenced by ^"Afflicted" condition and ^"Defiled" terrain.
- **Status:** fixed

### F-037 — Titles system missing entirely
- **Severity:** omission
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** After ^"Status in Play" DEF
- **Category:** O (completeness)
- **Description:** The Title system was not present in the file at all. Source has: Title as a parallel progression track to School. A character can only have one incomplete title at a time. XP allocated to a title does not count toward school rank and vice-versa. Listed advancements earn full value, non-listed earn half (same as curriculum). On completion, character gains a title ability. Status may change on assignment. The Core Rulebook includes one title: Emerald Magistrate (assigned by Emerald Champion/Emperor, Status +15 to max 40, 30 XP to completion, Voice of Authority ability, 7 curriculum entries).
- **Proposed fix:** Add ^"Title" generic DEF with properties (Assigned By, Status Award, XP to Completion, Title Ability, Curriculum) and ^"Emerald Magistrate" as first title with EXTENDS ^"Title".
- **Status:** fixed

### F-036 — Honor/Glory/Status mechanics severely incomplete
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Forfeiting" and ^"Staking" DEFs
- **Category:** A (accuracy), O (completeness)
- **Description:** The entire Honor/Glory/Status section was two thin stub DEFs (Forfeiting and Staking) with 3 hash rules each and no actual content. Source has a comprehensive system: Forfeit/Award scale table (Trifling 1/1, Minor Rank/3, Major Rank×2/6, Massive Rank×4/9), Honor in Play with all 7 Bushidō tenets (Compassion/Courage/Courtesy/Duty and Loyalty/Honor/Righteousness/Sincerity — each with Minor/Major/Massive breaches and sacrifices), clan paramount and lesser tenets (each clan has one doubled and one halved), Honor Score table (7 tiers from 0 to 100 with virtue/flaw advantage thresholds), Glory in Play with forfeit examples (Minor/Major/Massive) and award examples, Glory Score table (12 tiers with fame/infamy thresholds), Status in Play with comparison rules and Status Score table (13 tiers from Emperor at 100 to Burakumin at 0).
- **Proposed fix:** Replace Forfeiting/Staking stubs with full Honor and Glory Forfeit/Award Scale, Honor in Play (tenets, clan views, score table), Glory in Play (forfeits, awards, score table), and Status in Play (comparison, score table).
- **Status:** fixed

### F-035 — Armor DEF incomplete (wrong stats, missing types, missing rules)
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Armor" DEF
- **Category:** A (accuracy), O (completeness)
- **Description:** Armor DEF had 5 examples with wrong stats and missing armor types. Source has 9 armor types: Sleeping Garb (no resistance), Common Clothes (Physical 1, Mundane), Ceremonial Clothes (Physical 1, Ceremonial Resplendent), Sanctified Robes (Physical 1 Supernatural 3, Ceremonial), Traveling Clothes (Physical 2, Durable Mundane Subtle), Concealed Armor (Physical 2, Concealable), Ashigaru Armor (Physical 3, Wargear), Lacquered Armor (Physical 4, Ceremonial Cumbersome Wargear), Plated Armor (Physical 5, Cumbersome Durable Wargear). Original errors: "Heavy Armor" doesn't exist (should be Plated Armor with different stats), "Riding Armor" doesn't exist, "Robes" doesn't exist (multiple robe types), Ashigaru had wrong Rarity 4→3 and wrong Cumbersome quality, Lacquered had wrong Rarity and wrong price. Missing: Supernatural Resistance property, Sleeping Garb, Common Clothes, Ceremonial Clothes, Sanctified Robes, Traveling Clothes, Concealed Armor. Missing rules: wearing multiple armor sets (must choose one equipped), resistance stacking limit (one armor + one effect).
- **Proposed fix:** Complete rewrite with all 9 armor types, correct stats, Supernatural Resistance property, wearing armor rules, resistance stacking.
- **Status:** fixed

### F-033 — Item Qualities incomplete (7 missing, all descriptions wrong)
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** Within ^"Weapon" DEF WEAPON_QUALITIES block
- **Category:** A (accuracy), O (completeness)
- **Description:** Item qualities were embedded in the Weapon DEF with 10 one-line summaries. Source has 17 qualities with full mechanical effects: Ceremonial (TN reduction for identity, 3 honor forfeit for unauthorized use), Concealable (hidden by default, TN 3 Design/Smithing Air to detect, armor under clothes, quick-draw in combat), Cumbersome (+1 TN Movement for armor, +1 TN Attack if moved for weapons), Damaged (+1 TN to use weapons/tools, -2 resistance for armor, becomes Destroyed if Damaged again), Destroyed (nonfunctional), Durable (prevents Damaged/Destroyed), Forbidden (forfeit 3 glory if used openly), Mundane (no additional effects), Prepare (cannot reuse until prepared as Support action), Razor-Edged (becomes Damaged if damage reduced to 0, (op) spend for +1 deadliness per (op)), Resplendent (+1 glory when awarded glory), Sacred (+1 TN for Otherworldly attackers, absorb Afflicted → Damaged, ignore Otherworldly/Tainted resistances), Snaring ((op) spend to Immobilize if vigilance ≤ (op)), Subtle (+1 TN to ascertain info), Unholy (Afflicted after critical strike, Afflicted at end of scene, ignore Otherworldly resistances), Wargear (+1 strife to targets). Missing: Damaged, Destroyed, Forbidden, Prepare, Resplendent, Subtle, Unholy. "Thrown" was listed but doesn't exist as a quality. Plus Cancelling Item Qualities rules (6 pairs).
- **Proposed fix:** Create standalone ^"Item Quality" DEF with all 17 qualities, full descriptions, and cancellation rules.
- **Status:** fixed

### F-034 — Weapon DEF severely incomplete (wrong stats, 26+ weapons missing)
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Weapon" DEF
- **Category:** A (accuracy), O (completeness)
- **Description:** Weapon DEF had 9 example weapons with multiple wrong stats and missing weapon attributes. Source has 35+ weapons across 8 categories: Swords (10: Bokken, Chokutō, Dao, Gao, Jian, Katana, Nodachi, Scimitar, Wakizashi, Zanbatō), Axes (2: Masakari, Ono), Blunt Weapons (5: Club, Hammer, Kiseru, Ōtsuchi, Tetsubō), Hand Weapons (4: Jitte, Knife, Nunchaku, Tessen), Polearms (6: Bisentō, Bō, Ji, Naginata, Trident, Yari), Bows (3: Daikyū, Shinjo Horsebow, Yumi), Crossbows (1: Oyumi), Specialist Weapons (4: Blowgun, Kama, Kusari-Gama, Shuriken). Wrong stats in original: Nodachi Damage 6→5, Naginata Deadliness 5→6/Rarity 6→8/missing Cumbersome, Tetsubō Deadliness 2→3/Rarity 6→5/missing Cumbersome, Bō Damage 4→6/Deadliness 1→2, Knife Deadliness 5→4/Rarity 2→1/missing Razor-Edged. Missing: grip modifier system (e.g. "2-hand: Deadliness +2"), Readied/Sheathed weapon rules, Arrow types (Willow-Leaf/Armor-Piercing/Flesh-Cutter/Humming-Bulb), Unarmed profiles (Punch/Kick/Bite), 26 weapons entirely.
- **Proposed fix:** Complete rewrite with all weapons, correct stats, grip modifiers, weapon rules, arrows, and unarmed profiles.
- **Status:** fixed

### F-030 — Terrain DEF incomplete (missing 2 types, wrong descriptions)
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Terrain" DEF
- **Category:** A (accuracy)
- **Description:** Terrain had 4 types with one-line summaries. Source has 6 terrain qualities: Dangerous (physical damage equal to (st) on kept dice), Defiled (TN 2 Fitness/Meditation or gain Afflicted; tainted beings reduce resistance TNs), Entangling (+2 TN to move/Movement actions), Hallowed (-1 TN Meditation/Theology with specified ring; tainted beings +1/+2 TN), Imbalanced (+1 TN Meditation/Theology with specified ring; otherworldly beings +1/+2 TN), Obscuring (+1 TN Attack checks, range 2 visibility limit). Missing: Defiled and Hallowed entirely. All existing descriptions were oversimplified (e.g., Dangerous was "causes fatigue when moving through" — correct is damage equal to (st) symbols on any check). Missing terrain setup rules and the Tactical Grid optional rule (range band to grid conversion, adjacency, movement, diagonal/difficult squares).
- **Proposed fix:** Rewrite with all 6 terrain types with full Description/Effects/Examples. Add ^"Tactical Grid" optional rule.
- **Status:** fixed

### F-031 — Healing DEF incomplete; Damage/Falling/Suffocation/Death missing
- **Severity:** omission
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Healing" DEF
- **Category:** O (completeness)
- **Description:** The entire Harm and Healing system was reduced to a 4-line ^"Healing" DEF. Missing: ^"Damage" system (dealing damage, three outcomes, increasing/reducing, defending against damage, voluntary critical strike via Void point, damage types physical/supernatural, damage source), ^"Fatigue Recovery" (half endurance between scenes, 2× Water ring after full rest), ^"Falling" (TN 3 Fitness Air 1/Earth 5 to reduce range bands fallen), ^"Suffocation" (2 fatigue + 2 strife per turn, TN 3 Fitness Earth if Unconscious or perish), and ^"Death" (narrative guidance).
- **Proposed fix:** Replace ^"Healing" with full Harm and Healing section including Damage, Fatigue Recovery, Falling, Suffocation, and Death DEFs.
- **Status:** fixed

### F-029 — Mass Battle DEF severely incomplete
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Mass Battle" DEF
- **Category:** A (accuracy)
- **Description:** Mass Battle had 4 invented "Battle Roles" (Commander, Vanguard, Scout, Support) that don't exist in the source. Missing entirely: Army attributes (Strength/Discipline with casualties/panic), Commander/Leader/Cohort structure, 5 Strategic Objectives with momentum (Capture a Position, Cut Off the Head, Draw Them In, Grind Them Down, Seize Victory!), Initiative (TN 1 Command), turn order (commanders alternate nominating leaders), 4 Mass Battle Actions (Assault, Challenge, Rally, Reinforce) with full mechanics, Retreating rules, Readied Weapons, Annihilating a Cohort, Resolution (Rout/Morale Collapse/Strategic Victory), Battle Length and Fatigue (6 rounds = 1 day, TN 4 Command from round 7), Fortifications (Woods/Outpost/Fortress/Castle with attrition reduction and difficulty values), and 4 Example Armies (Peasant Levy, Ashigaru, Elite Samurai, Shadowlands Horde) with abilities. Did not EXTENDS ^"Conflict Type".
- **Proposed fix:** Complete rewrite with all sub-systems.
- **Status:** fixed

### F-028 — Intrigue DEF severely incomplete
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Intrigue" DEF
- **Category:** A (accuracy)
- **Description:** Intrigue had a 4-line summary with no actionable content. Missing entirely: Social Objectives system with momentum points, 4 sample objectives (Appeal to a Person/Group, Discern Someone's Qualities, Discredit Someone, Spread a Rumor) each with completion criteria and achievement/failure conditions, Initiative (TN 1 Sentiment, freeflowing turn order, honor/glory forfeit to preempt higher status), Turn Summary, Movement/Positioning rules, 4 Intrigue Actions (Assist, Calming Breath, Persuade with Command/Courtesy/Games-Performance TN modifications and momentum, Unique Action), and Resolution rules. Did not EXTENDS ^"Conflict Type".
- **Proposed fix:** Complete rewrite with social objectives, momentum, initiative, actions, and resolution.
- **Status:** fixed

### F-027 — Duel DEF severely incomplete
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Duel" DEF
- **Category:** A (accuracy)
- **Description:** Duel had a wrong 4-phase structure (Assessment/Prediction/Clash/Resolution) that doesn't match the source at all. Missing: Setting the Terms, Concession rules, 6 Common Forms (Iaijutsu to first strike/first blood/death, Sparring Bout, Warrior's Duel, Taryu-Jiai) each with objectives, Initiative (TN 1 Meditation), Staredown mechanic (strife = round number, bid strife up to Focus to increase initiative), Finishing Blow (triggered by Compromised/unmask, 2× deadliness severity), Movement/Range (start at range 2, always in range), 5 Duel Actions (Calming Breath, Center, Predict, Prepare Item, Strike), Scoring table (7 feats), Score Results (5 tiers from No Winner to No Contest), and One-Roll Duel optional rule. Did not EXTENDS ^"Conflict Type".
- **Proposed fix:** Complete rewrite with all sub-systems, actions, scoring, and optional rule.
- **Status:** fixed

### F-026 — Critical Strike DEF incomplete and severity table wrong
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Critical Strike" DEF
- **Category:** A (accuracy)
- **Description:** Critical Strike had wrong triggering conditions (described as "bonus successes high enough"), wrong resistance mechanic (described as "Fitness (Earth)" — correct is TN 1 Fitness check using stance ring in conflict or any ring in narrative, severity reduced by 1 + bonus successes), and a severely simplified 4-row severity table. Source has 8 severity bands (0-2 through 16+) with specific conditions including Lightly/Severely Wounded, Bleeding, scar disadvantages by ring, Dying with round counts, and Instant Death. Missing entirely: Unspecified Deadliness rules (invocations/mahō = ring + kept (st), kihō = 8, extreme temperature = 5 +2 per repeat, falls = 7, heavy objects = 3× silhouette).
- **Proposed fix:** Rewrite with correct trigger/resistance mechanics, full 8-row severity table with per-ring scar disadvantages, and Unspecified Deadliness section. Add caret refs throughout.
- **Status:** fixed

### F-025 — Skirmish DEF severely incomplete, does not extend Conflict Type
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Skirmish" DEF and ^"Attack Action" DEF
- **Category:** A (accuracy)
- **Description:** Skirmish had a 6-step generic structure with wrong initiative description and no actions. Source defines: initiative (TN 1 Tactics, any ring, lowest honor breaks ties), free 1 range band movement per turn (not an action), turn summary (stance/move/action), and 9 specific actions (Assist, Calming Breath, Challenge with full Clash sub-system, Guard, Maneuver, Prepare Item, Strike, Unique Action, Wait) each with Description/Activation/Effects. The separate ^"Attack Action" DEF was redundant with the Strike action. Skirmish did not EXTENDS ^"Conflict Type".
- **Proposed fix:** Rewrite Skirmish with EXTENDS, full initiative/movement/turn rules, all 9 actions with complete text, Clash sub-system with structure/finishing blows/interrupting/extending, and resolution rules. Remove standalone ^"Attack Action" DEF.
- **Status:** fixed

### F-024 — Conditions severely incomplete and inaccurate
- **Severity:** error
- **File:** `l5r5e-0.1-core-systems.ttrpg`
- **Location:** ^"Condition" DEF
- **Category:** A (accuracy)
- **Description:** Every condition had oversimplified or incorrect descriptions (one-line summaries instead of full Description/Effects/Removed When). Two conditions were missing entirely: Afflicted (spiritual possession with per-ring Compromised effects and Shadowlands Taint progression) and Wounded (with Lightly Wounded and Severely Wounded sub-forms affecting specific rings). Specific errors in existing conditions included: Bleeding (wrong mechanic — was "suffer fatigue each turn", correct is "suffer physical damage equal to (st) on kept dice"), Burning (was "suffer fatigue each turn", correct is "3 strife and 3 physical damage ignoring resistance, severity 5 critical strikes"), Dazed (was "cannot concentrate", correct is "+2 TN to Attack and Scheme"), Disoriented (was "+1 TN all checks", correct is "+2 TN to Movement and Support"), Dying (missing round duration mechanic), Enraged (entirely wrong — was "+1 damage, can't Guard", correct is "+2 critical severity both ways, gain Void on kill"), Exhausted (was "+1 TN all checks", correct is "does not remove fatigue/strife between scenes"), Immobilized (missing "cannot change stance"), Incapacitated (missing "cannot defend against damage" and critical→Unconscious chain), Intoxicated (entirely wrong — was "±1 TN social/martial", correct is "doubles all strife suffered and removed"), Prone (was "±1 TN ranged/melee", correct is "max 1 range band movement, GM discretion on ranged TN"), Silenced (was "+0 TN", correct is "+3 TN to Scheme, invocations, mahō, shūji"), Unconscious (missing "+10 critical severity" and Void point awakening).
- **Proposed fix:** Rewrite all conditions with full Description, Effects, and Removed When. Add Afflicted and Wounded. Restructure each condition as a sub-block.
- **Status:** fixed

### F-023 — Silhouette DEF missing
- **Severity:** omission
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** After ^"Range Band" DEF
- **Category:** O (completeness)
- **Description:** Silhouette — a measure of physical size used for cover, targeting, and physical interactions — was not defined. Source defines six sizes: 0 (handheld objects, cats, small dogs), 1 (children, large dogs, goblins), 2 (adult humans, ningyo, tengu), 3 (horses, naga, rakshasa, trolls), 4 (ogres, elephants), 5 (dragons).
- **Proposed fix:** Add ^"Silhouette" DEF with INTEGER MIN 0 MAX 5 and size descriptions.
- **Status:** fixed

### F-022 — Range Band descriptions incorrect
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** ^"Range Band" DEF
- **Category:** A (accuracy)
- **Description:** Range bands had vague grouped descriptions (e.g. "Range 1-2: Close, a few steps to across a room") instead of the specific per-band definitions from the source. Each band has a name, real-world distance, and functional description. Also ENUM had "Range 6+" — correct is "Range 6". Corrected all seven range bands: Range 0 Touch (1-2 ft), Range 1 Sword (1-2 yd), Range 2 Spear (3-4 yd), Range 3 Throw (5-10 yd), Range 4 Bow (11-100 yd), Range 5 Volley (100+ yd), Range 6 Sight (few hundred+ yd).
- **Proposed fix:** Replace descriptions with per-band source text. Fix ENUM.
- **Status:** fixed

### F-021 — Action list incorrect (not organized by conflict type)
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** ^"Action" DEF
- **Category:** A (accuracy)
- **Description:** Actions were listed as a single generic ENUM (Attack, Scheme, Support, Guard, Movement, Calming Breath, Prepare, Wait). Per source, actions are specific to each conflict type:
  - Intrigue: Assist, Calming Breath, Persuade, Unique Action
  - Duel: Calming Breath, Center, Predict, Prepare Item, Strike
  - Skirmish: Assist, Calming Breath, Challenge, Guard, Maneuver, Prepare Item, Strike, Unique Action, Wait
  - Mass Battle: Assault, Challenge, Rally, Reinforce
- **Proposed fix:** Restructure into per-conflict-type action ENUMs.
- **Status:** fixed

### F-020 — Initiative description incorrect (skill, ring choice, tiebreaker)
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** ^"Initiative" DEF comments
- **Category:** A (accuracy)
- **Description:** Initiative was described as "Tactics/Meditation + Void" with ties broken by Focus. Three errors per source:
  1. Skill depends on conflict type: Intrigue = Sentiment, Duel = Meditation, Skirmish = Tactics, Mass Battle = Command
  2. Ring is player's choice (any of the five), not fixed to Void
  3. Ties broken by honor (lowest first), not Focus
- **Proposed fix:** Correct skill-per-conflict-type, ring choice, and tiebreaker.
- **Status:** fixed

### F-019 — Stance descriptions incorrect (Air, Earth, Water, Void)
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** ^"Stance" DEF comments
- **Category:** A (accuracy)
- **Description:** Four of five stance descriptions were wrong or incomplete per source:
  - Air: Missing "+2 TN at Rank 4" progression
  - Earth: Described as strife/fatigue cap per Earth ring. Correct: other characters cannot spend (op) to inflict critical strikes or conditions on you
  - Water: Missing constraint that additional action cannot be same type as an action already performed that turn
  - Void: Described as scheme immunity + (op) treated as blank. Correct: you do not receive strife from (st) symbols on kept dice; can still receive strife from other sources
- **Proposed fix:** Correct all four stance descriptions.
- **Status:** fixed

### F-018 — Opportunity tables severely incomplete
- **Severity:** error
- **File:** `l5r5e-0.1-core-base.ttrpg`
- **Location:** ^"Opportunity" DEF (lines 318-365)
- **Category:** O (completeness)
- **Description:** The Opportunity DEF contained only 18 entries (3 per ring-block in a flat structure). The Core Rulebook defines opportunities across five distinct contexts: General (18 entries across Any/Air/Earth/Fire/Water/Void), Conflict & Martial (15 entries), Initiative (5 entries), Other Skill Groups (20 entries across Artisan/Scholar/Social/Trade per ring), and Downtime (10 entries). Total ~68 entries. The flat structure (GENERAL_OPPORTUNITIES, AIR_OPPORTUNITIES, etc.) could not represent context-specific opportunities.
- **Proposed fix:** Restructure into GENERAL_OPPORTUNITIES, CONFLICT_OPPORTUNITIES, INITIATIVE_OPPORTUNITIES, SKILL_OPPORTUNITIES, and DOWNTIME_OPPORTUNITIES blocks, each with ring sub-blocks. Encode all entries from source.
- **Status:** fixed

### F-017 — Void Points Max missing from derived attributes
- **Severity:** omission
- **File:** `l5r5e-0.1-core-traits.ttrpg`
- **Location:** Derived Attributes section (after Vigilance)
- **Category:** O (completeness)
- **Description:** Void Points Max was not defined as a derived attribute. Per the Core Rulebook, it is a separate derived attribute whose value equals the Void ring. Void Points current is tracked against this maximum.
- **Proposed fix:** Add ^"Void Points Max" DEF with FORMULA "Void" to the Derived Attributes section.
- **Status:** fixed

---

## Summary

| Severity | Count |
|----------|-------|
| Error | 45 |
| Omission | 8 |
| Correction | 6 |
| Question | 1 |
| **Total** | **60** |

| Status | Count |
|--------|-------|
| Open | 1 |
| Confirmed | 0 |
| Fixed | 59 |
| Won't Fix | 0 |
