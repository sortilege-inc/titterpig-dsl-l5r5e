# L5R 5E — The Knotted Tails (.arc)
# Structure of the supplemental storyline for "Mask of the Oni" (FFG). GM
# narrative and read-aloud text live in l5r5e-0.5-knotted-tails.lore; the cast
# NPCs in l5r5e-0.5-knotted-tails-cast.ttrpg. This is an optional bonus storyline
# run within Mask of the Oni (or any Shadowlands campaign), so it uses the
# players' existing characters — there are no pregens.

ARC "the-knotted-tails" EXTENDS "l5r5e" {
    NAME "The Knotted Tails"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "The Knotted Tails: A Supplemental Storyline for Mask of the Oni (Fantasy Flight Games, 2020)"
    LEAD_WRITER "Alexis Dykema"
    DESCRIPTION "This is an optional bonus storyline that may be played within Mask of the Oni, an adventure for the Legend of the Five Rings Roleplying Game. Encounters are designed for a party of four PCs of rank 2, though these can be adjusted for parties of any size and ranks by using Gauging an Encounter on page 310 of the core rulebook.\n\nThe Knotted Tails takes place before the PCs reach Shiro Hiruma, but after the optional encounter \"The Lost\" on page 15 of that adventure. Alternatively, it can be adapted for use within any campaign in the Shadowlands. Whether PCs are involved in Mask of the Oni or not, these encounters allow them to meet and learn about the human-sized, rat-like nezumi and discovr what horror is stalking this tribe through the Shadowlands."

    THEMES ["The nezumi: outsiders with their own honor", "Memory and the keeping of the past", "Allies made or enemies earned in the Shadowlands", "A threat that hunts from within dreams", "Redemption through remembering"]

    TONE "Shadowlands folk-horror and diplomacy; a mystery of vanishing nezumi resolving in a graveyard skirmish"
    PLAYER_COUNT "Designed for four PCs of rank 2; a supplement using the players' existing Shadowlands characters (no pregens)"
    SUMMARY "As the PCs cross the Shadowlands near the ruins of Shiro Hiruma, a patrol of Knotted Tails nezumi watches and hails them, asking help against something that has been stealing their scouts and pups in the night. Received in the tribe's village by their leader Lucky Silver and their Dreamer One Eye, the PCs learn the tribe's history and the possible culprits, then follow the trail to a nezumi graveyard — where the abducted apprentice Rememberer, Quick Shadow, has been taken. There they confront Frayed Whisker, a nezumi Lucky Silver once exiled, now a dreamwalker who binds and curses nezumi to his will. Slaying or capturing him frees the tribe, earning the PCs supplies, information, and the promise of nezumi aid — including a guide into Shiro Hiruma."

    # ─────────────────────────────────────────────
    # PART STRUCTURE
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part 1: Storyline Background" {
            DESCRIPTION "General information about the nezumi and how this adventure ties into Mask of the Oni."
        }
        PART 2 "Part 2: Being Watched" {
            SCENES ["The Patrol", "The Parasite"]
            DESCRIPTION "The PCs encounter a nezumi patrol and must decide whether or not to help the tribe, which may lead the PCs closer to their goal in the Shadowlands."
        }
        PART 3 "Part 3: The Knotted Tails Village" {
            SCENES ["The Leader's Tent", "Meeting the Rememberer", "The Shrine to Memory", "Nezumi Games", "The Unknown Threat"]
            DESCRIPTION "At the village, the PCs are introduced to the Knotted Tails leader, nezumi culture, and have the opportunity to investigate the disappearances."
        }
        PART 4 "Part 4: The Nezumi Graveyard" {
            SCENES ["Lucky Silver in the Graveyard", "The Confrontation"]
            DESCRIPTION "The PCs face the final confrontation in the nezumi graveyard and must choose to jeapordize their mission in the Shadowlands to help creatures in need."
        }
        PART 5 "Part 5: Resolution" {
            DESCRIPTION "The PCs either resolve the aftermath of the graveyard and depart the tribe, or face the consequences of killing the scouts or ignoring the nezumi's requests for aid."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        #mDw5qUW765rHXSWh5aSwdT ^"The Knotted Tails Village" DEF {
            TYPE "Village"
            DANGER_LEVEL "Shadowlands (mobile nezumi encampment)"
            DESCRIPTION "The nezumi pause as they reach the brow of a hill, looking expectantly at you. Standing on the crest, you get your first view of the nezumi village, a scattering of mismatched tents hidden amongst the rocks below. Furred figures emerge from numerous burrows and stand to watch your approach. The smallest among them, nezumi about the size of human infants, swarm up the hill on all fours, squeaking excitedly.\n\nBurrows for sleeping are underground, where the Knotted Tails feel safer. The tents above are skeletal structures of wood and metal, with scraps of cloth and dried vegetation stretched between struts to provide shelter and shade. A small fire heats a cooking pot inside one, and within another the PCs might glimpse a nezumi beating salvaged metal into usable shapes with a rock, the dull clanging muffled by the fabric of the tent. If a PC enters one of the burrows, they take 1 strife due to the cramped, dirty conditions."
            NPCS [#V0DWYrR5xlokHfdS7hvCDx ^"Lucky Silver", #kPaySOUpYzXXBfUCAQxVgU ^"One Eye", #SZMkstPtGBzXrSFeh58WrH ^"Knotted Tails Warrior", #rcXekxnwN7g2K7ewseN1If ^"Nezumi Pup (Knotted Tails)", #LdWBN2MKdWSsJh5eBEtGnl ^"Three Tooth"]
        }
        #MQvUaPZsJXQoN4gAdIo5Va ^"The Nezumi Graveyard" DEF {
            TYPE "Landmark"
            DANGER_LEVEL "Defiled and Dangerous terrain"
            DESCRIPTION "Although the Knotted Tails are nomadic, they often return to the same locations, and they regularly visit the graveyard on their route. Once the PCs learn there is a graveyard, any nezumi can point the PCs in the right direction to reach it, though none offer to accompany them. Used by several tribes, it is a grisley sight: a natural pit the nezumi have filled with the corpses of their dead over the centuries, leaving their bones and skulls exposed. While this is a horrifying thought for any samurai, for the nezumi it is a sign of respect. Their dead are not hidden and forgotten, and Rememberers can recognize their skulls and tell their stories."
        }
        #sQUFPI395zzLW3caIY0KcJ ^"Shiro Hiruma" DEF {
            TYPE "Castle"
            DANGER_LEVEL "Shadowlands ruin"
            DESCRIPTION "The ruined ancestral castle of the Hiruma family, deep in the Shadowlands; the Knotted Tails remain protective of it but are too fearful to venture inside, warning travelers of ghosts, goblins, and worse. The destination of Mask of the Oni."
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-knotted-tails-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        TRIBE [#V0DWYrR5xlokHfdS7hvCDx ^"Lucky Silver", #kPaySOUpYzXXBfUCAQxVgU ^"One Eye", #LdWBN2MKdWSsJh5eBEtGnl ^"Three Tooth", #SZMkstPtGBzXrSFeh58WrH ^"Knotted Tails Warrior", #rcXekxnwN7g2K7ewseN1If ^"Nezumi Pup (Knotted Tails)"]
        THREAT [#E9nmYkxG8ExCjVm3Z9OzBH ^"Frayed Whisker", #bOHDyovyZHp6VlzBa3dQmv ^"Outcast Nezumi (Knotted Tails)"]
    }

    # A supplement to Mask of the Oni; the players use their existing Shadowlands
    # characters, so there is no PARTY / pregen roster.
}
