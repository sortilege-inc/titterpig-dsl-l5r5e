# L5R 5E — Winter's Embrace (.arc)
# Structure of "Winter's Embrace: An Adventure at the Winter Court" (FFG, product
# L5R09). GM narrative and read-aloud text live in l5r5e-0.4-winters-embrace.lore;
# the cast NPCs in l5r5e-0.4-winters-embrace-cast.ttrpg. The adventure uses the
# players' own Winter Court characters — there are no pregens. Poster/calendar
# and punchboard components ship with the box and are referenced, not reproduced.

ARC "winters-embrace" EXTENDS "l5r5e" {
    NAME "Winter's Embrace"
    SUBTITLE "An Adventure at the Winter Court"
    VERSION "0.4.1"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Winter's Embrace (Fantasy Flight Games, 2019 — product L5R09; ISBN 978-1-63344-360-0)"
    LEAD_WRITER "Alexis Dykema; written by Katrina Ostrander"
    DESCRIPTION "An adventure for the Legend of the Five Rings Roleplaying Game in which the PCs navigate the political currents of the Winter Court at Kyūden Doji, caught between the traditional Crane, the unconventional Mantis, and the schemes of their allies and enemies. The reputations of both clans are at stake, as is the identity of the future Empress."

    THEMES ["Winter is for politics", "Tradition (Crane) versus ambition (Mantis)", "The making — or unmaking — of an Empress", "Investigation and intrigue over violence", "Schemes within schemes (Lion, Kolat, spurned lovers)"]

    TONE "Courtly intrigue: tea ceremonies, poetry competitions, a Kabuki play, and a Game of Letters, over a two-week span of the Winter Court"
    PLAYER_COUNT "The players' own Winter Court characters (no pregens)"
    SETTING "Kyūden Doji, 1122 by the Isawa Calendar; the Winter Court hosting the Emperor, celebrating Doji Hotaru's ascension as Crane Clan Champion"
    SUMMARY "Two failed harvests have quietly weakened the Crane, who must appear untroubled while the Lion (through Ambassador Ikoma Ujiaki) works to drive a wedge between the Crane and their strained trade partners, the Mantis — an Ikoma shinobi, Ikoma Rumiko, has even forged the Mantis' invitation to court. Invited to tea by the legendary courtier Kakita Ryoku, the PCs are asked to uncover who invited the Mantis, and are drawn into the deeper contest over who will be betrothed to the crown prince: the traditional Crane candidate Doji Chiyoe, or the Mantis' Lady Magami. Across a poetry competition, a Game of Letters, and a Kabuki performance of The Tale of the Fisherman's Daughter, the PCs' choices determine the standing of both clans and the future of the Empress — while the Kolat agent Miya Satoshi stirs chaos beneath it all."

    # ─────────────────────────────────────────────
    # ACT STRUCTURE (a two-week span of the Winter Court)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Act I: Storms Roll Ashore" {
            SCENES ["Day 1: A Tea Ceremony Fit for an Empress", "The Mantis Invitation", "The Game of Letters", "The Poetry Competition"]
            DESCRIPTION "Invited to tea at the floating teahouse by Kakita Ryoku (received by her apprentice Doji Chiyoe), the PCs are asked to discover who invited the Mantis to the Emperor's court — a truth those who know it want hidden. Investigating across the first week's happenings (the Game of Letters, the poetry competition where Lady Magami debuts), the PCs trace the forged invitation to the disguised Lion shinobi Ikoma Rumiko, and are swept into the greater intrigue of the future Empress."

            # Competitors' Scores (page 9): pre-set NPC results for the Compose a
            # Poem intrigue in the Poetry Competition, so the GM need not roll them.
            # Columns are the five artisan approaches (ring in parentheses).
            RESULTS_TABLE "Competitors' Scores (Poetry Competition)" {
                ^"Ikoma Rumiko" DEF {
                    ^"Recall (Earth)" INTEGER 0
                    ^"Charm (Water)" INTEGER 2
                    ^"Invent (Fire)" INTEGER 1
                    ^"Refine (Air)" INTEGER 1
                    ^"Attune (Void)" INTEGER 0
                    ^"Total" INTEGER 4
                }
                ^"Doji Chiyoe" DEF {
                    ^"Recall (Earth)" INTEGER 1
                    ^"Charm (Water)" INTEGER 1
                    ^"Invent (Fire)" INTEGER 1
                    ^"Refine (Air)" INTEGER 2
                    ^"Attune (Void)" INTEGER 1
                    ^"Total" INTEGER 6
                }
                ^"Lady Magami" DEF {
                    ^"Recall (Earth)" INTEGER 1
                    ^"Charm (Water)" INTEGER 3
                    ^"Invent (Fire)" INTEGER 2
                    ^"Refine (Air)" INTEGER 0
                    ^"Attune (Void)" INTEGER 1
                    ^"Total" INTEGER 7
                }
                ^"Otomo Koryusai" DEF {
                    ^"Recall (Earth)" INTEGER 1
                    ^"Charm (Water)" INTEGER 0
                    ^"Invent (Fire)" INTEGER 2
                    ^"Refine (Air)" INTEGER 1
                    ^"Attune (Void)" INTEGER 0
                    ^"Total" INTEGER 4
                }
                ^"Doji Hatsuhina" DEF {
                    ^"Recall (Earth)" INTEGER 1
                    ^"Charm (Water)" INTEGER 2
                    ^"Invent (Fire)" INTEGER 1
                    ^"Refine (Air)" INTEGER 2
                    ^"Attune (Void)" INTEGER 0
                    ^"Total" INTEGER 5
                }
            }
        }
        PART 2 "Act II: The Tale of the Fisherman's Daughter" {
            SCENES ["Ryoku's New Request", "Casting the Play (Doji Shigeru / Lady Shike)", "The Kabuki Performance", "The Emperor's Impression"]
            DESCRIPTION "Ryoku asks the PCs to arrange for Lady Magami to take the lead role of Doji Mioko in the Kabuki production the Emperor will attend — ostensibly to help her, but with an undertone: set her up to fail. Working with the director Doji Shigeru (the secret Lady Shike) and the cast (including Rumiko as the island spirit), the PCs shape Magami's debut before the Emperor, deciding whether to advance or sabotage the Mantis' bid — and whose Empress candidate prevails."
        }
        PART 3 "Conclusion & Rewards" {
            DESCRIPTION "Rewards reflect the PCs' achievements: uncovering the Mantis-invitation forger, acquiring a copy of the invitation, uncovering the Mantis plot to marry Lady Magami to the crown prince before Day 8, placing in the poetry competition, capturing the shinobi, and playing the Game of Letters. The standing of the Crane and Mantis — and the identity of the future Empress — turn on the PCs' choices. Further intrigue continues in the downloadable supplement The Scroll or the Blade."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Kyūden Doji" DEF {
            TYPE "Palace"
            DESCRIPTION "The Esteemed Palaces of the Crane, host to this year's Winter Court and the Emperor's retinue, celebrating Doji Hotaru's ascension. Home to the main court chamber, the Imperial guesthouse, the Crane and Mantis guesthouses, the floating teahouse, the theater, and the Fantastic Gardens of the Crane."
            NPCS [^"Doji Hatsuhina", ^"Kakita Ryoku", ^"Ikoma Rumiko", ^"Miya Satoshi", ^"Otomo Koryusai", ^"Susano-o no Izen", ^"Lady Magami"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-winters-embrace-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        CRANE [^"Kakita Ryoku", ^"Doji Hatsuhina", ^"Doji Chiyoe", ^"Doji Shigeru", ^"Asahina Takako"]
        MANTIS [^"Lord Yoritomo", ^"Lady Magami", ^"Susano-o no Izen"]
        IMPERIAL [^"Miya Satoshi", ^"Otomo Koryusai"]
        LION [^"Ikoma Rumiko"]
    }

    # A Winter Court adventure for the players' own characters, so there is no
    # PARTY / pregen roster.
}
