# L5R 5E — Blood of the Lioness (.arc)
# Structure of "Blood of the Lioness: An Adventure at the Battle of Snow Plain"
# (L5R15DLC01a, FFG) — a three-part, military-themed Lion Clan adventure. GM
# narrative and the verbatim boxed read-aloud text live in
# l5r5e-0.5-blood-of-the-lioness.lore; the cast (Matsu Sakura, Kitsu Yū, Shinjo
# Kamu, plus profile-by-reference NPCs) in l5r5e-0.5-blood-of-the-lioness-cast.ttrpg;
# the new invocation (Ancestral Army) and distinction (Student of Akodo) in
# l5r5e-0.5-blood-of-the-lioness-mechanics.ttrpg. The adventure uses the players'
# own PCs, who in Part Two also take the roles of historical figures (premade
# "Advisors" or PC-built historical selves).

ARC "blood-of-the-lioness" EXTENDS "l5r5e" {
    NAME "Blood of the Lioness"
    VERSION "0.5.2"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "Blood of the Lioness: An Adventure at the Battle of Snow Plain (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "Blood of the Lioness is a military-themed adventure for the Legend of the Five Rings Roleplaying Game in which the player characters (PCs) have the opportunity to experience firsthand the struggles of war, honor, and sacrifice alongside the formidable Lion Clan. Serving as the Right Hand of the Emperor and revered as some of the Empire's most accomplished warriors and historians, the Lion are often viewed as an unstoppable force. During the course of this adventure, however, PCs will hear and experience conflicting stories about a critical battle in the Lion's past, and the truths they discover could change how the past is understood and how the future unfolds. The sourcebook Fields of Victory is an excellent resource for those interested in expanding this adventure or continuing it after its conclusion."

    THEMES ["War, honor, and sacrifice alongside the Lion Clan", "History as a contested narrative — truth versus harmony", "Ancestry and the bond between a samurai and their forebears", "The awakening of a latent ancestral summoner"]

    TONE "Military drama and courtly intrigue: an investigation among archivists, a four-day mass battle relived as a vision, and an arbitration that can prevent or ignite a war"
    PLAYER_COUNT "The players' own characters; in Part Two they also play historical figures (premade Advisors, page 12, or their own historical selves)"
    SETTING "The Castle of the Swift Sword (home of the Akodo War College), in the summer of 1123; and, through a vision, the Battle of Snow Plain in 820"
    SUMMARY "The PCs are summoned to the Akodo War College to gather information on a dispute over a diamond mine in Unicorn territory that the Scorpion claim was promised to them for their aid at the Battle of Snow Plain in 820. Reporting to the magistrate Kitsuki Kāgi, they investigate the contradictory records of the winter of 820 in the Akodo Military Library and the Ikoma Hall of Scribes, and are thrust into a vision of the battle. In Part Two they play active roles across the four days of the Battle of Snow Plain, uncovering that the Scorpion emissary Shosuro Amane made a secret deal with the Unicorn (and that the shinobi Shosuro Yasu, not the Lion, caused the historian Ikoma Hideri's death), and witnessing the Kitsu warrior Yū awaken as an ancestral summoner. In Part Three they return to the present and arbitrate before Kitsuki Kāgi and the descendants Shosuro Aishi and Ide Tsubame, using what they learned to place the mine with the Unicorn, the Scorpion, the Empire, or another faction — preventing or igniting a fresh war."

    # ─────────────────────────────────────────────
    # ADVENTURE STRUCTURE (three parts)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part One: The Official Record (Castle of the Swift Sword, 1123)" {
            SCENES ["A Warm Welcome (Kitsu Yayoi)", "A Three-Hour Tour (the parade grounds; Akodo Atsushi)", "Castle of the Swift Sword", "Akodo War College", "The Military Library (Kitsu Ayako; the official scroll; Kitsu Yū's shade)", "Exploring the Library", "The Halls", "The Ancestral Shrine (Kitsu Taigen)", "The Ikoma Hall of Scribes", "Akodo's Leadership", "Meeting the Daimyō (Kitsu Takeko)"]
            DESCRIPTION "The adventure begins with the PCs arriving at the Castle of the Swift Sword, the home of the Akodo War College, in the early afternoon. In the default version of this adventure, the PCs are assumed to be Emerald Magistrates. For groups with different motives, see Conflicting Motives on the next page. As magistrates, the PCs are tasked with investigating the history of the Battle of Snow Plain by researching all available written records and utilizing the oral traditions of the Ikoma. By the end of their review, they should have enough evidence to determine whether the Scorpion Clan has a legitimate claim to the diamond mine in Unicorn territory."

            # Clan-specific and generic entry hooks are detailed in the .lore
            # (Player Character Motives, page 3).
        }

        PART 2 "Part Two: The Vision (Battle of Snow Plain, 820)" {
            SCENES ["Historical Figures / The Advisors", "Clan Motives (820)", "Overview of the Battle (four days)", "Day 1 — Playing Sakura's Advisors; Offering Advice; The First Sparks (Test Their Mettle)", "Day 1 — The Generals Converse; Seizing the Hilltop", "Day 2 — The Snowstorm; Spy in the Camp; The Five Pillars", "Day 3 — Unicorn Reinforcements; Yū's Intervention (ancestral summoning awakens)", "Day 4 — Imperial Emissary; Amane's Betrayal Revealed; The Duel"]
            DESCRIPTION "In this part of the adventure, the PCs experience the Battle of Snow Plain in 820, enabling them to witness the events for themselves. Whether what the PCs do and say during the vision affects Rokugani history is up to the GM (and might even be ambiguous, if the GM wishes to run it this way, as many \"changes\" could also be attributed to errors in the historical record), but the consequences of their experience become apparent when completing their mission in the present (see Living in the Past on page 2). Major events during the vision are inevitable, but PCs should feel like their decisions still make a difference."

            # Momentum thresholds toward the strategic objective 'Test Their Mettle'
            # equal Shinjo Kamu's focus (7). The Maintain the General's Favor ongoing
            # social objective (all leaders start at 4 momentum) gates the PCs'
            # influence over Sakura — see the .lore.
        }

        PART 3 "Part Three: The Truth (Castle of the Swift Sword, 1123)" {
            SCENES ["Visionaries (returning from the vision)", "Status and Truth", "After the Vision — Preparing for the Arbitration", "Gather Witness Testimony", "Acquire Written Testimony", "Forge Written Testimony", "Other Clever Plots", "Rendering Judgment (Kitsuki Kāgi, Shosuro Aishi, Ide Tsubame arrive)", "Running the Intrigue", "The Duel (if carried from the vision)", "Player Rewards / Choosing Sides"]
            DESCRIPTION "Once the PCs have returned to the present from the vision, they must decide how they'll handle the information they discovered throughout Part Two. Depending on their affiliations and personal motivations, the way each PC approaches the final intrigue may differ. Whether they change history while in the vision or not, experiencing the battle firsthand may have made them see the past differently. In this section, the PCs will participate in an intrigue that determines how their new information changes history, and which of the Great Clans benefits from it!"

            # Arbitration social objectives (momentum thresholds), reproduced verbatim.
            INTRIGUE_TABLE "Arbitration Social Objectives (Rendering Judgment)" {
                ^"Appeal to Kāgi — the Unicorn or the Scorpion" DEF {
                    ^"Momentum Points Needed" STRING "16"
                    ^"Upon Completion" STRING "Kāgi rules in favor of either the Unicorn or Scorpion based on the outcome."
                }
                ^"Appeal to Kāgi — Imperial Control" DEF {
                    ^"Momentum Points Needed" STRING "14"
                    ^"Upon Completion" STRING "Kāgi rules in favor of putting the mine under Imperial control."
                }
                ^"Appeal to Kāgi — Another Faction" DEF {
                    ^"Momentum Points Needed" STRING "24"
                    ^"Upon Completion" STRING "Kāgi rules in favor of the chosen Great Clan, Minor Clan, other faction, or even an individual."
                }
                ^"Appeal to Aishi or Tsubame to Drop Their Clan's Claim" DEF {
                    ^"Momentum Points Needed" STRING "18"
                    ^"Upon Completion" STRING "Aishi or Tsubame relinquishes their clan's claim to the mine."
                }
                ^"Discredit Aishi, Tsubame, or Someone Else" DEF {
                    ^"Momentum Points Needed" STRING "Cause the target to become Compromised"
                    ^"Upon Completion" STRING "Aishi or Tsubame loses up to 8 momentum points they have acquired so far. However, they are not removed from the scene, and can continue trying to accrue momentum points."
                }
            }
        }
    }

    # ─────────────────────────────────────────────
    # CAST ROSTER (statblocks in the -cast file; narrative figures in the .lore/.codex)
    # ─────────────────────────────────────────────
    PARTY {
        NOTE "When Part Two arrives, the GM should discuss with the players whether they would rather use premade characters (see The Advisors on page 12) or make up their own unique historical characters for this part. Some players might relish the chance to try a new school or roleplay a character concept wildly different from their normal character. To reinforce the theme of ancestry, the players might consider whether and how their two characters could be related. If using the rules for Legacies from the Blood of the Lioness online supplement, the GM can also tell the players that they have a chance to acquire a Legacy, a special new advantage linking their historical character to their contemporary one."
        CAST_FILE "l5r5e-0.5-blood-of-the-lioness-cast.ttrpg"
        ADVISORS_FILE "l5r5e-0.5-blood-of-the-lioness-pregens.actor"
        ADVISORS ["Matsu Sugi", "Akodo Heihachi", "Ikoma Tsurayui", "Kitsu Ryōma", "Matsu no Shion Yui", "Matsu no Shion Nori"]
        ADVERSARIES ["Matsu Sakura", "Kitsu Yū", "Shinjo Kamu"]
        PROFILE_NPCS ["Shosuro Amane", "Matsu Hisoka", "Ancestral Warriors"]
        NARRATIVE_NPCS ["Kitsu Ayako", "Kitsu Taigen", "Kitsu Takeko", "Kitsu Yayoi", "Akodo Atsushi", "Ikoma Ichigo", "Ikoma Hideri", "Shosuro Yasu (impersonating Akodo Kamayoko)", "Moto Ghazan", "Matsu no Shion Nori", "Yui", "Ikoma Kojima (Lion Champion)", "Kitsuki Kāgi (magistrate)", "Shosuro Aishi", "Ide Tsubame"]
    }
}
