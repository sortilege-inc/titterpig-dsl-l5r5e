# L5R 5E — Imperfect Land (.arc)
# Structure of "Imperfect Land: An Adventure Uncovering the Secrets of the Perfect
# Land Sect" (FFG). GM narrative and read-aloud text live in
# l5r5e-0.5-imperfect-land.lore; the cast (four full statblocks, five profile-based
# leaders, nine conclave delegates) in l5r5e-0.5-imperfect-land-cast.ttrpg. The
# adventure uses the players' own characters — there are no pregens. Dragon and
# Phoenix PCs, and spiritual characters (shugenja, monks), are ideal.

ARC "imperfect-land" EXTENDS "l5r5e" {
    NAME "Imperfect Land"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "Imperfect Land: An Adventure Uncovering the Secrets of the Perfect Land Sect (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "Imperfect Land is an adventure for the Legend of the Five Rings Roleplaying Game. It places the characters at the heart of a religious conflict: as debate over the unorthodox and controversial Perfect Land Sect threatens to tear the Brotherhood of Shinsei apart, the PCs have a chance to shape the spiritual future of Rokugan—and their own futures as well."

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
            DESCRIPTION "Imperfect Land begins with the leaders of the Brotherhood's various orders gathering at the Mountain Song Temple in Dragon lands (described on page 76 of Writ of the Wilds), under the hospitality of Dragon family daimyō Mirumoto Masashige. The Brotherhood holds such a conclave each year and conducts other points of business during the event, but everyone is aware that this year's main agenda item is a vote on whether to formally bestow the label of False Path on the Perfect Land Sect. Failure to achieve a sufficient degree of consensus in one direction or the other would mean the Brotherhood would risk falling into a violent schism. Masashige requests the PCs help with the gathering, acting as guards, clerks, or other assistants, depending on their skills and backgrounds.\n\nIn Part One, the PCs have a chance to sway the vote toward support for or opposition to the Perfect Land Sect. Their duties to the conclave give them many opportunities to speak with the leaders who are still undecided, using a variety of tactics to make those leaders more receptive to their arguments."
        }
        PART 2 "Part Two: The Perfect Land Arrives" {
            SCENES ["At the Gate", "Letting Them In / Turning Them Away", "Hige Speaks", "Investigating the Origins", "Evaluating the Sutra"]
            DESCRIPTION "In Part Two, a delegation of Perfect Land adherents arrives, including their leader, Hige. This provides an opportunity to investigate the origins of the sect more closely, gives rise to a familial confrontation, and presents a chance to uncover a spy."
        }
        PART 3 "Part Three: The Silent Song" {
            SCENES ["The Mountain Song Falls Silent", "To the Peak", "At the Ruin (Ajari and the enemies)", "Saving the Stranger (Senzai)"]
            DESCRIPTION "In Part Three, an eruption of the elemental imbalance brings the constant melody of the Mountain Song to an abrupt halt, possibly in response to the strife of the conclave. The PCs are tasked to investigate, which takes them outside the temple to a tengu ruin, where they may confront a variety of enemies to save a stranger."
        }
        PART 4 "Part Four: The Vote and the Assassins" {
            SCENES ["Return to the Conclave", "The Assassins (Kanbei's attempt)", "The Final Vote (Sympathy resolved)", "The Fate of the Perfect Land"]
            DESCRIPTION "In Part Four, the final segment of this adventure, the PCs return to the conclave, thwart an assassination attempt, and help decide the ultimate fate of the Perfect Land Sect—along with that of Rokugan itself."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        #te4013301f2fe7da3be2ff ^"Mountain Song Temple" DEF {
            TYPE "Temple"
            DESCRIPTION "The temple seems to grow out of the mountains themselves, blending harmoniously with the surrounding terrain. Within its perimeter lies an extensive complex of halls, libraries, sleeping chambers, and shrines, all with an austere beauty that complements the constant rise and fall of the Mountain Song. This is a place of peace—but the assemblage of fractious monks gathered here threatens to crack that peace."
            NPCS [^"Mirumoto Masashige", #RGKIz7OLmZRu5daolD1h0j ^"Naigen", #oiI2Fqkg76RMNv2f8pSOS3 ^"Anmoku", #AXD267WIXyAZGt8oCbRt9C ^"Iwa"]
        }
        #wZCOoEqdDixIV5VZ9qAviT ^"The Tengu Ruin" DEF {
            TYPE "Landmark"
            DESCRIPTION "The setup at the ruin atop the peak is a simple one, but how it plays out will depend on who arrives first. Before anyone else reaches the peak, a tengu named Ajari has brought the wounded Senzai to safety in an old ruin of his people's there. He is reluctant to allow anyone near her."
            NPCS [#a7YAN7zdDZI1MCUmlPG7LQ ^"Ajari"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-imperfect-land-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        PERFECT_LAND [#x24hsoq9T0IzoYvD5OIESk ^"Hige", #oiI2Fqkg76RMNv2f8pSOS3 ^"Anmoku", #iKb9RZPFLEOAsfUXsmf4VC ^"Ichirō (Imperfect Land)", #uMxrJGM66fSPnqwRqZj0yt ^"Kanbei"]
        BROTHERHOOD [#RGKIz7OLmZRu5daolD1h0j ^"Naigen", #AXD267WIXyAZGt8oCbRt9C ^"Iwa", ^"Mirumoto Masashige"]
        HIDDEN [#Dfa8eyQqqWGDed4OVeQfwh ^"Yuki (Shosuro Miyako)", #a7YAN7zdDZI1MCUmlPG7LQ ^"Ajari"]
        DELEGATES [#dIsceCkPGs8VD5U6XaCUft ^"Kaimoku", #oX0zIch30qAe8QKzM2pckm ^"Kūen", #ZclACjttVkklWAAxn8qn3Z ^"Rekigan", #sw2WDlg5G2XGQJkvFEuuLq ^"Fuchō", #jAzYnRqs5Z2eBqJCQmg6Nq ^"Shōka", #U8DUGrJpAUUA6C80QIUjj7 ^"Tanbu", #MKn4V19GcNe9Q7i1kbMJfu ^"Yoshi", #LEhDULfqCnRKRX9UNwuy5k ^"Yuro", #bM9JswAetLL81H1Zp4Cw6c ^"Zenjō"]
    }

    # A conclave adventure for the players' own characters, so there is no PARTY /
    # pregen roster. Senzai — the reincarnation of Shinsei — is a narrative figure
    # (in a trance, no combat statblock) and lives in the .lore / .codex.
}
