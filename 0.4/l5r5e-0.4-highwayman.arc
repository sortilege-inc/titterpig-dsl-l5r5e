# L5R 5E — The Highwayman (.arc)
# Structure of the 2019 L5R Gen Con adventure (FFG, 2020). GM narrative,
# read-aloud text, and handouts live in l5r5e-0.4-highwayman.lore; the cast
# adversaries in l5r5e-0.4-highwayman-cast.ttrpg; the six pregenerated PCs
# (gaijin, rōnin, peasant, monk) in l5r5e-0.4-highwayman-pregens.actor.

ARC "the-highwayman" EXTENDS "l5r5e" {
    NAME "The Highwayman"
    VERSION "0.4"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "The Highwayman: The Legend of the Five Rings 2019 Gen Con Adventure (Fantasy Flight Games, 2020)"
    LEAD_WRITER "Josiah \"Duke\" Harrist and Alexis Dykema with Tyler Parrott"
    DESCRIPTION "An introductory scenario for the Legend of the Five Rings Roleplaying Game that lets players take the roles of gaijin, rōnin, and peasant characters — the outsiders and outcasts of Rokugan. The PCs investigate a missing shipment of sake for the merchant Ito Moronoka; a straightforward search spirals into a deadly otherworldly fight against the dreaded Highwayman, deep in the Shinomen Forest."

    THEMES ["The outsider's view of Rokugan", "Legend versus reality", "Hospitality as a trap", "The ancient, indifferent wilderness", "The Shadowlands Taint creeping into the Shinomen"]

    TONE "Folk-horror mystery: rumor and superstition giving way to an otherworldly banquet"
    PLAYER_COUNT "Six pre-generated non-samurai characters (gaijin, rōnin, peasant, monk)"
    SUMMARY "The PCs arrive at the town of Kawacho seeking the missing courier Hidetaka Nori and the expensive sake he was to deliver to the merchant Ito Moronoka. Their leads point into the Shinomen Forest, where the Shadowlands Taint has taken root and a brutal Highwayman leaves red crescent-moon marks on trees and doors. Following Nori's trail to his overturned wagon and then to a lavish estate, the PCs are invited by Lady Kuriyama Yukiko — actually a shapeshifting rakshasa — to a decadent banquet with her two oni guests (Lady Atsuko and Lord Kenta). The estate is an illusion over a fetid marsh; the PCs must use wisdom and judgment to escape, recover the sake, and prevent Yukiko's growing power from spreading across Rokugan."

    # ─────────────────────────────────────────────
    # ACT STRUCTURE
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Act 1: The Missing Courier" {
            SCENES ["Kawacho", "The Sake Distillery", "The Local Sake House", "Optional: Today I am Sayaka"]
            DESCRIPTION "In the rice-town of Kawacho (a Soshi vassal holding), the PCs learn of the missing courier Hidetaka Nori from his mother Sazuko and sister Sasami, then from his brother, the sake-house owner Hidetaka Sasuke. Nori took a shortcut through the Shinomen against advice. Rumors of the Highwayman and the red crescent marks circulate. Optionally, the worldly trader Sayaka (née Bataar Badma) offers to guide them and warns of the tense forest spirits."
            HANDOUTS true
        }
        PART 2 "Act 2: Exploring the Shinomen" {
            SCENES ["Into the Shinomen", "Kodama (Forest Spirits)", "Nori's Wagon"]
            DESCRIPTION "Following Nori's trail into the ancient, watchful Shinomen — an unreliable, ethereal place that neither welcomes nor accommodates outsiders. The PCs may meet okuri-inu (supernatural wolf-dogs), sorrowful kodama tending trees scarred with the Mark of the Highwayman, and other unsettling wonders, before finding the courier's overturned sky-blue wagon deep in the forest."
        }
        PART 3 "Act 3: The Estate" {
            SCENES ["Approaching the Entrance", "The Illusion", "The Feast", "Trusting Yukiko / Refusing the Feast", "Exploring the Estate", "The Skirmish"]
            DESCRIPTION "The signs lead to a grand estate in a clearing — an illusion the rakshasa Lady Kuriyama Yukiko casts over a fetid marsh, staffed by undead servants. Yukiko invites the PCs to a banquet with her honored guests, the oni Lady Atsuko and Lord Kenta. The PCs must navigate the intrigue of the feast (whether to eat, whether to see through the illusion, whether to trust Yukiko's offer to take them to Nori) before it erupts into a skirmish against Yukiko, Atsuko, and Kenta among the estate's rooms — the Banquet Hall, Atrium, Kitchens, and Atsuko's Shrine."
        }
        PART 4 "Act 4: Conclusion" {
            SCENES ["Kawacho Aftermath", "Ito Moronoka's Shop"]
            DESCRIPTION "The survivors return: to Kawacho with tales that dissuade or rouse the villagers, and to the merchant Ito Moronoka with whatever sake they recovered. How many crates they bring and how well they explain the loss determines their pay (up to 6 koku each and the Ally [Ito Moronoka] distinction). Rewards: XP for completing the adventure and each conflict; glory for defeating Yukiko, Atsuko, and Kenta; honor for wrestling Lord Kenta alone."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Kawacho" DEF {
            TYPE "Town"
            DESCRIPTION "A small town controlled by the Soshi through a vassal family, built near very fertile land and known for the excellent sake produced at its small riverside distillery. Home of the Hidetaka family."
            NPCS [^"Hidetaka Sasuke"]
        }
        ^"Shinomen Forest" DEF {
            TYPE "Forest"
            DESCRIPTION "A vast, ancient, ethereal tangle of trees that dwarfs Great Clan holdings and predates the Chrysanthemum Throne. Neither hostile to outsiders nor accommodating; the Shadowlands Taint has crept into its heart. Scarred throughout with the red crescent-moon Mark of the Highwayman; home to kodama, okuri-inu, and worse."
        }
        ^"Yukiko's Estate" DEF {
            TYPE "Building"
            DANGER_LEVEL "Defiled marsh (illusory manor)"
            DESCRIPTION "A grand, ornately carved estate in a Shinomen clearing — an illusion the rakshasa Lady Kuriyama Yukiko casts over a fetid, festering marsh, staffed by undead servants. Its rooms include the Banquet Hall, the Atrium (where Lord Kenta waits), the Kitchens (a grisly larder of human remains and the missing sake), and Atsuko's Shrine between two guesthouses."
            NPCS [^"Lady Yukiko", ^"Lady Atsuko", ^"Lord Kenta"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-highwayman-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ANTAGONISTS [^"Lady Yukiko", ^"Lady Atsuko", ^"Lord Kenta"]
        ALLIES [^"Hidetaka Sasuke", ^"Sayaka"]
    }

    # ─────────────────────────────────────────────
    # PREGENS (resolve to l5r5e-0.4-highwayman-pregens.actor)
    # ─────────────────────────────────────────────
    PARTY {
        PREGENS [^"Ahuja Mishti", ^"Akagi Daichi", ^"Hiyabayashi Kenshin", ^"Maki Haruko", ^"Noburo", ^"Otgontogoch Turgen"]
    }
}
