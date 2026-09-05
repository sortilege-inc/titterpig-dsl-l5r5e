# L5R 5E — Blood of the Lioness (.arc)
# Structure of "Blood of the Lioness: An Adventure at the Battle of Snow Plain"
# (L5R15DLC01a, FFG) — a three-part, military-themed Lion Clan adventure. GM
# narrative and the verbatim boxed read-aloud text live in
# l5r5e-0.4-blood-of-the-lioness.lore; the cast (Matsu Sakura, Kitsu Yū, Shinjo
# Kamu, plus profile-by-reference NPCs) in l5r5e-0.4-blood-of-the-lioness-cast.ttrpg;
# the new invocation (Ancestral Army) and distinction (Student of Akodo) in
# l5r5e-0.4-blood-of-the-lioness-mechanics.ttrpg. The adventure uses the players'
# own PCs, who in Part Two also take the roles of historical figures (premade
# "Advisors" or PC-built historical selves).

ARC "blood-of-the-lioness" EXTENDS "l5r5e" {
    NAME "Blood of the Lioness"
    VERSION "0.4.1"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Blood of the Lioness: An Adventure at the Battle of Snow Plain (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "A military-themed Lion Clan adventure in which the PCs investigate a centuries-old dispute over a diamond mine, are drawn into a vision of the Battle of Snow Plain (820), and return to the present to arbitrate its consequences. The sourcebook Fields of Victory expands and continues it."

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
            DESCRIPTION "Arriving as Emerald Magistrates (or by clan-specific motive), the PCs are welcomed by the advisor Kitsu Yayoi, toured past the drill sergeant Akodo Atsushi, and left in the military library with the peasant-born librarian Kitsu Ayako — who is unknowingly shadowed by the restless shade of her ancestor Kitsu Yū. The official scroll of the Battle of Snow Plain, signed by Yū, omits a crucial truth (Yū's ancestral summoning). Following the historian Ikoma Hideri's assignment record to the Ikoma Hall of Scribes, and prompted by the contradictory histories, the PCs place an offering at the ancestral shrine and are pulled into a vision of the battle."

            # Clan-specific and generic entry hooks are detailed in the .lore
            # (Player Character Motives, page 3).
        }

        PART 2 "Part Two: The Vision (Battle of Snow Plain, 820)" {
            SCENES ["Historical Figures / The Advisors", "Clan Motives (820)", "Overview of the Battle (four days)", "Day 1 — Playing Sakura's Advisors; Offering Advice; The First Sparks (Test Their Mettle)", "Day 1 — The Generals Converse; Seizing the Hilltop", "Day 2 — The Snowstorm; Spy in the Camp; The Five Pillars", "Day 3 — Unicorn Reinforcements; Yū's Intervention (ancestral summoning awakens)", "Day 4 — Imperial Emissary; Amane's Betrayal Revealed; The Duel"]
            DESCRIPTION "The PCs relive the four-day Battle of Snow Plain as historical figures advising the Lion general Matsu Sakura against the Unicorn general Shinjo Kamu, whose Scorpion 'peace envoy' Shosuro Amane is secretly manipulating both sides for a diamond mine. Across a mass battle (strategic objectives, momentum, and the Maintain the General's Favor ongoing social objective), the PCs can uncover a spy in the camp (Shosuro Yasu, impersonating the medic Akodo Kamayoko, who murders the historian Ikoma Hideri), witness Kitsu Yū awaken as an ancestral summoner, and reach a climactic duel — where a PC or advisor stands in for Sakura against Kamu. What they learn here becomes the leverage of Part Three."

            # Momentum thresholds toward the strategic objective 'Test Their Mettle'
            # equal Shinjo Kamu's focus (7). The Maintain the General's Favor ongoing
            # social objective (all leaders start at 4 momentum) gates the PCs'
            # influence over Sakura — see the .lore.
        }

        PART 3 "Part Three: The Truth (Castle of the Swift Sword, 1123)" {
            SCENES ["Visionaries (returning from the vision)", "Status and Truth", "After the Vision — Preparing for the Arbitration", "Gather Witness Testimony", "Acquire Written Testimony", "Forge Written Testimony", "Other Clever Plots", "Rendering Judgment (Kitsuki Kāgi, Shosuro Aishi, Ide Tsubame arrive)", "Running the Intrigue", "The Duel (if carried from the vision)", "Player Rewards / Choosing Sides"]
            DESCRIPTION "Returned to the present with three days before the magistrate Kitsuki Kāgi arrives, the PCs prepare for the arbitration — gathering witness testimony, acquiring or forging written testimony, and pursuing other plots — then argue the case before Kāgi against the Scorpion descendant Shosuro Aishi and the Unicorn descendant Ide Tsubame. The intrigue's social objectives decide whether the mine goes to the Unicorn, the Scorpion, Imperial control, or another faction — and whether the PCs' new knowledge prevents further war or starts one."

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
                    ^"Upon Completion" STRING "Aishi or Tsubame loses up to 8 momentum points acquired so far; they are not removed from the scene and can continue to accrue momentum points."
                }
            }
        }
    }

    # ─────────────────────────────────────────────
    # CAST ROSTER (statblocks in the -cast file; narrative figures in the .lore/.codex)
    # ─────────────────────────────────────────────
    PARTY {
        NOTE "The players use their own characters throughout. In Part Two they also play historical figures — either the premade Advisors (page 12) or their own historical selves — optionally linked to their present PCs via a Legacy (from the external Blood of the Lioness online supplement)."
        CAST_FILE "l5r5e-0.4-blood-of-the-lioness-cast.ttrpg"
        ADVISORS_FILE "l5r5e-0.4-blood-of-the-lioness-pregens.actor"
        ADVISORS ["Matsu Sugi", "Akodo Heihachi", "Ikoma Tsurayui", "Kitsu Ryōma", "Matsu no Shion Yui", "Matsu no Shion Nori"]
        ADVERSARIES ["Matsu Sakura", "Kitsu Yū", "Shinjo Kamu"]
        PROFILE_NPCS ["Shosuro Amane", "Matsu Hisoka", "Ancestral Warriors"]
        NARRATIVE_NPCS ["Kitsu Ayako", "Kitsu Taigen", "Kitsu Takeko", "Kitsu Yayoi", "Akodo Atsushi", "Ikoma Ichigo", "Ikoma Hideri", "Shosuro Yasu (impersonating Akodo Kamayoko)", "Moto Ghazan", "Matsu no Shion Nori", "Yui", "Ikoma Kojima (Lion Champion)", "Kitsuki Kāgi (magistrate)", "Shosuro Aishi", "Ide Tsubame"]
    }
}
