# L5R 5E — Wedding at Kyotei Castle (.arc)
# Structure of the 2018 L5R Gen Con adventure (FFG, 2019). The GM narrative,
# read-aloud text, and handouts live in l5r5e-0.4-wedding-kyotei.lore; the cast
# adversaries in l5r5e-0.4-wedding-kyotei-cast.ttrpg; the seven pregenerated PCs
# in l5r5e-0.4-wedding-kyotei-pregens.actor. NPC carets resolve to those DEFs.

ARC "wedding-kyotei-castle" EXTENDS "l5r5e" {
    NAME "Wedding at Kyotei Castle"
    VERSION "0.4"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Wedding at Kyotei Castle: The 2018 L5R Gen Con Adventure (Fantasy Flight Games, 2019)"
    LEAD_WRITER "Katrina Ostrander with Alexis Dykema"
    DESCRIPTION "An introductory scenario for the Legend of the Five Rings Roleplaying Game. When inauspicious signs threaten to derail a crucial wedding between the Crane and Phoenix Clans, a group of young samurai must choose whether to see the match through or call it off. Over four scenes the PCs witness the stakes of the Crane–Lion border conflict in the Kintani (the Golden Valley) and decide the fate of Kyotei Castle."

    THEMES ["Choice and consequence", "Duty versus compassion", "The cost peasants bear while samurai squabble", "Old blood and restless ghosts", "A political marriage as a battlefield"]

    TONE "Courtly intrigue turning to open violence; a murder mystery beneath a wedding"
    PLAYER_COUNT "Six PCs (school rank 1; group rank 6), using the seven pre-generated characters"
    SUMMARY "The Crane vassal daimyō Tsume Takashi is to wed the Phoenix bushi Shiba Itsuyo to seal a Crane–Phoenix alliance. Unknown to the guests, Damasu no Akodo Maeda — born heir to Kyotei Castle, raised as the geisha Reika, who long ago murdered Takashi's father Tsume Retsu — has returned to hijack the wedding and reclaim her ancestral castle, aided by the rōnin Itto and, unwittingly, by the Scorpion agent Shosuro Yu (disguised as Ide Torao) who seeks to prevent the alliance. The PCs investigate ill omens at the castle shrine, unmask the culprit at the feast, and choose at the wedding whether to defend the marriage or aid Maeda's siege."

    # ─────────────────────────────────────────────
    # SCENE STRUCTURE
    # ─────────────────────────────────────────────
    PARTS {
        PART 0 "The Adventure Begins" {
            SCENES ["Starting the Scenario"]
            DESCRIPTION "Players choose pregens and read their ninjō and giri privately. The group votes whether to allow Party Conflict (PCs working against one another). The GM frames the Crane–Lion border conflict and the wedding at Kyotei, one of the first Lion castles to fall in the war."
        }
        PART 1 "Scene 1: The Price of War" {
            SCENES ["The Price of War"]
            DESCRIPTION "On the road through the Golden Valley the PCs, travelling together for safety, come upon mounted ruffians in dinted armor shaking down a peasant family, falsely claiming Lord Takashi sent them to collect taxes. Sentiment/Labor checks expose the bluff. The PCs choose whether and how to intervene, establishing the war's cost on the peasantry."
        }
        PART 2 "Scene 2: Ill Omens" {
            SCENES ["Arrival at Kyotei Castle", "Kyotei Shrine"]
            DESCRIPTION "Received at Kyotei Castle by Ojuno, Lord Tsume's aged personal servant, the PCs learn the castle shrine has been blighted by death — the sacred cranes slaughtered — an ill omen forcing the wedding to a local shrine. Investigating the shrine (its keeper Satsuki poisoned and impersonated), the PCs find the atrocity was human, not the work of the castle's ghosts."
            HANDOUTS true
        }
        PART 3 "Scene 3: Feast and Famine" {
            SCENES ["The Feast", "Investigation and Accusation"]
            DESCRIPTION "A shared meal in the Tsume courtroom lets the PCs weigh alibis and motives and decide whether to see the marriage — and the Crane–Phoenix alliance — through. Investigation points to Ide Torao (Shosuro Yu), who does not fit his Unicorn guise; the PCs may convince Takashi to arrest him. Spiritually sensitive PCs sense the Damasu ghosts' interest in Akodo Maeda. Maeda approaches sympathetic PCs to recruit them."
        }
        PART 4 "Scene 4a: The Wedding" {
            SCENES ["Procession to the Golden Valley Shrine", "Showdown at the Shrine"]
            DESCRIPTION "The wedding party processes on foot to the Golden Valley Shrine in ceremonial dress, bearing only wakizashi. Akodo Maeda halts the procession, katana drawn, and demands Takashi marry her and reclaim the castle for the united Damasu and Tsume. Whether Takashi refuses or sides with his erstwhile lover depends on the PCs' earlier influence; battle then commences at the shrine."
        }
        PART 5 "Scene 4b: The Siege" {
            SCENES ["Defend the Castle", "Attack the Castle"]
            DESCRIPTION "If the PCs unmasked Maeda openly at the feast, she returns at dawn to take Kyotei by force. General Shizuma directs the defense from the battlements and arms the PCs. The scene resolves as a set of hurdles — eliminating or surviving General Shizuma, stopping Captain Kotonoha's messenger (or defeating Maeda) — with the PCs on whichever side they have chosen."
        }
        PART 6 "Resolution: The Fate of the Valley" {
            DESCRIPTION "If Maeda is stopped, the wedding party returns triumphant, Takashi and Itsuyo wed. If Maeda is killed, the Damasu ghosts cry out, eternally bound to the castle, and an undecided Takashi weeps upon her corpse; the surviving Crane officers thank the PCs and quietly erase all evidence of the affair. The GM invites the players to reflect on what their choices mean for their characters."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Kyotei Castle" DEF {
            TYPE "Castle"
            REGION "The Kintani (Golden Valley)"
            DESCRIPTION "A Crane-held castle on the merchant road between Otosan Uchi and Toshi Ranbo, once the Lion-held seat of the Damasu family. Conquered by Tsume Retsu; rumored haunted by the Lions and Damasu who fell there. Its loss would cut the Crane's land supply lines to Toshi Ranbo."
            NPCS [^"Tsume no Doji Takashi", ^"Nasu no Shiba Shizuma", ^"Tsume Kotonoha", ^"Tsume Yemon"]
        }
        ^"The Kintani" DEF {
            TYPE "Region"
            DESCRIPTION "The Golden Valley, contested ground of the Crane–Lion border conflict, strung between the Osari Plains and Toshi Ranbo. Its roads, once known for gentle hills and immaculate inns, now draw bandits and ragged mercenaries."
        }
        ^"Kyotei Shrine" DEF {
            TYPE "Temple"
            DESCRIPTION "The castle's small shrine, large enough for one family's name plaques and a single kami's vessel, blighted by the slaughter of the sacred cranes. Tended by three shrine keepers under head priest Tsume Yemon."
        }
        ^"Golden Valley Shrine" DEF {
            TYPE "Temple"
            DESCRIPTION "The local shrine on the castle's outskirts to which the wedding ceremony is moved after the desecration of Kyotei Shrine; site of the Scene 4a showdown."
        }
        ^"Chikuzen" DEF {
            TYPE "Town"
            DESCRIPTION "The town near Kyotei Castle, home to the Pine House geisha establishment where the infant Damasu heir was hidden and raised as Reika."
        }
        ^"Pine House" DEF {
            TYPE "Building"
            SETTLEMENT "Chikuzen"
            DESCRIPTION "The geisha house where Damasu no Akodo Maeda was raised and trained as the geisha Reika, and where she seduced Tsume Takashi to gain access to the castle."
        }
        ^"Nikesake" DEF {
            TYPE "City"
            DESCRIPTION "A neighboring Phoenix Clan city, home of the bride Shiba Itsuyo and her father Shiba Katsuda, once relieved from siege by Tsume Retsu."
        }
        ^"Toshi Ranbo" DEF {
            TYPE "City"
            DESCRIPTION "The contested city at the heart of the Crane–Lion border conflict; Kyotei Castle guards the Crane's land-based supply lines to it."
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-wedding-kyotei-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ANTAGONISTS [^"Damasu no Akodo Maeda", ^"Itto", ^"Ide Torao aka Shosuro Yu", ^"Soshi Ozuru"]
        CRANE [^"Tsume no Doji Takashi", ^"Nasu no Shiba Shizuma", ^"Tsume Kotonoha", ^"Tsume Yemon", ^"Doji Kuzunobu"]
        PHOENIX [^"Shiba Itsuyo", ^"Shiba Katsuda", ^"Lady Chisei", ^"Asako Maezawa"]
    }

    # ─────────────────────────────────────────────
    # PREGENS (resolve to l5r5e-0.4-wedding-kyotei-pregens.actor)
    # ─────────────────────────────────────────────
    PARTY {
        PREGENS [^"Bayushi Hibiki", ^"Kaito Natsuyuki", ^"Kakita Hikaru", ^"Kitsu Kohaku", ^"Kitsuki Sora", ^"Utaku Azami", ^"Yasuki Toru"]
    }
}
