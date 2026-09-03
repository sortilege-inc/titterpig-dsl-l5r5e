# L5R 5E — Mask of the Oni (.arc)
# Structure of "Mask of the Oni: An Adventure in the Shadowlands" (FFG, product
# L5R07). GM narrative and read-aloud text live in l5r5e-0.4-mask-of-the-oni.lore;
# the cast (two full statblocks + the Crab escort leader) in
# l5r5e-0.4-mask-of-the-oni-cast.ttrpg. The adventure uses the players' own
# characters — there are no pregens; Crab-connected PCs are ideal. Its villain
# Kitsu Sokori is first introduced in the Dark Tides adventure (Game Master's Kit).

ARC "mask-of-the-oni" EXTENDS "l5r5e" {
    NAME "Mask of the Oni"
    VERSION "0.4"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Mask of the Oni: An Adventure in the Shadowlands (Fantasy Flight Games, product L5R07)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "An adventure for the Legend of the Five Rings Roleplaying Game, set in 1123, in which the PCs leave the relative security of the Emerald Empire and pass through the lands and defenses of the Crab Clan into the Shadowlands, to the ruins of Shiro Hiruma (Daylight Castle) — the once-proud stronghold of the Hiruma. There they must face dangerous opponents, stark horror, and their deepest fears to stop the mahō-tsukai Kitsu Sokori from reversing Hiruma Masami's ancient soul-saving ritual and forging the fallen Hiruma into a corrupted army."

    THEMES ["The vigil of the Crab against the Shadowlands", "Honor and sacrifice — Hiruma Masami's ritual", "Blood magic and the corruption of the fallen", "Facing one's deepest fears in a defiled place", "A castle's burning shame reclaimed"]

    TONE "Shadowlands horror: a perilous journey past the Kaiu Wall into a Tainted, shifting hellscape, culminating in a defiled ruin and a battle against a mahō-tsukai and an oni"
    PLAYER_COUNT "The players' own characters (no pregens); Crab-connected PCs ideal"
    SETTING "The Crab lands, the Kaiu Wall, and the Shadowlands beyond, to the ruins of Shiro Hiruma; the year 1123"
    SUMMARY "Centuries ago the oni Atsumari no Oni led the Shadowlands assault that felled Shiro Hiruma; the shugenja Hiruma Masami sacrificed her life and her very name to enact a ritual — sealed by three keys — that sent the souls of the last Hiruma defenders to Yume-dō, safe from corruption, and banished the oni to Jigoku. Now the mahō-tsukai Kitsu Sokori — a Lion Kitsu fallen to blood magic — has pieced together that history and journeys to the ruined castle to assemble the three keys, unravel Masami's ritual, release the Hiruma souls, and strike a deal with the returning Atsumari no Oni to corrupt them into her army. The PCs travel through the Crab lands (Part Two), brave the Shadowlands (Part Three), explore the defiled ruin and recover the keys and the stolen maps of Yasuki Keiji (Part Four), and confront Sokori and the oni in a final battle for the souls of the Hiruma (Part Five)."

    # ─────────────────────────────────────────────
    # ACT STRUCTURE (five Parts)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part One: Adventure Background" {
            SCENES ["The Fall of Daylight", "The Fate of the Hiruma", "Hiruma Masami's Ritual and the Three Keys", "The Involvement of Kitsu Sokori", "The Dark Tides Connection"]
            DESCRIPTION "The historical and secret background (much of it GM-only). In the eighth century the oni Atsumari no Oni felled Shiro Hiruma; Hiruma Masami — born of the Kaikoga family of the Moth Clan, married into the Hiruma — enacted a complex ritual, sealed by three keys and empowered by her surrendered name, that sent the last defenders' souls to Yume-dō and banished the oni to Jigoku, sacrificing herself to Yume-dō in the process. The three keys can also unravel the ritual: the final passage of Masami's ritual spoken aloud, the wakizashi of the Hiruma daimyō, and Masami's name (recorded only on a hidden scroll in the castle library). Kitsu Sokori, introduced in Dark Tides, seeks to exploit all of this."
        }
        PART 2 "Part Two: Arriving at the Kaiu Wall" {
            SCENES ["The Kaiu Wall", "Yasuki Ippei, Crooked Quartermaster", "Kaiu Riko, Gruff Engineer", "Convincing Hida Hachirō", "A Crab Escort (Hida Nagahide)"]
            DESCRIPTION "The PCs reach the hundred-foot Kaiu Wall amid the aftermath of a recent battle. They must secure supplies (jade and food) from the furtive quartermaster Yasuki Ippei, may learn the castle's history from the gruff engineer Kaiu Riko, and must convince the Crab (Hida Hachirō, with the Scorpion Bayushi Tsubasa as a fallback) to let them venture beyond the Wall — gaining a Crab escort of bushi under the veteran gunsō Hida Nagahide."
        }
        PART 3 "Part Three: Into the Shadowlands" {
            SCENES ["Through the Gate", "The Shifting Landscape", "Shadowlands Horrors", "The Journey to Daylight Castle"]
            DESCRIPTION "Nagahide (or Bayushi Tsubasa) leads the PCs beyond the Wall into the Shadowlands for the three-day journey to Shiro Hiruma. The perversely fluid landscape, the Taint, and Shadowlands creatures (goblins, the animate dead, and worse) test the PCs — and demonstrate the horrors that make the Crab's vigil eternal — without overwhelming them before they reach the castle. (Something in the wastes also hunts nezumi blood — a hook toward the Knotted Tails tribe.)"
        }
        PART 4 "Part Four: Shadow of Daylight" {
            SCENES ["Arrival at Shiro Hiruma", "Exploring the Defiled Ruin", "The Library and Masami's Scroll", "Recovering the Three Keys", "The Maps of Yasuki Keiji"]
            DESCRIPTION "Shiro Hiruma / Daylight Castle is a bleak, Taint-warped ruin, ominous and confusing even for Crab samurai. Exploring it, the PCs recover the three keys to Masami's ritual — including her name, found only on a scroll hidden in the library — and may retrieve the stolen maps of Yasuki Keiji, which drew them into the mission. Throughout, Kitsu Sokori and her undead work toward ending Masami's ritual before the PCs can stop her."
        }
        PART 5 "Part Five: The Battle for the Souls of Hiruma" {
            SCENES ["Sokori's Ritual", "The Course of the Battle (Sokori and Atsumari no Oni)", "Freeing the Souls of Hiruma", "Winning the Day / Failure Is an Option"]
            DESCRIPTION "The climax. Sokori works to end Masami's ritual and release the Hiruma souls from Yume-dō, calling on Atsumari no Oni — which may ally with her or be a hostile third party — to corrupt them into her army. The PCs, engaged by undead servants, must stop her; assembling all three keys lets them undo the ritual (a TN 4 Theology check, Void 2) and free the Hiruma souls to their judgment in Meido. Victory sends the PCs to Winning the Day; defeat, capture, or retreat to Failure Is an Option. Sokori is expected to die, but the GM may let her escape as a future antagonist."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Kaiu Wall" DEF {
            TYPE "Wall"
            DESCRIPTION "One hundred feet of dark stone battlements, redoubts, and watchtowers standing between Rokugan and the Shadowlands — the eternal vigil of the Crab. The PCs pass through it (and its heavily defended gate) to begin their journey."
            NPCS [^"Hida Nagahide"]
        }
        ^"Shiro Hiruma" DEF {
            TYPE "Castle"
            DANGER_LEVEL "Shadowlands ruin (heavily Tainted)"
            DESCRIPTION "Daylight Castle, the ancestral seat of the Hiruma family, fallen to the Shadowlands in the eighth century and a bleak, Taint-warped ruin ever since — gaping holes where walls once stood, ominous and confusing even for Crab samurai. It holds the library with Masami's hidden scroll, the three keys, and the site of the final confrontation."
            NPCS [^"Kitsu Sokori", ^"Atsumari no Oni"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-mask-of-the-oni-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ANTAGONISTS [^"Kitsu Sokori", ^"Atsumari no Oni"]
        ALLIES [^"Hida Nagahide"]
    }

    # A Shadowlands adventure for the players' own characters, so there is no
    # PARTY / pregen roster. The historical figures Hiruma Masami, Yasuki Keiji,
    # and the Maw, and the Crab-lands interaction NPCs (Kaiu Riko, Yasuki Ippei,
    # Bayushi Tsubasa, Hida Hachirō), live in the .lore / .codex.
}
