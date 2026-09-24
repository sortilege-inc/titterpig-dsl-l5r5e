# L5R 5E — The Highwayman (.arc)
# Structure of the 2019 L5R Gen Con adventure (FFG, 2020). GM narrative,
# read-aloud text, and handouts live in l5r5e-0.5-highwayman.lore; the cast
# adversaries in l5r5e-0.5-highwayman-cast.ttrpg; the six pregenerated PCs
# (gaijin, rōnin, peasant, monk) in l5r5e-0.5-highwayman-pregens.actor.

ARC "the-highwayman" EXTENDS "l5r5e" {
    NAME "The Highwayman"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "The Highwayman: The Legend of the Five Rings 2019 Gen Con Adventure (Fantasy Flight Games, 2020)"
    LEAD_WRITER "Josiah \"Duke\" Harrist and Alexis Dykema with Tyler Parrott"
    DESCRIPTION "In The Highwayman, the PCs investigate the disappearance of a missing shipment of sake on behalf of the merchant Ito Moronoka [Mo-ROW-no-ka]. What starts out as a straightforward search for some missing goods spirals into a deadly otherworldly fight for their lives against the dreaded Highwayman.\n\nThis adventure is an introductory scenario for the Legend of the Five Rings Roleplaying Game. To play, you will need to have a copy of the Legend of the Five Rings Core Rulebook.\n\nThe Highwayman allows players to play as gaijin (foreigner), rōnin (lordless samurai), and peasant characters. These new character types offer a different roleplaying experience than the honor-bound samurai. Through their relationship with the tenets of Bushidō and their varied character backgrounds, PCs will be able to experience a new facet of Rokugan: as the outsiders, the unknown, and the outcasts."

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
            DESCRIPTION "Following Nori's trail into the Shinomen eventually leads to the courier's overturned, sky-blue wagon deep in the forest. The spiritual disturbances are strong here, alongside many threats of the ancient wood. Once PCs reach the forest, read or paraphrase the following out loud:\n\nAs you enter the sea of ancient trees, following the worn path, the foliage overhead grows denser and denser, letting in less and less light. Keeping to the path is difficult, and something feels off about how quiet the forest is. The trees seem to watch your every movement with palpable anticipation."
        }
        PART 3 "Act 3: The Estate" {
            SCENES ["Approaching the Entrance", "The Illusion", "The Feast", "Trusting Yukiko / Refusing the Feast", "Exploring the Estate", "The Skirmish"]
            DESCRIPTION "Following the signs, the players arrive at a large estate in a clearing. This is all an illusion created by the rakshasa; in reality, the estate is built on a fetid marsh, and smells like bilious tar."
        }
        PART 4 "Act 4: Conclusion" {
            SCENES ["Kawacho Aftermath", "Ito Moronoka's Shop"]
            DESCRIPTION "Assuming the PCs are not all dead, a number of post-adventure scenes may play out, depending on time. Additionally, GMs might consider incorporating some of the supernatural Shinomen forest encounters if their players have managed to complete things quickly.\n\nThe PCs gain the following for their efforts:\n\n3 XP: For completing the adventure\n\n1 XP: For each intrigue, skirmish, or duel a PC completes\n\n4 Glory: For defeating each of the three major enemies; Lady Yukiko, Lady Atsuko, and Lord Kenta (a total of 12 glory possible)\n\n4 Honor: For wrestling Lord Kenta alone"
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        #6Qdw4SGRGpjnDj2vUY9n3b ^"Kawacho" DEF {
            TYPE "Town"
            DESCRIPTION "Kawacho is a small town controlled by the Soshi through a vassal family. The town is built near an area of very fertile land, producing notably abundant rice yields each year. The town is known for their excellent sake produced by their small distillery on the river."
            NPCS [#RlmdJOMvXt82vLvXukob5x ^"Hidetaka Sasuke"]
        }
        #CQOT5IYTQffyf2X0Z7jsjG ^"Shinomen Forest" DEF {
            TYPE "Forest"
            DESCRIPTION "The Shinomen Forest is a mysterious, sprawling tangle of ancient trees that dwarfs most Great Clan castles and holdings. It has endured long before the establishment of the Chrysanthemum Throne and will continue long after Rokugan has fallen. Under its shadowy boughs, the air is still and windless, and the spirits and wildlife exist, unconcerned with the world outside. Under cover of darkness, the wicked creatures who seek destruction have crept into the heart of the Shinomen where they wait patiently. One such creature––the rakshasa who masquerades as the Highwayman––has invited two oni to be her honored guests at a final banquet before they sow discord in the rest of Rokugan.\n\nThe Shinomen Forest is a strange, ancient place that is not inherently hostile to outsiders, but does not accommodate them either. The ethereal nature of the Shinomen is mysterious and, rightly so, terrifies most people."
        }
        #q3jjgbCZCz00py9X8ehMzX ^"Yukiko's Estate" DEF {
            TYPE "Building"
            DANGER_LEVEL "Defiled marsh (illusory manor)"
            DESCRIPTION "As the trees break, you are greeted by a sprawling complex of ornately carved buildings of a grand estate. Overhead, the lidless eye of the moon casts the place in a ghostly pallor. A short walkway lit with braziers leads to the front entrance of the main hall. There are no gates or walls here.\n\nTranquil music streams out of an open door on the cool night breeze. The scent on the air, however, is that of a vile marsh.\n\nThe main estate of the manor filled with dozens of rooms. If the illusion has been dispelled, the manor is instead a large outcropping in the middle of a festering swamp. A rudimentary framework of gnarled branches separates the 'rooms.' Listed below are the main areas the PCs may find themselves in."
            NPCS [#cvEfIvnE1yL99XGZVXnJgw ^"Lady Yukiko", #0gkDqXwZmpMNnyG2myLVab ^"Lady Atsuko", #h7zoU54KUJc1dNa2D5ZCtl ^"Lord Kenta"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-highwayman-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ANTAGONISTS [#cvEfIvnE1yL99XGZVXnJgw ^"Lady Yukiko", #0gkDqXwZmpMNnyG2myLVab ^"Lady Atsuko", #h7zoU54KUJc1dNa2D5ZCtl ^"Lord Kenta"]
        ALLIES [#RlmdJOMvXt82vLvXukob5x ^"Hidetaka Sasuke", #naISmwEA1cEFXEbfrotO7j ^"Sayaka"]
    }

    # ─────────────────────────────────────────────
    # PREGENS (resolve to l5r5e-0.5-highwayman-pregens.actor)
    # ─────────────────────────────────────────────
    PARTY {
        PREGENS [#KezAtQsi7CSsgfyRtXheXX ^"Ahuja Mishti", #PcvolFjH6kH5NgpTGoertf ^"Akagi Daichi", #tTQklf0JPs25ixPVf39nb8 ^"Hiyabayashi Kenshin", #hXxrMMjB1Vz4btnMWdcfLC ^"Maki Haruko", #Yv8K4TUGBfB6eqW2RJbbUJ ^"Noboru", #IydtfQxLH1KAQb7G3Wc28W ^"Otgontogoch Turgen"]
    }
}
