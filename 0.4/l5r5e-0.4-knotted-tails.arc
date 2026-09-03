# L5R 5E — The Knotted Tails (.arc)
# Structure of the supplemental storyline for "Mask of the Oni" (FFG). GM
# narrative and read-aloud text live in l5r5e-0.4-knotted-tails.lore; the cast
# NPCs in l5r5e-0.4-knotted-tails-cast.ttrpg. This is an optional bonus storyline
# run within Mask of the Oni (or any Shadowlands campaign), so it uses the
# players' existing characters — there are no pregens.

ARC "the-knotted-tails" EXTENDS "l5r5e" {
    NAME "The Knotted Tails"
    VERSION "0.4.1"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "The Knotted Tails: A Supplemental Storyline for Mask of the Oni (Fantasy Flight Games, 2020)"
    LEAD_WRITER "Alexis Dykema"
    DESCRIPTION "An optional bonus storyline for the Legend of the Five Rings Roleplaying Game, played within Mask of the Oni (before the PCs reach Shiro Hiruma) or adapted to any Shadowlands campaign. The PCs meet the human-sized, rat-like nezumi of the Knotted Tails tribe — who pride themselves on remembering the past and believe their ancestors were allies of the Hiruma — and discover the horror stalking the tribe for nezumi blood."

    THEMES ["The nezumi: outsiders with their own honor", "Memory and the keeping of the past", "Allies made or enemies earned in the Shadowlands", "A threat that hunts from within dreams", "Redemption through remembering"]

    TONE "Shadowlands folk-horror and diplomacy; a mystery of vanishing nezumi resolving in a graveyard skirmish"
    PLAYER_COUNT "Designed for four PCs of rank 2; a supplement using the players' existing Shadowlands characters (no pregens)"
    SUMMARY "As the PCs cross the Shadowlands near the ruins of Shiro Hiruma, a patrol of Knotted Tails nezumi watches and hails them, asking help against something that has been stealing their scouts and pups in the night. Received in the tribe's village by their leader Lucky Silver and their Dreamer One Eye, the PCs learn the tribe's history and the possible culprits, then follow the trail to a nezumi graveyard — where the abducted apprentice Rememberer, Quick Shadow, has been taken. There they confront Frayed Whisker, a nezumi Lucky Silver once exiled, now a dreamwalker who binds and curses nezumi to his will. Slaying or capturing him frees the tribe, earning the PCs supplies, information, and the promise of nezumi aid — including a guide into Shiro Hiruma."

    # ─────────────────────────────────────────────
    # PART STRUCTURE
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part 1: Storyline Background" {
            DESCRIPTION "GM background on the Knotted Tails nezumi and how the storyline ties into Mask of the Oni: the tribe's claimed alliance with the Hiruma (their ancestor Silver Ears made an honorary samurai), their protectiveness of Shiro Hiruma's ruins, their Transcendents, and the threat hunting them."
        }
        PART 2 "Part 2: Being Watched" {
            SCENES ["The Patrol", "The Parasite"]
            DESCRIPTION "A nezumi patrol shadows the PCs through the Shadowlands, then hails them (the scout Nine Claws requesting help). Cooperating costs glory if discovered but may win useful allies; the nezumi warn of the castle and of the unknown threat, and can treat a parasite affliction (e.g. Hida Kurumi from Mask of the Oni) with the Dreamer's brew."
        }
        PART 3 "Part 3: The Knotted Tails Village" {
            SCENES ["The Leader's Tent", "Meeting the Rememberer", "The Shrine to Memory", "Nezumi Games", "The Unknown Threat"]
            DESCRIPTION "In the tents-and-burrows village, the PCs meet leader Lucky Silver (who wields her ancestor Silver Ears' Kaiu blade), hear the tribe's history from the Rememberer, may pray at the Shrine to Memory, and consult the Dreamer One Eye. They piece together that a nezumi who knows the tribe — someone angry at Lucky Silver — is behind the disappearances, and that the Rememberer's apprentice Quick Shadow was sent to the graveyard."
        }
        PART 4 "Part 4: The Nezumi Graveyard" {
            SCENES ["Lucky Silver in the Graveyard", "The Confrontation"]
            DESCRIPTION "At the open-pit nezumi graveyard, the PCs find slain scouts and the vanished apprentice's trail. Frayed Whisker springs his ambush — controlled and outcast nezumi assault Lucky Silver — and One Eye's Dreamreader frees the ensnared. Slaying or capturing Frayed Whisker ends his hold; leaving Lucky Silver to fight alone costs the PCs honor and dooms the tribe. Terrain is Defiled and Dangerous."
        }
        PART 5 "Part 5: Resolution" {
            DESCRIPTION "If Frayed Whisker falls and the tribe is saved, the grateful Knotted Tails give the PCs gifts, pledge loyalty (the Support of the Knotted Tails advantage), and offer the infiltrator Three Tooth as a guide into Shiro Hiruma. Rewards: XP for the skirmish and for freeing controlled nezumi; 4 honor for risking their lives to save Lucky Silver; honor for capturing Frayed Whisker alive."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"The Knotted Tails Village" DEF {
            TYPE "Village"
            DANGER_LEVEL "Shadowlands (mobile nezumi encampment)"
            DESCRIPTION "A scattering of mismatched tents and underground burrows hidden among the rocks of the Shadowlands, home to the nomadic Knotted Tails tribe. Holds the Leader's Tent, the Rememberer's place, and the Shrine to Memory."
            NPCS [^"Lucky Silver", ^"One Eye", ^"Knotted Tails Warrior", ^"Nezumi Pup (Knotted Tails)", ^"Three Tooth"]
        }
        ^"The Nezumi Graveyard" DEF {
            TYPE "Landmark"
            DANGER_LEVEL "Defiled and Dangerous terrain"
            DESCRIPTION "A natural pit used by several tribes over centuries, filled with the exposed bones and skulls of the nezumi dead — a sign of respect, for their dead are not hidden and Rememberers can recognize their skulls and tell their stories. Site of Frayed Whisker's ambush."
        }
        ^"Shiro Hiruma" DEF {
            TYPE "Castle"
            DANGER_LEVEL "Shadowlands ruin"
            DESCRIPTION "The ruined ancestral castle of the Hiruma family, deep in the Shadowlands; the Knotted Tails remain protective of it but are too fearful to venture inside, warning travelers of ghosts, goblins, and worse. The destination of Mask of the Oni."
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-knotted-tails-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        TRIBE [^"Lucky Silver", ^"One Eye", ^"Three Tooth", ^"Knotted Tails Warrior", ^"Nezumi Pup (Knotted Tails)"]
        THREAT [^"Frayed Whisker", ^"Outcast Nezumi (Knotted Tails)"]
    }

    # A supplement to Mask of the Oni; the players use their existing Shadowlands
    # characters, so there is no PARTY / pregen roster.
}
