# L5R 5E — Winter's Embrace (.arc)
# Structure of "Winter's Embrace: An Adventure at the Winter Court" (FFG, product
# L5R09). GM narrative and read-aloud text live in l5r5e-0.5-winters-embrace.lore;
# the cast NPCs in l5r5e-0.5-winters-embrace-cast.ttrpg. The adventure uses the
# players' own Winter Court characters — there are no pregens. Poster/calendar
# and punchboard components ship with the box and are referenced, not reproduced.

ARC "winters-embrace" EXTENDS "l5r5e" {
    NAME "Winter's Embrace"
    SUBTITLE "An Adventure at the Winter Court"
    VERSION "0.5.4"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "Winter's Embrace (Fantasy Flight Games, 2019 — product L5R09; ISBN 978-1-63344-360-0)"
    LEAD_WRITER "Alexis Dykema; written by Katrina Ostrander"
    DESCRIPTION "Winter's Embrace is an adventure for the Legend of the Five Rings Roleplaying Game. Players should not read material past this point. Over the course of this adventure, the player characters must navigate the dangerous political currents of the Winter Court at Kyūden Doji, lest they find themselves trapped in the whirlpool of competing political schemes of the traditional Crane Clan, the unconventional Mantis Clan, and the allies and enemies of both. The reputations of both clans are at stake, as is the identity of the future Empress."

    THEMES ["Winter is for politics", "Tradition (Crane) versus ambition (Mantis)", "The making — or unmaking — of an Empress", "Investigation and intrigue over violence", "Schemes within schemes (Lion, Kolat, spurned lovers)"]

    TONE "Courtly intrigue: tea ceremonies, poetry competitions, a Kabuki play, and a Game of Letters, over a two-week span of the Winter Court"
    PLAYER_COUNT "The players' own Winter Court characters (no pregens)"
    SETTING "Kyūden Doji, 1122 by the Isawa Calendar; the Winter Court hosting the Emperor, celebrating Doji Hotaru's ascension as Crane Clan Champion"
    SUMMARY "The year is 1122 of the Isawa Calendar. It has been two years since a terrible tsunami struck Crane lands, and one year since a massive typhoon hit the southern coast. The once high-and-mighty Crane have begun to feel the pain of two successive failed harvests, although based upon the beauty and marvels on display at this year's Winter Court, a guest could scarcely guess the Crane had fallen on hard times. For the Crane, it is imperative that they continue to seem unaffected. If the Crane Clan falters, the Lion Clan is waiting to swoop in and reclaim the Osari Plains and the city of Toshi Ranbo, which have been contested for generations.\n\nTo that end, the Lion Clan seeks to drive a wedge between its enemy––the Crane––and the Mantis. The Crane and Mantis have strained relations—the Crane suspect the Mantis are behind several pirate attacks on their coast, while the Mantis are frustrated with the Crane's traditionalism. The Lion's Ikoma family, namely Ambassador Ikoma Ujiaki, knows the Lion Clan can benefit from inflaming tensions between the Crane and Mantis Clans. To foster hostilities, an Ikoma shinobi forged an invitation for the Mantis Clan to attend the Winter Court at Kyūden Doji, the Esteemed Palaces of the Crane. The Imperial Herald—who issues invitations on the host's behalf and received the Mantis' acceptance letter—convinced the Emperor to add the Mantis to the guest list rather than publicly shame them. With the Mantis' presence at the court secured, the Lion hope things will naturally fall apart between the Mantis and Crane. What they do not realize is the extent of the Mantis' opportunism.\n\nTo further complicate these tensions, the crown prince will soon achieve his gempuku and be betrothed. That the Emperor has chosen to winter with the Crane this year is a favorable sign toward the Doji family, who hope one of their own will become the future Empress. However, the Crane are not the only clan seeking to install one of their daughters in the house of Hantei. The Mantis hope to seize the stage at the Winter Court to put forward one of their own for that role.\n\nThe adventure begins with an invitation to tea with the venerable Kakita Ryoku, a courtier of the Crane. Ryoku humbly requests that the PCs determine why and how the Mantis were invited to the Winter Court, as they were not on the original guest list as far as she knows. If the PCs do this for her—and track down the invitation used to invite the Mantis—they will curry great respect with the Crane Clan, and Ryoku will owe each PC or their daimyō a favor. As they conduct their investigation, the PCs must decide whom they can trust and whom they should avoid. In the process, the PCs are forced to balance the fine arts of negotiation, subterfuge, and even potentially romance.\n\nAt the end of Act II, the PCs discover the real game being played—that of determining the future Empress. In a bold move that could further their ambition to become a great clan, the Mantis put forth their own candidate for the future bride of the crown prince: none other than Yoritomo's niece, the Lady Magami. At the same time, Kakita Ryoku is working to secure the betrothal of Doji Chiyoe, second cousin to Doji Hotaru, to the Emperor's heir. The very suggestion that the Mantis are trying to betroth Lady Magami to the crown prince is scandalous, since the role of Empress is considered far above their station. The PCs can expose the Mantis' ambitions to the court and humiliate their contender during the Kabuki production of The Tale of the Fisherman's Daughter, set to be performed during the second week. Alternatively, the PCs can shake up the current cast and improvise, instead persuading the Emperor to consider Lady Magami—or another—for the role of Empress. A duel erupts over the casting of the play's central female character, Doji Mioko, and the PCs may find themselves with new friends or enemies."

    # ─────────────────────────────────────────────
    # ACT STRUCTURE (a two-week span of the Winter Court)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Act I: Storms Roll Ashore" {
            SCENES ["Day 1: A Tea Ceremony Fit for an Empress", "The Mantis Invitation", "The Game of Letters", "The Poetry Competition"]
            DESCRIPTION "In the first act of the adventure, the PCs are tasked with finding out who invited the Mantis to the Emperor's Court at Kyūden Doji. However, very few people know how the invitation got sent, and those who do want to keep the truth hidden. If the PCs fail, they will lose their opportunity to raise their standing with Kakita Ryoku and the Crane Clan. As the PCs begin to navigate the political currents of the Winter Court, they find themselves swept into an even greater intrigue than the controversial invitation of the Mantis Clan."

            # Competitors' Scores (page 16): pre-set NPC results for the Compose a
            # Poem intrigue in the Poetry Competition, so the GM need not roll them.
            # Columns are the five artisan approaches (ring in parentheses).
            RESULTS_TABLE "Competitors' Scores (Poetry Competition)" {
                COLUMNS ["Character", "Recall (Earth)", "Charm (Water)", "Invent (Fire)", "Refine (Air)", "Attune (Void)", "Total"]
                ROW [#3Behf4OwSDkdG4lc375iqc ^"Ikoma Rumiko", 0, 2, 1, 1, 0, 4]
                ROW [#MwIHCAnkwj67O51GHcL9ru ^"Doji Chiyoe", 1, 1, 1, 2, 1, 6]
                ROW [#2sbLoahW5crxLE2IifZ6le ^"Lady Magami", 1, 3, 2, 0, 1, 7]
                ROW [#dvZJLaCOXw6FWIuMlQ5f21 ^"Otomo Koryusai", 1, 0, 2, 1, 0, 4]
                ROW [#zdhVuywGJSCX9U6hdRwmq1 ^"Doji Hatsuhina", 1, 2, 1, 2, 0, 5]
            }
        }
        PART 2 "Act II: The Tale of the Fisherman's Daughter" {
            SCENES ["Ryoku's New Request", "Casting the Play (Doji Shigeru / Lady Shike)", "The Kabuki Performance", "The Emperor's Impression"]
            DESCRIPTION "Depending on what the PCs achieved in the first week of the adventure, they may have uncovered the truth behind the Mantis' invitation and their current motives. The PCs have another few days to try to wrap up their investigation before the point becomes moot. Kakita Ryoku is savvy enough to understand the play the Mantis are making in introducing Lady Magami at this Winter Court, so her new goal becomes shaming Magami to undermine the Mantis' attempts to secure the betrothal. No matter whether the PCs side with Ryoku or betray her, relations between the Crane and Mantis will be soured for a generation."
        }
        PART 3 "Conclusion & Rewards" {
            DESCRIPTION "Depending on whether Lady Magami performed well in her role as Mioko, the Emperor may be willing to consider her as a potential bride for his son. Nothing is announced publicly at this time, but the matter can be explored by the group in subsequent Winter Court adventures, or further along in their campaign.\n\nWith the curtain closing on this chapter of the Winter Court, the GM should reward each player for their character's actions and successes:\n\n4 XP: Disgracing or elevating the actor cast as Mioko in The Tale of the Fisherman's Daughter\n\n2 XP: Replacing Lady Shike with another actor for the part of Mioko\n\n2 XP: Uncovering the identity of the Mantis invitation forger\n\n2 XP: Acquiring a copy of the Mantis Clan invitation, whether they had it stolen from them or not\n\n2 XP: Uncovering the Mantis plot to marry Lady Magami to the crown prince before Day 8\n\n2 XP: Placing in the poetry competition\n\n2 XP: Capturing the shinobi\n\n1 XP: Competing in the poetry competition\n\n1 XP: Participating in the performance of The Tale of the Fisherman's Daughter\n\n1 XP: Writing at least three letters as part of the Game of Letters (repeatable)"
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        #qW8t8T3w2xVTWcc6ebUgqz ^"Kyūden Doji" DEF {
            TYPE "Palace"
            DESCRIPTION "The Esteemed Palaces of the Crane, host to this year's Winter Court and the Emperor's retinue, celebrating Doji Hotaru's ascension. Home to the main court chamber, the Imperial guesthouse, the Crane and Mantis guesthouses, the floating teahouse, the theater, and the Fantastic Gardens of the Crane."
            NPCS [#zdhVuywGJSCX9U6hdRwmq1 ^"Doji Hatsuhina", #kssCuIG1ODlghakgpPeBrA ^"Kakita Ryoku", #3Behf4OwSDkdG4lc375iqc ^"Ikoma Rumiko", #PbvEIuEOUj92dRLC7aCgdI ^"Miya Satoshi", #dvZJLaCOXw6FWIuMlQ5f21 ^"Otomo Koryusai", #0QEZBFPqxUdSWa4K4SVWCE ^"Susano-o no Izen", #2sbLoahW5crxLE2IifZ6le ^"Lady Magami"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-winters-embrace-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        CRANE [#kssCuIG1ODlghakgpPeBrA ^"Kakita Ryoku", #zdhVuywGJSCX9U6hdRwmq1 ^"Doji Hatsuhina", #MwIHCAnkwj67O51GHcL9ru ^"Doji Chiyoe", #Xp0SZHXg3vuXcHndJCs3wM ^"Doji Shigeru", #9uWRT00R8UrX11XsyngoLA ^"Asahina Takako"]
        MANTIS [#dyN6riLcxqCLsj2Zx50J6f ^"Lord Yoritomo", #2sbLoahW5crxLE2IifZ6le ^"Lady Magami", #0QEZBFPqxUdSWa4K4SVWCE ^"Susano-o no Izen"]
        IMPERIAL [#PbvEIuEOUj92dRLC7aCgdI ^"Miya Satoshi", #dvZJLaCOXw6FWIuMlQ5f21 ^"Otomo Koryusai"]
        LION [#3Behf4OwSDkdG4lc375iqc ^"Ikoma Rumiko"]
    }

    # A Winter Court adventure for the players' own characters, so there is no
    # PARTY / pregen roster.
}
