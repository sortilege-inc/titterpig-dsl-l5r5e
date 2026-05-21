# Legend of the Five Rings 5th Edition - Titterpig DSL Specification v0.3

## Overview

This document defines the L5R5e-specific DSL conventions built on top of the [Titterpig DSL Base Specification v0.3](../titterpig-dsl/titterpig-dsl-spec.md). The base spec defines the system-agnostic grammar (DEF, PROPERTIES, EXTENDS, RULES, etc.); this document defines the **L5R5e vocabulary** — the system-defined keywords, property shapes, and structural patterns used across all L5R5e `.ttrpg` files.

**Design Philosophy:** The DSL showcases what game designers had in mind using actual game terminology. It provides clear traceability for modifications, overrides, and extensions. It is not a game engine implementation but rather a specification for rule relationships and interactions.

## System Architecture

### Base System with Extensions

L5R5e uses a multi-file BASE architecture where the core rulebook is split across five thematic files, with sourcebooks defined as EXTENSION files that layer additional content on top.

```ttrpg
BASE "L5R5e_Core_Core" {
    NAME "Legend of the Five Rings 5th Edition - Core mechanics, ACTORs, and fundamental game rules"
    VERSION "0.3"
    RELEASE_DATE "2026-03-01"

    # Dice, checks, conflicts, stances, actions, void points, experience
}

BASE "L5R5e_Core_Traits" {
    NAME "Legend of the Five Rings 5th Edition - Rings, skills, and derived attributes"
    VERSION "0.3"
    RELEASE_DATE "2026-03-01"

    # Five Rings, derived attributes, social attributes, 20 skills
}

BASE "L5R5e_Core_Character" {
    NAME "Legend of the Five Rings 5th Edition - Character creation, clans, schools, advantages, and advancement"
    VERSION "0.3"
    RELEASE_DATE "2026-03-01"

    # Twenty Questions, Great Clans, families, schools, advantages/disadvantages, bushido
}

BASE "L5R5e_Core_Techniques" {
    NAME "Legend of the Five Rings 5th Edition - Technique types, categories, and core technique definitions"
    VERSION "0.3"
    RELEASE_DATE "2026-03-01"

    # Kata, kiho, invocations, rituals, shuji, maho, ninjutsu, inversions
}

BASE "L5R5e_Core_Systems" {
    NAME "Legend of the Five Rings 5th Edition - Game systems: combat, conditions, strife, honor, weapons, armor, and NPCs"
    VERSION "0.3"
    RELEASE_DATE "2026-03-01"

    # Strife, conditions, skirmish, duels, intrigue, mass battle, weapons, armor
}
```

### Extension Architecture

Sourcebooks extend a specific base file (typically `L5R5e_Core_Character` for character options) using the `EXTENSION ... EXTENDS` syntax:

```ttrpg
EXTENSION "L5R5e_Emerald_Empire" EXTENDS "L5R5e_Core_Character" {
    NAME "Legend of the Five Rings 5th Edition - Emerald Empire"
    VERSION "0.3"
    RELEASE_DATE "2026-03-01"

    # New families, schools, advantages, disadvantages, techniques, titles
}

EXTENSION "L5R5e_Shadowlands" EXTENDS "L5R5e_Core_Character" {
    NAME "Legend of the Five Rings 5th Edition - Shadowlands"
    VERSION "0.3"
    RELEASE_DATE "2026-03-01"

    # Falcon Clan, new schools, maho, corruption, oni, titles
}

EXTENSION "Table_House_Rules" EXTENDS "L5R5e_Core_Character" {
    NAME "Campaign House Rules"
    VERSION "2026.03.01"

    # Custom modifications for a specific table
}
```

## Core L5R5e ACTORs

### Entity Hierarchy

L5R5e defines a root `Entity` ACTOR from which all other actor types inherit. The `EXTENDS` keyword establishes inheritance, referencing the parent by hash ID and name.

```ttrpg
#L5R001aB2cD4eF6gH8iJ0kL ACTOR "Entity" DEF {
    # Root of all actor types. Rings are defined here so all
    # actor types (Samurai, Peasant, Adversary, Minion) inherit them.

    PROPERTIES {
        ^"Name" STRING REQUIRED
        ^"Description" STRING
        ^"Rings" DEF {
            ^"Air" INTEGER MIN 1 MAX 5 DEFAULT 1
            ^"Earth" INTEGER MIN 1 MAX 5 DEFAULT 1
            ^"Fire" INTEGER MIN 1 MAX 5 DEFAULT 1
            ^"Water" INTEGER MIN 1 MAX 5 DEFAULT 1
            ^"Void" INTEGER MIN 1 MAX 5 DEFAULT 1
        }
    }

    RULES {
        #L5R002mN3oP5qR7sT9uV1w: WHEN [^"Entity" CREATED] THEN REQUIRE ^"Name"
    }
}

#L5R003xY4zA6bC8dE0fG2hI ACTOR "Samurai" DEF {
    EXTENDS #L5R001aB2cD4eF6gH8iJ0kL ^"Entity"

    # Player characters and significant NPCs

    PROPERTIES {
        ^"Clan" STRING REQUIRED
        ^"Family" STRING REQUIRED
        ^"School" STRING REQUIRED
        ^"School Rank" INTEGER MIN 1 MAX 6 DEFAULT 1
        ^"Skills" LIST OF ^"Skill"
        ^"Techniques" LIST OF ^"Technique"
        ^"Advantages" LIST OF ^"Advantage"
        ^"Disadvantages" LIST OF ^"Disadvantage"
        ^"Honor" INTEGER MIN 0 MAX 100
        ^"Glory" INTEGER MIN 0 MAX 100
        ^"Status" INTEGER MIN 0 MAX 100
        ^"Endurance" INTEGER MIN 0
        ^"Composure" INTEGER MIN 0
        ^"Focus" INTEGER MIN 0
        ^"Vigilance" INTEGER MIN 0
        ^"Fatigue" INTEGER MIN 0 DEFAULT 0
        ^"Strife" INTEGER MIN 0 DEFAULT 0
        ^"Void Points" INTEGER MIN 0
        ^"Ninjo" STRING
        ^"Giri" STRING
        ^"Demeanor" STRING
        ^"Equipment" LIST OF STRING
        ^"Roles" LIST OF STRING
        ^"Titles" LIST OF ^"Title"
        ^"Bonds" LIST OF ^"Bond"
        ^"Bushido" DEF {
            ^"Paramount Tenet" STRING
            ^"Less Significant Tenet" STRING
        }
        ^"Experience" INTEGER MIN 0 DEFAULT 0
    }

    RULES {
        #L5R004jK5lM7nO9pQ1rS3t: WHEN [^"Samurai" CREATED] THEN REQUIRE ^"Clan", ^"School"
        #L5R005uV6wX8yZ0aB2cD4e: WHEN [^"Strife" > ^"Composure"] THEN ^"Samurai" IS compromised
        #L5R006fG7hI9jK1lM3nO5p: WHEN [^"Fatigue" >= ^"Endurance"] THEN ^"Samurai" IS incapacitated
    }
}

#L5R009mN0oP2qR4sT6uV8w ACTOR "Adversary" DEF {
    EXTENDS #L5R001aB2cD4eF6gH8iJ0kL ^"Entity"

    # NPCs, creatures, and supernatural beings with conflict ranks.
    # Supernatural adversaries can extend Adversary to raise ring MAX.

    PROPERTIES {
        ^"Combat Conflict Rank" INTEGER MIN 0 MAX 20
        ^"Intrigue Conflict Rank" INTEGER MIN 0 MAX 20
        ^"Endurance" INTEGER MIN 0
        ^"Composure" INTEGER MIN 0
        ^"Focus" INTEGER MIN 0
        ^"Vigilance" INTEGER MIN 0
        ^"Favored Weapons" LIST OF STRING
    }
}

#L5R011iJ2kL4mN6oP8qR0s ACTOR "Minion" DEF {
    EXTENDS #L5R009mN0oP2qR4sT6uV8w ^"Adversary"

    # Weak adversaries with simplified mechanics. Special rules
    # for fatigue, critical strikes, and opportunity restrictions.
}
```

### NPC DEF Pattern (Adversaries, Minions, and arc cast members)

Concrete NPC definitions follow this shape:

```ttrpg
#L5RCS01aB1cD3eF5gH7iJ9kL ^"Ryuhei, Monk" DEF {
    APPLIES TO [^"NPC"]

    # Optional DEF-body comment block: narrative context, source page reference, etc.

    PROPERTIES {
        ^"Type"                  STRING "Adversary" FIXED   # OPTIONAL — "Adversary" or "Minion"; omit if unspecified
        ^"Role"                  STRING "..."               # OPTIONAL — narrative role in this adventure/sourcebook
        ^"Description"           STRING "..."               # inherited from ^"Entity"; override per-NPC as needed
        ^"Combat Conflict Rank"  INTEGER N
        ^"Intrigue Conflict Rank" INTEGER N
        ^"Rings" DEF {
            ^"Air" INTEGER N
            ^"Earth" INTEGER N
            ^"Fire" INTEGER N
            ^"Water" INTEGER N
            ^"Void" INTEGER N
        }
        ^"Demeanor"                       STRING "..."
        ^"Social Skill Check TN Modifiers" STRING "Ring +N, Ring -N"
        ^"Endurance"  INTEGER N
        ^"Composure"  INTEGER N
        ^"Focus"      INTEGER N
        ^"Vigilance"  INTEGER N
        ^"Honor"      INTEGER N
        ^"Glory"      INTEGER N
        ^"Status"     INTEGER N
        ^"Skills"           LIST OF STRING ["Artisan N", "Martial N", "Scholar N", "Social N", "Trade N"]
        ^"Advantages"       LIST OF STRING ["Name (Ring) [Category; Category]"]
        ^"Disadvantages"    LIST OF STRING ["Name (Ring) [Category; Category]"]
        ^"Favored Weapons"  LIST OF STRING ["WeaponName: Range N, Damage N, Deadliness N, Quality, ..."]
        ^"Gear"             LIST OF STRING ["item", "item", ...]
    }

    # Per-NPC abilities as nested DEFs (sub-DEFs of the NPC)
    ^"Ability Name" DEF {
        # mechanical text as comment or inline string
    }

    RULES {
        #L5R...: npc_identifier_label
    }
}
```

**Required:** `APPLIES TO [^"NPC"]` and at least the Conflict Ranks + Rings.
**Optional properties** (omit if the source data does not specify them):

- `^"Type"` — `"Adversary"` or `"Minion"` (both `EXTENDS` the `^"NPC"` actor type in core-base). Leave omitted if the source data does not distinguish.
- `^"Role"` — narrative function within an adventure or sourcebook. Singular; distinct from the plural `^"Roles"` LIST used by School DEFs.
- `^"Description"` — narrative description (inherited from `^"Entity"`, overridable).
- `^"Demeanor"`, `^"Social Skill Check TN Modifiers"`, `^"Advantages"`, `^"Disadvantages"`, `^"Favored Weapons"`, `^"Gear"` — present when the source provides them; omit otherwise.

NPCs live either in dedicated `*-npcs.ttrpg` extension files or inline within an arc's `CAST { }` block. The shape is the same in both contexts.

### Key ACTOR Design Patterns

- **Hash IDs**: Every ACTOR, DEF block, and RULE has a unique hash identifier (e.g., `#L5R001aB2cD4eF6gH8iJ0kL`). Format: `#` + system prefix (`L5R`) + 3 digits + 12 alphanumeric characters.
- **EXTENDS**: Inheritance references both the hash ID and name of the parent. Used for ACTORs and generic types (Clan, Family, School, Technique).
- **APPLIES TO**: DEF blocks outside ACTORs use `APPLIES TO [^"Samurai", ^"Adversary"]` to declare which actors they affect.
- **ALIAS**: Declares an alternate name for a DEF that resolves to the same definition. Used for terms with special characters (macrons, etc.) to provide an ASCII-safe synonym. The canonical form uses correct characters; the alias is accepted in references and file names.
- **Property types**: `STRING`, `INTEGER` (with `MIN`/`MAX`/`DEFAULT`), `LIST OF`, `ENUM`, `BOOLEAN`, nested `DEF` blocks.
- **Modifiers**: `REQUIRED`, `FIXED` (immutable), `DEFAULT` (initial value).

### Romanization and Special Characters

L5R5e uses Japanese terms with macrons (ō, ū) to indicate long vowels. DEF names use the correct romanized form as the canonical name, with an `ALIAS` providing the simplified ASCII form:

```ttrpg
^"Ninjō" DEF {
    ALIAS "Ninjo"
    # ^"Ninjō" and ^"Ninjo" both resolve to this definition
}
```

Terms with macrons in L5R5e:
- **Ninjō** (ALIAS "Ninjo") — personal desire
- **Kihō** (ALIAS "Kiho") — monastic techniques
- **Shūji** (ALIAS "Shuji") — social techniques
- **Mahō** (ALIAS "Maho") — blood sorcery

The simplified form is appropriate for file names, rule hash labels, and user input. The canonical form should be used in DEF names, descriptions, and display text.

## The Five Rings

The Five Rings are the core attributes, representing approaches to action rather than innate traits. Each ring has an associated stance, opportunity set, and derived attribute contributions.

```ttrpg
^"Air" DEF {
    APPLIES TO [^"Samurai", ^"Adversary", ^"Peasant"]

    INTEGER MIN 1 MAX 5

    # Grace, cunning, precision, and subtlety.
    # Air approaches: speaking carefully, striking precisely,
    # noticing subtle clues, crafting with delicacy.

    RULES {
        #L5R103hI5jK7lM9nO1pQ3r: air_stance_evasion
        #L5R105dE7fG9hI1jK3lM5n: air_contributes_to_focus
        #L5R106oP8qR0sT2uV4wX6y: air_contributes_to_vigilance
    }
}
```

**All Five Rings follow this pattern:** Air, Earth, Fire, Water, Void — each with `INTEGER MIN 1 MAX 5`, associated stance rules, opportunity rules, and derived attribute contributions.

### Derived Attributes

Derived attributes use a `FORMULA` property to express their calculation:

```ttrpg
^"Endurance" DEF {
    APPLIES TO [^"Samurai", ^"Adversary"]
    INTEGER MIN 1
    FORMULA "(Earth + Fire) × 2"
}

^"Composure" DEF {
    APPLIES TO [^"Samurai", ^"Adversary"]
    INTEGER MIN 1
    FORMULA "(Earth + Water) × 2"
}

^"Focus" DEF {
    APPLIES TO [^"Samurai", ^"Adversary"]
    INTEGER MIN 1
    FORMULA "Fire + Air"
}

^"Vigilance" DEF {
    APPLIES TO [^"Samurai", ^"Adversary"]
    INTEGER MIN 0
    FORMULA "(Air + Water) / 2 (rounded down)"
}
```

## Skills

Twenty skills organized into five skill groups (matching the five rings). Each skill follows the same pattern:

```ttrpg
^"Martial Arts [Melee]" DEF {
    APPLIES TO [^"Samurai", ^"Adversary"]
    INTEGER MIN 0 MAX 5
    SKILL_GROUP "Martial"

    # Training in melee weapons: katana, wakizashi, no-dachi,
    # naginata, yari, bo, tetsubo.

    RULES {
        #L5R155hI7jK9lM1nO3pQ5r: melee_attack_checks
        #L5R156sT8uV0wX2yZ4aB6c: weapon_proficiency
    }
}
```

**Skill Groups and their skills:**
- **Artisan** (Air): Aesthetics, Composition, Design, Smithing
- **Martial** (Earth/Fire): Fitness, Martial Arts [Melee], Martial Arts [Ranged], Martial Arts [Unarmed], Meditation, Tactics
- **Scholar** (Earth): Culture, Government, Medicine, Sentiment, Theology
- **Social** (Water): Command, Courtesy, Games, Performance
- **Trade** (varies): Commerce, Labor, Seafaring, Skulduggery, Survival

**Key pattern:** `INTEGER MIN 0 MAX 5`, `SKILL_GROUP` declares group membership, `APPLIES TO` lists valid actor types.

## Social Attributes

Three social attributes track a samurai's standing in Rokugani society. Each uses `INTEGER MIN 0 MAX 100` with the rank derived as the tens digit (e.g., honor 35 = rank 3).

```ttrpg
^"Honor" DEF {
    APPLIES TO [^"Samurai"]
    INTEGER MIN 0 MAX 100

    # Personal investment in Bushido.
    # Characters above rank 6 gain virtue advantages.
    # Characters below rank 3 gain flaw disadvantages.

    RULES {
        #L5R131dE3fG5hI7jK9lM1n: honor_rank_calculation
        #L5R132oP4qR6sT8uV0wX2y: forfeiting_honor_mechanics
        #L5R133zA5bC7dE9fG1hI3j: staking_honor_mechanics
    }
}
```

**All three (Honor, Glory, Status) follow the same pattern** with different thematic rules.

## Dice and Check System

### Custom Dice

L5R5e uses custom dice with symbolic faces rather than numeric results:

```ttrpg
^"Ring Die" DEF {
    # Six-sided custom die. In text: (ring).

    FACES {
        1 "Blank"
        2 "(op) (st)"
        3 "(op)"
        4 "(su) (st)"
        5 "(su)"
        6 "(ex) (st)"
    }
}

^"Skill Die" DEF {
    # Twelve-sided custom die. In text: (skill).

    FACES {
        1 "Blank"
        2 "Blank"
        3 "(op)"
        4 "(op)"
        5 "(op)"
        6 "(su) (st)"
        7 "(su) (st)"
        8 "(su)"
        9 "(su)"
        10 "(su) (op)"
        11 "(ex) (st)"
        12 "(ex)"
    }
}
```

### Dice Symbols

```ttrpg
^"Dice Symbols" DEF {
    ENUM ["Success", "Explosive Success", "Opportunity", "Strife"]

    SYMBOL_DEFINITIONS {
        ^"Success (su)" "Counts toward meeting or exceeding TN."
        ^"Explosive Success (ex)" "Counts as (su) and allows rolling 1 additional die of same type."
        ^"Opportunity (op)" "Narrative currency for secondary effects."
        ^"Strife (st)" "Emotional accumulation toward Compromised condition."
    }

    RESOLUTION_ORDER ["(ex)", "(st)", "(op)", "(su)"]
}
```

### Check Structure

```ttrpg
^"Check" DEF {
    # Core resolution mechanic: Roll and Keep system.

    STEPS {
        1 "Declare Intention"
        2 "Determine Details: GM assigns skill, ring (approach), and TN"
        3 "Assemble and Roll Dice Pool: Ring dice = ring value, Skill dice = skill ranks"
        4 "Modify Rolled Dice: Apply advantages/disadvantages that cause rerolls"
        5 "Choose Kept Dice: Select up to ring value dice to keep"
        6 "Resolve Symbols on Kept Dice: (ex) then (st) then (op) then (su)"
        7 "Narrate Results: GM and player narrate outcome based on success/failure and spent opportunity"
    }

    RULES {
        #L5R023kL4mN6oP8qR0sT2u: dice_pool_assembly
        #L5R024vW5xY7zA9bC1dE3f: keep_limit_equals_ring_value
        #L5R025gH6iJ8kL0mN2oP4q: success_threshold_comparison
    }
}
```

### Target Number

```ttrpg
^"Target Number" DEF {
    INTEGER MIN 1 MAX 8

    DIFFICULTY_SCALE {
        1 "Simple"
        2 "Easy (default)"
        3 "Average"
        4 "Hard"
        5 "Very Hard"
        6 "Extremely Difficult"
        7 "Heroic"
        8 "Legendary"
    }
}
```

### Opportunity Spending

Ring-specific opportunity options are defined as named sub-blocks within a single `^"Opportunity"` DEF:

```ttrpg
^"Opportunity" DEF {
    GENERAL_OPPORTUNITIES {
        "(op)+: Remove 1 strife you gained from this check per (op) spent."
        "(op)(op): Learn the target's demeanor and current strife."
    }

    AIR_OPPORTUNITIES { ... }
    EARTH_OPPORTUNITIES { ... }
    FIRE_OPPORTUNITIES { ... }
    WATER_OPPORTUNITIES { ... }
    VOID_OPPORTUNITIES { ... }
}
```

### Void Points

```ttrpg
^"Void Points" DEF {
    APPLIES TO [^"Samurai"]
    INTEGER MIN 0

    STARTING_VALUE "Void ring value / 2 (rounded up)"
    MAXIMUM "Void ring value"

    USES {
        ^"Seize the Moment" "Spend 1: Roll 1 additional (ring) and keep 1 additional die."
        ^"Shattering Parry" "Spend 1: Reduce critical strike severity by school rank."
        ^"Technique Activation" "Some techniques require spending Void points."
    }

    RECOVERY {
        "Gain 1 when adversity applies and check fails (1/scene per disadvantage)"
        "Gain 1 when anxiety triggers (1/scene per disadvantage)"
        "Gain 1 when moved by a complication"
        "Gain 1 when GM conceals TN"
    }
}
```

## Conflict System

### Stance

```ttrpg
^"Stance" DEF {
    ENUM ["Air", "Earth", "Fire", "Water", "Void"]

    # Chosen at start of each turn in conflict.
    # Air Stance: +1 TN for attacks targeting you at range 1-2
    # Earth Stance: Cannot receive more strife/fatigue than Earth ring per check
    # Fire Stance: Bonus success on Attack/Scheme if you keep (st)
    # Water Stance: May perform additional action not requiring a check
    # Void Stance: Cannot be targeted by Schemes; (op) on kept dice treated as blank
}
```

### Conflict Types

```ttrpg
^"Conflict Type" DEF {
    ENUM ["Intrigue", "Duel", "Skirmish", "Mass Battle"]

    # Intrigue: Social/political (deals strife)
    # Duel: Formal one-on-one (prediction mechanic)
    # Skirmish: Small-scale tactical combat (deals fatigue)
    # Mass Battle: Army-scale warfare (abstracted roles)
}
```

### Actions

```ttrpg
^"Action" DEF {
    ENUM ["Attack", "Scheme", "Support", "Guard", "Movement", "Calming Breath", "Prepare", "Wait"]
}
```

## Strife, Composure, and Unmasking

```ttrpg
^"Compromised" DEF {
    # Triggered when strife exceeds composure.
    # Vigilance treated as 1
    # Cannot keep dice with (st) symbols
    # May Unmask once per scene to end condition
}

^"Unmask" DEF {
    UNMASK_OPTIONS {
        ^"Bend Principles" "Forfeit honor."
        ^"Expose Opening" "Enemies gain advantage."
        ^"Honor's Challenge" "Challenge antagonist to a duel."
        ^"Inappropriate Outburst" "Forfeit glory."
        ^"Panicked Retreat" "Flee the scene."
        ^"Rage" "Lash out violently."
    }
}
```

## Character Creation: Twenty Questions

Character creation is structured as a collaborative twenty-question process:

```ttrpg
^"Twenty Questions" DEF {
    APPLIES TO [^"Samurai"]

    PHASES {
        ^"Part I: Core Identity (Clan, Family, School)" DEF {
            1 "What clan does your character belong to?"
            2 "What family does your character belong to?"
            3 "What is your character's school?"
            4 "How does your character stand out within their school?"
        }
        ^"Part II: Personality and Behavior" DEF {
            5 "Who is your character's lord? (Sets giri)"
            6 "What does your character long for? (Sets ninjo)"
            7-13 "Determine additional skills, advantages, disadvantages, honor"
        }
        ^"Part III: Final Details" DEF {
            14-20 "Relationships, name, personal truth, final details"
        }
    }
}
```

## Generic Types: Clan, Family, School

Three generic types define the common property shapes for character creation elements. Specific instances use `EXTENDS` to inherit from these types, paralleling how actor types use `EXTENDS ^"Entity"`.

### Generic Clan

```ttrpg
#L5R250aB2cD4eF6gH8iJ0k ^"Clan" DEF {
    APPLIES TO [^"Samurai"]

    # Generic clan type. All clan definitions EXTENDS this type.
    # A clan grants one ring increase, one skill increase, and
    # a starting status value. Each clan contains a FAMILIES block.

    PROPERTIES {
        ^"Clan Name" STRING REQUIRED FIXED
        ^"Clan Ring Bonus" DEF REQUIRED        # { ^"<Ring>" INTEGER 1 }
        ^"Clan Skill Bonus" DEF REQUIRED       # { ^"<Skill>" INTEGER 1 }
        ^"Clan Status" INTEGER MIN 0 MAX 100 REQUIRED
    }
}
```

### Generic Family

```ttrpg
#L5R251lM3nO5pQ7rS9tU1v ^"Family" DEF {
    APPLIES TO [^"Samurai"]

    # Generic family type. A family grants a choice between two
    # rings, two skill increases, starting glory, and starting wealth.

    PROPERTIES {
        ^"Family Name" STRING REQUIRED FIXED
        ^"Ring Increase" DEF REQUIRED          # See "Bonus Property Shapes" below
        ^"Skill Increases" DEF REQUIRED        # See "Bonus Property Shapes" below
        ^"Glory" INTEGER MIN 0 MAX 100 REQUIRED
        ^"Starting Wealth" INTEGER REQUIRED    # koku; or DEF for non-koku / multi-component (see below)
    }
}
```

### Generic School

```ttrpg
#L5R252wX4yZ6aB8cD0eF2g ^"School" DEF {
    APPLIES TO [^"Samurai"]

    # Generic school type. A school defines the character's role,
    # ring and skill bonuses, starting honor, technique access,
    # school ability, curriculum, and mastery ability.

    PROPERTIES {
        ^"School Name" STRING REQUIRED FIXED
        ^"Clan" STRING REQUIRED
        ^"Roles" LIST REQUIRED                   # ["Bushi"], ["Courtier", "Shugenja"], etc.
        ^"Ring Increase" DEF REQUIRED            # See "Bonus Property Shapes" below
        ^"Starting Skills" DEF REQUIRED          # CHOOSE N [...] INTEGER 1 form (see below)
        ^"Starting Honor" INTEGER MIN 0 MAX 100 REQUIRED
        ^"Techniques Available" LIST REQUIRED    # ["Kata", "Rituals", "Shūji"]
    }
}
```

### Bonus Property Shapes

The `^"Ring Increase"`, `^"Skill Increases"`, `^"Clan Ring Bonus"`, `^"Clan Skill Bonus"`, and `^"Starting Skills"` properties use typed sub-DEF shapes (replacing the v0.2-era packed-string format). Six common shapes:

| Shape | Example | Use |
|---|---|---|
| Single bonus | `^"Clan Ring Bonus" DEF { ^"Earth" INTEGER 1 }` | One ring/skill, single +N |
| Two specific bonuses | `^"Ring Increase" DEF { ^"Earth" INTEGER 1; ^"Water" INTEGER 1 }` (multi-line in practice) | School two-ring bonus, family two-skill bonus |
| Symmetric "or" choice | `^"Ring Increase" DEF { CHOOSE 1 [^"Air", ^"Fire"] INTEGER 1 }` | Family-style "pick one of two" |
| Choose-N from list | `^"Starting Skills" DEF { CHOOSE 5 [^"Fitness", ^"Tactics", ...] INTEGER 1 }` | School starting-skills list |
| Single currency | `^"Starting Wealth" INTEGER 4` (implicit koku) | Standard koku wealth |
| Non-koku or multi-component | `^"Starting Wealth" DEF { ^"Bu" INTEGER 2 }` or `DEF { ^"Koku" INTEGER 1; ^"Dragonfly glass ornaments" INTEGER 2 }` | Non-koku currency or extras |

**The `CHOOSE N [opts] INTEGER M` construct** parallels the existing `KATA CHOOSE N [opts]` curriculum syntax. Semantics: the character picks `N` of the listed options; each picked option gets `+M`.

**Exotic shapes** (specific + wildcard, contextual "based on chosen clan", pure wildcards, narrative wealth) currently remain as STRING with a `# F-STR-GAMMA: ...` marker comment. See `titterpig-audit/l5r5e/AUDIT-BASELINE.md` F-STR-002/003 for the catalog of remaining exotic cases.

**Note:** `^"Technique"` also serves as a generic type (defined in `core-techniques.ttrpg`) with properties for Name, Type, Rank, Activation, Ring, Skill, TN, Description, Effects, Opportunities, and Prerequisites. School abilities and mastery abilities are defined as named sub-blocks (`SCHOOL_ABILITY`, `MASTERY_ABILITY`) rather than as STRING properties.

## Clans and Families

### Great Clan Pattern

Each of the seven Great Clans extends the generic `^"Clan"` type and contains a `FAMILIES` block. Each clan grants one ring increase, one skill increase, and a starting status value:

```ttrpg
^"Crab Clan" DEF {
    EXTENDS #L5R250aB2cD4eF6gH8iJ0k ^"Clan"
    APPLIES TO [^"Samurai"]

    PROPERTIES {
        ^"Clan Name" STRING "Crab" FIXED
        ^"Clan Ring Bonus" STRING "+1 Earth"
        ^"Clan Skill Bonus" STRING "+1 Fitness"
        ^"Clan Status" INTEGER DEFAULT 30
    }

    FAMILIES {
        ^"Hida" "+1 Earth or Fire, +1 Command, +1 Tactics, Glory 44, 4 koku"
        ^"Hiruma" "+1 Air or Water, +1 Skulduggery, +1 Survival, Glory 39, 3 koku"
        ^"Kaiu" "+1 Earth or Fire, +1 Smithing, +1 Labor, Glory 40, 5 koku"
        ^"Kuni" "+1 Earth or Void, +1 Medicine, +1 Theology, Glory 40, 4 koku"
        ^"Yasuki" "+1 Air or Water, +1 Commerce, +1 Design, Glory 39, 10 koku"
    }
}
```

**Family entry format:** Each family in a `FAMILIES` block conforms to the `^"Family"` generic type shape: ring choice between two rings, two skill increases, starting glory, and starting wealth in koku.

### Minor Clan Pattern (Extension)

Minor clans defined in extension files follow the same structure with `EXTENDS ^"Clan"`. From Shadowlands:

```ttrpg
^"Falcon Clan" DEF {
    EXTENDS #L5R250aB2cD4eF6gH8iJ0k ^"Clan"
    APPLIES TO [^"Samurai"]

    PROPERTIES {
        ^"Clan Name" STRING "Falcon" FIXED
        ^"Clan Type" STRING "Minor Clan"
        ^"Clan Ring Bonus" STRING "+1 Void"
        ^"Clan Skill Bonus" STRING "+1 Theology"
        ^"Clan Status" INTEGER DEFAULT 26
    }

    FAMILIES {
        ^"Toritaka" "+1 Earth or Water, +1 Survival, +1 Meditation, Glory 35, 3 koku"
    }
}
```

## Schools

### School DEF Pattern

Schools extend the generic `^"School"` type. They are the most complex DEF blocks, containing properties, a school ability block, starting techniques, curriculum, mastery ability, starting outfit, and rules.

```ttrpg
^"Toritaka Phantom Hunter" DEF {
    EXTENDS ^"School"
    APPLIES TO [^"Samurai"]

    PROPERTIES {
        ^"School Name" STRING "Toritaka Phantom Hunter" FIXED
        ^"Clan" STRING "Falcon"
        ^"Roles" LIST ["Shugenja"]
        ^"Ring Increase" STRING "+1 Air, +1 Water"
        ^"Starting Skills" STRING "+1 Martial Arts [Ranged], +1 Medicine, +1 Sentiment, +1 Survival, +1 Theology"
        ^"Starting Honor" INTEGER DEFAULT 40
        ^"Techniques Available" LIST ["Invocations", "Rituals", "Shūji"]
    }

    STARTING_TECHNIQUES {
        INVOCATION CHOOSE 3
        RITUAL CHOOSE 1
    }

    SCHOOL_ABILITY "Haunted Sight" {
        "Once per scene when encountering a supernatural being, you may make a TN 2 Theology (Void) check as a free action to learn one fact about the being. Reduce the TN of your checks to investigate supernatural phenomena by your school rank."
    }

    MASTERY_ABILITY ^"Resilient Readiness" {
        "When you encounter a supernatural being or phenomenon, you may spend 1 Void point to negate its effects for one round."
    }

    STARTING_OUTFIT [
        "traveling clothes", "sanctified robes",
        "daishō (any one sword of rarity 7 or lower and wakizashi)",
        "scroll satchel", "traveling pack"
    ]

    CURRICULUM {
        RANK 1 {
            SKILL_GROUP "Scholar Skills"
            SKILL "Theology"
            SKILL "Meditation"
            TECHNIQUE_GROUP "Rank 1 Air Invocations"
            TECHNIQUE_GROUP "Rank 1 Water Invocations"
            ^"Commune with the Spirits" [ritual]
        }
        RANK 2 {
            SKILL_GROUP "Martial Skills"
            SKILL "Medicine"
            SKILL "Theology"
            TECHNIQUE_GROUP "Rank 1-2 Air Invocations"
            ^"Threshold Barrier" [ritual]
        }
        RANK 3 {
            SKILL_GROUP "Trade Skills"
            SKILL "Survival"
            TECHNIQUE_GROUP "Rank 1-3 Rituals"
            ^"Essence of Jade" [invocation]
        }
        RANK 4 {
            SKILL_GROUP "Scholar Skills"
            SKILL "Theology"
            TECHNIQUE_GROUP "Rank 1-4 Air Invocations"
            ^"Divination" [ritual]
        }
        RANK 5 {
            SKILL_GROUP "Social Skills"
            SKILL "Sentiment"
            TECHNIQUE_GROUP "Rank 1-5 Invocations"
            ^"Threshold Barrier" [ritual]
        }
        RANK 6 {
            ^"Resilient Readiness"
        }
    }
}
```

### Standardized School DEF Structure

Every school DEF follows this structure in order:

1. `EXTENDS ^"School"` — Inherits from the generic School type
2. `APPLIES TO [^"Samurai"]` — Scope constraint
3. `PROPERTIES` — Standard property set (see below)
4. `STARTING_TECHNIQUES` — Techniques granted at school creation
5. `SCHOOL_ABILITY "Name" { "text" }` — School ability as a named sub-block
6. `MASTERY_ABILITY ^"Name" { "text" }` — Rank 6 capstone ability
7. `STARTING_OUTFIT [...]` — Starting equipment list
8. `CURRICULUM` — Ranks 1-6, each containing curriculum entries

### Standard School Properties

| Property | Type | Description |
|----------|------|-------------|
| `^"School Name"` | `STRING "Name" FIXED` | Display name of the school |
| `^"Clan"` | `STRING "ClanName"` | Clan affiliation |
| `^"Roles"` | `LIST ["Role1", "Role2"]` | School roles (Bushi, Courtier, Shugenja, Monk, Shinobi) |
| `^"Ring Increase"` | `DEF { ^"Ring" INTEGER 1; ^"Ring" INTEGER 1 }` | Ring bonuses from this school (see Bonus Property Shapes) |
| `^"Starting Skills"` | `DEF { CHOOSE N [^"Skill", ...] INTEGER 1 }` | Starting skill choice (see Bonus Property Shapes) |
| `^"Starting Honor"` | `INTEGER DEFAULT N` | Starting honor value |
| `^"Techniques Available"` | `LIST ["Category1", "Category2"]` | Technique categories this school can access |

### Curriculum Entry Keywords

Curriculum blocks use keyword-first syntax with these L5R5e-specific keywords:

| Keyword | Example | Description |
|---------|---------|-------------|
| `SKILL_GROUP` | `SKILL_GROUP "Martial Skills"` | Any skill from a skill group counts toward rank advancement |
| `SKILL` | `SKILL "Command"` | A specific skill counts toward rank advancement |
| `TECHNIQUE_GROUP` | `TECHNIQUE_GROUP "Rank 1-3 Kata"` | Any technique from a category/rank range counts |
| `^"Name" [type]` | `^"Rushing Avalanche Style" [kata]` | A specific named technique (caret ref with type tag) |

## Advantages and Disadvantages

### Type Framework

```ttrpg
^"Advantage" DEF {
    TYPES {
        ^"Distinction" "Reroll up to 2 dice when applicable."
        ^"Passion" "Remove 3 strife after resolving check when applicable."
    }

    PROPERTIES {
        ^"Type" ENUM ["Distinction", "Passion"]
        ^"Category" STRING
        ^"Ring" STRING
        ^"Description" STRING
    }
}

^"Disadvantage" DEF {
    TYPES {
        ^"Adversity" "Must reroll 2 dice showing (su)/(ex). If check fails, gain 1 Void point."
        ^"Anxiety" "Receive 3 strife after resolving. First time per scene, gain 1 Void point."
    }

    PROPERTIES {
        ^"Type" ENUM ["Adversity", "Anxiety"]
        ^"Category" STRING
        ^"Ring" STRING
        ^"Description" STRING
    }
}
```

### ENTRIES Pattern

In extension files, advantages and disadvantages are grouped using `ENTRIES` blocks:

```ttrpg
# === DISTINCTIONS ===
ENTRIES ^"Shadowlands Distinctions" {
    ^"Dead Eyes" DEF {
        PROPERTIES {
            ^"Type" STRING "Distinction" FIXED
            ^"Ring" STRING "Earth"
            ^"Categories" LIST OF STRING ["Mental"]
            ^"Effect" STRING "..."
        }
    }

    ^"Friend of the Nezumi" DEF { ... }
    ^"Light Sleeper" DEF { ... }
}

# === ADVERSITIES ===
ENTRIES ^"Shadowlands Adversities" {
    ^"Demon Wound" DEF {
        PROPERTIES {
            ^"Type" STRING "Adversity" FIXED
            ^"Ring" STRING "Earth"
            ^"Categories" LIST OF STRING ["Spiritual", "Scar"]
            ^"Effect" STRING "..."
        }
    }
}
```

**ENTRIES blocks** group related DEF blocks under a named collection. Used for advantages, disadvantages, weapons, armor, techniques, titles, and other catalog-style content.

## Techniques

### Technique Type Framework

```ttrpg
^"Technique" DEF {
    PROPERTIES {
        ^"Name" STRING REQUIRED
        ^"Type" ENUM ["Kata", "Kihō", "Invocation", "Ritual", "Shūji", "Mahō", "Ninjutsu", "Inversion", "School Ability", "Mastery Ability"]
        ^"Rank" INTEGER MIN 1 MAX 6
        ^"Activation" ENUM ["Action", "Downtime Activity", "Opportunity", "Permanent", "Triggered"]
        ^"Ring" STRING
        ^"Skill" STRING
        ^"TN" INTEGER
        ^"Description" STRING
        ^"Effects" STRING
        ^"Opportunities" STRING
        ^"Prerequisites" STRING
    }
}
```

### Technique ENTRIES Pattern (Extension)

```ttrpg
ENTRIES ^"Shadowlands Maho Techniques" {
    ^"Accursed Summoning" DEF {
        PROPERTIES {
            ^"Type" STRING "Maho" FIXED
            ^"Subtype" STRING "Blood Sorcery"
            ^"Rank" INTEGER 1
            ^"Activation" STRING "Action"
            ^"Check" STRING "TN 2 Theology (Void)"
            ^"Effect" STRING "..."
            ^"Opportunities" STRING "(op)(op): ..."
        }
    }
}
```

### Technique Type Summaries

| Type | Symbol | Schools | Description |
|------|--------|---------|-------------|
| Kata | (kata) | Bushi | Martial combat techniques |
| Kihō | (kihō) | Monk | Spiritual techniques with Enhancement + Burst |
| Invocation | (invocation) | Shugenja | Elemental prayers to kami |
| Ritual | (ritual) | Shugenja, Monk | Downtime ceremonial practices |
| Shūji | (shūji) | Courtier | Social and verbal techniques |
| Mahō | (mahō) | Rare | Blood sorcery (forbidden) |
| Ninjutsu | (ninjutsu) | Shinobi | Espionage and assassination |
| Inversion | (inversion) | Ishiken | Void manipulation |

## Weapons and Armor

### Weapon Pattern

```ttrpg
^"Weapon" DEF {
    PROPERTIES {
        ^"Name" STRING REQUIRED
        ^"Category" ENUM ["Melee", "Ranged", "Unarmed"]
        ^"Skill" STRING
        ^"Grip" ENUM ["One-Handed", "Two-Handed", "One-or-Two-Handed"]
        ^"Range" STRING
        ^"Base Damage" INTEGER MIN 0 MAX 10
        ^"Deadliness" INTEGER MIN 0 MAX 10
        ^"Rarity" INTEGER MIN 1 MAX 9
        ^"Qualities" LIST OF STRING
        ^"Price" STRING
    }

    WEAPON_QUALITIES {
        "Ceremonial" "Can be worn in formal settings"
        "Concealable" "Can be hidden on person"
        "Cumbersome" "Requires 2 hands and high strength"
        "Durable" "Not easily broken; +2 resistance when targeted"
        "Mundane" "Common; not associated with samurai status"
        "Razor-Edged" "Additional critical severity on (op) spends"
        "Sacred" "Affects supernatural creatures"
        "Snaring" "Can entangle targets"
        "Wargear" "Military equipment"
    }
}
```

### Armor Pattern

```ttrpg
^"Armor" DEF {
    PROPERTIES {
        ^"Name" STRING REQUIRED
        ^"Physical Resistance" INTEGER MIN 0 MAX 6
        ^"Rarity" INTEGER MIN 1 MAX 9
        ^"Qualities" LIST OF STRING
        ^"Price" STRING
    }
}
```

## Titles (Extension Pattern)

Titles are special advancement paths defined in extension files:

```ttrpg
ENTRIES ^"Shadowlands Titles" {
    ^"Witch Hunter" DEF {
        PROPERTIES {
            ^"Assigned By" STRING "Kuni Daimyo or Clan Champion"
            ^"Status Award" INTEGER 10
            ^"XP to Completion" INTEGER 45
        }

        ^"Bane of Sorcerers" DEF {
            # Title Ability
            ^"Type" STRING "Title Ability"
            ^"Effect" STRING "..."
        }

        PROPERTIES {
            ^"Advancement" LIST OF STRING [
                "Theology 2",
                "Martial",
                "Scholar",
                "Meditation 3",
                "Theology 3",
                "Rank 3-4 Invocation or Ritual",
                "Trade",
                "Theology 4",
                "Meditation 4",
                "Rank 4-5 Invocation or Ritual"
            ]
        }
    }
}
```

**Title structure:** Assigned By, Status Award, XP to Completion, Title Ability sub-DEF, Advancement as LIST OF STRING.

## Bushido

```ttrpg
^"Bushido" DEF {
    APPLIES TO [^"Samurai"]

    TENETS {
        ^"Righteousness (Gi)" "Justice and moral correctness. Championed by the Crab."
        ^"Courage (Yu)" "Bravery and willingness to act. Championed by the Crane."
        ^"Compassion (Jin)" "Empathy and mercy. Championed by the Phoenix."
        ^"Respect (Rei)" "Courtesy and proper behavior. Championed by the Crane."
        ^"Honesty (Makoto)" "Sincerity and truthfulness. Championed by the Dragon."
        ^"Honor (Meyo)" "Personal integrity and reputation. Championed by the Lion."
        ^"Duty (Chugo)" "Loyalty and service. Championed by the Scorpion."
    }
}
```

## Conditions

```ttrpg
^"Condition" DEF {
    ENUM ["Bleeding", "Burning", "Compromised", "Dazed", "Disoriented",
          "Dying", "Enraged", "Exhausted", "Immobilized", "Incapacitated",
          "Intoxicated", "Prone", "Silenced", "Unconscious"]

    CONDITION_DEFINITIONS {
        ^"Bleeding" "Suffer fatigue at start of each turn."
        ^"Burning" "Suffer fatigue at start of each turn."
        ^"Compromised" "Vigilance = 1, cannot keep (st) dice."
        ^"Dying" "Must receive treatment or die at end of scene."
        # ... etc.
    }
}
```

## Extension Patterns

### Hash ID Prefixes

Each file uses a distinct hash prefix to ensure global uniqueness:

| File | Prefix | Example |
|------|--------|---------|
| Core files | `L5R` | `#L5R001aB2cD4eF6gH8iJ0kL` |
| Emerald Empire | `L5REE` | `#L5REE01aB2cD4eF6gH8iJ0` |
| Shadowlands | `L5RSL` | `#L5RSL01aB2cD4eF6gH8iJ0` |

### Extension Section Structure

Extension files follow this section order:

```ttrpg
EXTENSION "L5R5e_Shadowlands" EXTENDS "L5R5e_Core_Character" {
    NAME "..."
    VERSION "0.1"
    RELEASE_DATE "2025-06-01"

    # === CLANS ===
    # Minor clan definitions

    # === FAMILIES ===
    # New family definitions

    # === SCHOOLS ===
    # New school DEF blocks with curriculum

    # === ADVANTAGES: DISTINCTIONS ===
    # === ADVANTAGES: PASSIONS ===
    # === DISADVANTAGES: ADVERSITIES ===
    # === DISADVANTAGES: ANXIETIES ===

    # === SAMURAI HERITAGE TABLE ===
    # Heritage entries as ENTRIES block

    # === WEAPONS ===
    # === ARMOR ===
    # === PERSONAL EFFECTS ===
    # === ITEM PATTERNS ===

    # === TECHNIQUES ===
    # New invocations, rituals, maho

    # === TITLES ===
    # Title DEF blocks with advancement

    # === OPPORTUNITY TABLES ===
    # Context-specific opportunity entries

    # === SPECIAL RULES ===
    # Corruption, oni generation, etc.

    # === NPC TEMPLATES ===
    # Reusable NPC modifier blocks
}
```

### Section Separators

Sections are separated by comment blocks using `# ===` patterns:

```ttrpg
# ===========================
# SECTION NAME
# ===========================
```

Or the compact form in extensions:

```ttrpg
# === SECTION NAME ===
```

## Lore Files

Lore content uses `.lore` extension and is written in standard markdown (not DSL syntax). Lore files follow this format:

```markdown
# L5R 5E - SOURCEBOOK: TOPIC (LORE)

**Version:** 0.1
**Source:** Legend of the Five Rings Roleplaying Game, 5th Edition - Sourcebook (Chapter N)
**Publisher:** Fantasy Flight Games

---

## MAJOR HEADING

Content paragraph.

### Sub Heading

More content.

---

## ANOTHER MAJOR HEADING
```

**Lore files** capture world-building, history, geography, culture, and narrative content. They do not contain DSL syntax — only prose organized under markdown headings.

## Rule Hash Reference Format

All rules are identified by hash IDs with a label suffix:

```ttrpg
RULES {
    #L5R400aB2cD4eF6gH8iJ0k: strife_from_kept_dice
    #L5R401lM3nO5pQ7rS9tU1v: strife_from_anxieties
    #L5R402wX4yZ6aB8cD0eF2g: strife_removal_between_scenes
}
```

**Format:** `#` + prefix + digits + alphanum `:` + snake_case_label

Rules can also use the `WHEN ... THEN` pattern for conditional behavior:

```ttrpg
#L5R005uV6wX8yZ0aB2cD4e: WHEN [^"Strife" > ^"Composure"] THEN ^"Samurai" IS compromised
```

## Advancement and Experience

```ttrpg
^"Experience Points" DEF {
    APPLIES TO [^"Samurai"]
    INTEGER MIN 0 MAX 999999

    ADVANCEMENT_COSTS {
        ^"Skill Rank" COST "new rank × 2 XP (curriculum), new rank × 3 XP (non-curriculum)"
        ^"Ring Increase" COST "new rank × 3 XP (curriculum ring)"
        ^"Technique" COST "3 XP (curriculum), 3 × technique rank XP (non-curriculum)"
        ^"Distinction/Passion" COST "3 XP"
        ^"Adversity/Anxiety" COST "3 XP (gain 1 Void point per scene when triggered)"
    }
}
```

## Implementation Notes

### Rule Resolution Priority
1. **BASE** system rules establish foundation across all five core files
2. **EXTENSIONS** add, modify, or override in dependency order
3. **Hash identifiers** enable precise rule targeting for errata/overrides
4. **APPLIES TO** scoping determines which actors are affected
5. **Environmental and contextual** rules apply situational modifiers

### Traceability Features
- Hash identifiers enable precise rule targeting across files
- Extension dependencies show clear rule layering
- Natural language syntax uses actual L5R game terminology (rings, kata, shuji, etc.)
- Property definitions include designer intent and descriptions
- Rule relationships are explicitly documented with snake_case labels

### L5R5e System-Defined Keywords

These keywords are L5R5e vocabulary built on the v0.3 base spec grammar. They are NOT reserved by the base spec.

**School sub-blocks:** `SCHOOL_ABILITY`, `MASTERY_ABILITY`, `STARTING_TECHNIQUES`, `STARTING_OUTFIT`, `CURRICULUM`

**Curriculum entries:** `SKILL_GROUP`, `SKILL`, `TECHNIQUE_GROUP`, `RANK`

**Technique entries:** `ACTIVATION`, `ACTIVATION_COMPONENTS`, `OPPORTUNITIES`, `CATEGORY`, `FORM_CLASSIFICATIONS`

**Character creation:** `FAMILIES`, `HERITAGE_TABLE`, `PHASES`, `ENTRIES`

**Dice and checks:** `FACES`, `STEPS`, `SYMBOL_DEFINITIONS`, `RESOLUTION_ORDER`, `DIFFICULTY_SCALE`

**Conflict and conditions:** `GENERAL_OPPORTUNITIES`, `CONFLICT_OPPORTUNITIES`, `INITIATIVE_OPPORTUNITIES`, `SKILL_OPPORTUNITIES`, `DOWNTIME_OPPORTUNITIES`, `INTRIGUE_ACTIONS`, `DUEL_ACTIONS`, `SKIRMISH_ACTIONS`, `MASS_BATTLE_ACTIONS`, `UNMASK_OPTIONS`

**Other:** `FORMULA`, `TENETS`, `STARTING_VALUE`, `MAXIMUM`, `USES`, `RECOVERY`, `ADVANCEMENT_COSTS`, `COST`, `CONDITION_DEFINITIONS`, `WEAPON_QUALITIES`

### Design Benefits
- Reads like actual game text rather than programming code
- Clear separation between data (DEF blocks) and behavior (RULES)
- Multi-file architecture mirrors the thematic separation of the rulebook
- Extension system supports official sourcebooks, errata, and house rules equally
- Hash system allows precise targeting of rules across file boundaries
- `^"Term"` syntax provides clear references to game-defined concepts

---

**Version:** 0.3
**Base Spec:** Titterpig DSL v0.3
**Last Updated:** 2026-03-01
**Status:** Active Development
