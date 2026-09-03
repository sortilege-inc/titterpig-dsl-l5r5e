# L5R 5E — Imperfect Land (.arc)
# Structure of "Imperfect Land: An Adventure Uncovering the Secrets of the Perfect
# Land Sect" (FFG). GM narrative and read-aloud text live in
# l5r5e-0.4-imperfect-land.lore; the cast (four full statblocks, five profile-based
# leaders, nine conclave delegates) in l5r5e-0.4-imperfect-land-cast.ttrpg. The
# adventure uses the players' own characters — there are no pregens. Dragon and
# Phoenix PCs, and spiritual characters (shugenja, monks), are ideal.

ARC "imperfect-land" EXTENDS "l5r5e" {
    NAME "Imperfect Land"
    VERSION "0.4.1"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Imperfect Land: An Adventure Uncovering the Secrets of the Perfect Land Sect (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "An adventure for the Legend of the Five Rings Roleplaying Game that places the PCs at the heart of a religious conflict: as debate over the unorthodox and controversial Perfect Land Sect threatens to tear the Brotherhood of Shinsei apart, the PCs help shape the spiritual future of Rokugan. Set at the Mountain Song Temple in Dragon lands under the hospitality of Mirumoto Masashige, it moves from a courtly conclave of persuasion, through the arrival of the sect's leader Hige, to a wilderness rescue of the injured Senzai — the reincarnation of Shinsei — and back to a fraught final vote and an assassination attempt."

    THEMES ["Faith versus orthodoxy — the making of a heresy", "The Age of Declining Virtue (Suijindai)", "The reincarnation of Shinsei walking among mortals", "Persuasion and consensus as the real battlefield", "The Kolat steering a religious movement toward rebellion"]

    TONE "A religious-political drama in four parts: a conclave of persuasion, an investigation of doctrine, a wilderness rescue, and a decisive vote shadowed by assassins"
    PLAYER_COUNT "The players' own characters (no pregens); Dragon/Phoenix and spiritual PCs ideal"
    SETTING "The Mountain Song Temple in Dragon lands and the wilderness around it, at a Brotherhood of Shinsei conclave hosted by Mirumoto Masashige"
    SUMMARY "The Brotherhood of Shinsei's annual conclave gathers at the Mountain Song Temple to vote on whether to brand the controversial Perfect Land Sect a False Path — a decision that could fracture the Brotherhood into schism. Acting as guards and clerks, the PCs sway undecided abbots between the anti-sect faction of Abbot Naigen and the pro-sect faction of Abbot Anmoku (Part One), then face the arrival of the sect's humble leader Hige and investigate the sect's origins and founding sutra (Part Two). When the ever-present Mountain Song falls silent, the PCs journey into the wilderness to a tengu ruin, where the tengu Ajari guards the injured Senzai — the reincarnation of Shinsei herself (Part Three). Whether Senzai lives or dies, and how the PCs handle the Kolat merchant Kanbei's assassination attempt, decides the fate of the Perfect Land Sect — and of Rokugan's spiritual future (Part Four)."

    # A hidden hand: the Kolat, through the merchant Kanbei and his Mountain Sect,
    # steer the Perfect Land toward condemning samurai rule and open rebellion.

    # ─────────────────────────────────────────────
    # ACT STRUCTURE (four Parts)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part One: The Brotherhood Gathers" {
            SCENES ["Arrival at the Mountain Song Temple", "A Guide to the Brotherhood", "Swaying the Undecided (Sympathy)", "The Puzzle of the Conclave", "Meeting Naigen or Anmoku"]
            DESCRIPTION "At the Mountain Song Temple, the Brotherhood convenes to vote on whether to declare the Perfect Land Sect a False Path; too little consensus in either direction risks a violent schism. Masashige sets the PCs to work as guards, clerks, and assistants, giving them access to the undecided abbots. Through preparation, persuasion (a Social check against each delegate's Vigilance), blackmail, and tailored arguments, the PCs shift the conclave's Sympathy toward support or condemnation, and may investigate why the conclave is oddly being held in Dragon lands under a bushi host (the sect's adherents lobbied Anmoku, and Naigen interfered to keep the delegation out)."
        }
        PART 2 "Part Two: The Perfect Land Arrives" {
            SCENES ["At the Gate", "Letting Them In / Turning Them Away", "Hige Speaks", "Investigating the Origins", "Evaluating the Sutra"]
            DESCRIPTION "A delegation led by the sect's leader Hige climbs to the temple gate, where the PCs (on watch) must decide whether to admit them — unbalancing the conclave. If admitted, Hige speaks before the Brotherhood, and the PCs can investigate the sect's true origins (the ninth-century monk Yuzue, her student Gatai, and the founding sutra) and help evaluate the sutra's authenticity, shaping the debate."
        }
        PART 3 "Part Three: The Silent Song" {
            SCENES ["The Mountain Song Falls Silent", "To the Peak", "At the Ruin (Ajari and the enemies)", "Saving the Stranger (Senzai)"]
            DESCRIPTION "An elemental imbalance halts the conclave: the constant Mountain Song falls into a true and lasting silence. Seeking the cause, the PCs journey into the surrounding wilderness to a tengu ruin, where the tengu Ajari secretly shelters an injured woman — Senzai, the reincarnation of Shinsei — from those who would harm her. Warned by Iwa that a 'delusional heretic' wanders nearby, the PCs confront a variety of enemies (Kolat-hired bandits and others) to reach and save the stranger, whose fate will decide everything."
        }
        PART 4 "Part Four: The Vote and the Assassins" {
            SCENES ["Return to the Conclave", "The Assassins (Kanbei's attempt)", "The Final Vote (Sympathy resolved)", "The Fate of the Perfect Land"]
            DESCRIPTION "The PCs return to the conclave. Whether Senzai is alive (and revealed as Shinsei) or dead reshapes the ending. The Kolat master Kanbei launches an assassination attempt (with Yuki, Ichirō, and the bitter rōnin Satto) to push the sect toward violent rebellion; the PCs must thwart it. The conclave then resolves: the accumulated Sympathy (from –12 to +12, starting at 0) determines whether the Perfect Land is branded a False Path, left in ambiguity, spared condemnation, or recognized as an order following the reborn Shinsei — deciding the spiritual future of the Empire."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Mountain Song Temple" DEF {
            TYPE "Temple"
            DESCRIPTION "A Brotherhood temple in Dragon lands (Writ of the Wilds p76) that seems to grow out of the mountains, wrapped in the constant rise and fall of the Mountain Song. Host to this year's conclave under Mirumoto Masashige; its halls, libraries, and shrines shelter a fractious assembly of monks — and, in the wilderness beyond, a tengu ruin."
            NPCS [^"Mirumoto Masashige", ^"Naigen", ^"Anmoku", ^"Iwa"]
        }
        ^"The Tengu Ruin" DEF {
            TYPE "Landmark"
            DESCRIPTION "An old ruin in the wilderness around the Mountain Song Temple, haunted for years by the tengu Ajari, who has brought the injured Senzai here to shelter her from those who would harm her. The site of Part Three's confrontation."
            NPCS [^"Ajari"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-imperfect-land-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        PERFECT_LAND [^"Hige", ^"Anmoku", ^"Ichirō (Imperfect Land)", ^"Kanbei"]
        BROTHERHOOD [^"Naigen", ^"Iwa", ^"Mirumoto Masashige"]
        HIDDEN [^"Yuki (Shosuro Miyako)", ^"Ajari"]
        DELEGATES [^"Kaimoku", ^"Kūen", ^"Rekigan", ^"Fuchō", ^"Shōka", ^"Tanbu", ^"Yoshi", ^"Yuro", ^"Zenjō"]
    }

    # A conclave adventure for the players' own characters, so there is no PARTY /
    # pregen roster. Senzai — the reincarnation of Shinsei — is a narrative figure
    # (in a trance, no combat statblock) and lives in the .lore / .codex.
}
