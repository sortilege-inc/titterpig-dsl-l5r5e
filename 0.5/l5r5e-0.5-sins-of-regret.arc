# L5R 5E — Sins of Regret (.arc)
# Structure of "Sins of Regret: An Adventure in the Forgotten Heart of the
# Empire" (FFG). GM narrative and read-aloud text live in
# l5r5e-0.5-sins-of-regret.lore; the cast NPCs in
# l5r5e-0.5-sins-of-regret-cast.ttrpg. Designed for rōnin PCs of rank 2+, it uses
# the players' own characters — there are no pregens.

ARC "sins-of-regret" EXTENDS "l5r5e" {
    NAME "Sins of Regret"
    SUBTITLE "An Adventure in the Forgotten Heart of the Empire"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "Sins of Regret (Fantasy Flight Games, 2020 — product L5R11)"
    LEAD_WRITER "Tim Cox and Lisa Farrell"
    DESCRIPTION "Sins of Regret is an adventure for the Legend of the Five Rings Roleplaying Game. Designed for player characters of rank 2 or higher, it tests their commitment to Bushidō in the face of a looming conflict between an unjust lord and desperate peasants.\n\nThis adventure contains encounters designed for rōnin PCs, with choices, challenges, and rewards that give these lordless samurai opportunities to exercise their free will, foster their reputations, and perhaps even prove themselves worthy of a lord's patronage. However, not all players are ready or willing to set aside their clan affiliations. To ensure such players are not excluded, tips for running the adventure for lorded samurai are provided within the text.\n\nThe Legend of the Five Rings Core Rulebook allows players to create rōnin PCs, and Path of Waves offers additional options. Although this supplement is not required for running Sins of Regret, it does include further setting details and adventure ideas. If the PCs have already explored Twin Blessings Village, this adventure can occur on the PCs' return visit, exposing them to all the changes wrought by the new daimyō."

    THEMES ["The free will of the lordless rōnin", "Bushidō against an unjust lord", "Sins that fester into elemental and spiritual imbalance", "Regret and the chance for redemption", "The powerless against the powerful"]

    TONE "A slow-burning tragedy of a failing lord and a suffering village, building to a mass battle whose sides the PCs choose"
    PLAYER_COUNT "Designed for rōnin PCs of rank 2+ (with tips for lorded samurai); uses the players' own characters — no pregens"
    SUMMARY "Sins of Regret begins with the arrival of the PCs in Twin Blessings Village, which is suffering under the governorship of a new shugo, or minor lord, Reju Jikai. Evidence of this daimyō's unjust rule is widespread, and the PCs witness the dishonorable behavior of his bushi immediately. The village is also experiencing an elemental imbalance that has ruined the crops. The villagers believe the local kami are offended by Jikai's behavior, but the PCs might find evidence of sabotage. Jikai's magistrate demonstrates no mercy when the villagers are unable to pay the annual rice tax, and the villagers beg the PCs to go to the lord's castle and speak on their behalf.\n\nThe PCs must decide whether the transgressions of Jikai and his samurai necessitate their interference, or whether the local troubles provide them an opportunity to enter the lord's service. Either way, to meet Jikai the PCs must visit the castle, where the lord and his small court have problems of their own. Half the court—and the castle itself—seems determined to remove Jikai, while the other half resents living in such a place. Otomo Nobu, the steward, works toward overthrowing Jikai, gradually turning both samurai and peasants against him.\n\nOnce the PCs get inside the castle and gain an audience with the daimyō, they find that he neither heeds their advice nor swears them to his service until they gain his good opinion. They may then seek to earn his trust or find a way to remove him from power. Either way, Jikai's enemies move against him.\n\nThe nature of the Final Conflict (page 27) reflects the decisions the PCs have made throughout the adventure, while also giving them further options to influence the outcome. In the end, Jikai either defeats his enemies, or falls. The PCs might fight for or against the daimyō, and their success or failure determines not only their own future but that of everyone under Jikai's governorship."

    # ─────────────────────────────────────────────
    # PART STRUCTURE
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part One: Twin Blessings Village" {
            SCENES ["On the Road (Naoki)", "The Village", "The Way Station", "Village Problems", "Collecting Taxes", "A Plea for Help"]
            DESCRIPTION "Sins of Regret begins with the arrival of the PCs in Twin Blessings Village, which is suffering under the governorship of a new shugo, or minor lord, Reju Jikai. Evidence of this daimyō's unjust rule is widespread, and the PCs witness the dishonorable behavior of his bushi immediately. The village is also experiencing an elemental imbalance that has ruined the crops. The villagers believe the local kami are offended by Jikai's behavior, but the PCs might find evidence of sabotage. Jikai's magistrate demonstrates no mercy when the villagers are unable to pay the annual rice tax, and the villagers beg the PCs to go to the lord's castle and speak on their behalf."
        }
        PART 2 "Part Two: Closed Shell Castle" {
            SCENES ["Journey to the Castle (Michi)", "Meeting the Daimyō", "Serving the Daimyō", "Uncovering the Conspiracy", "The Well & the Kyōkotsu", "The Rooftop & the Shachihoko"]
            DESCRIPTION "The PCs must decide whether the transgressions of Jikai and his samurai necessitate their interference, or whether the local troubles provide them an opportunity to enter the lord's service. Either way, to meet Jikai the PCs must visit the castle, where the lord and his small court have problems of their own. Half the court—and the castle itself—seems determined to remove Jikai, while the other half resents living in such a place. Otomo Nobu, the steward, works toward overthrowing Jikai, gradually turning both samurai and peasants against him.\n\nOnce the PCs get inside the castle and gain an audience with the daimyō, they find that he neither heeds their advice nor swears them to his service until they gain his good opinion. They may then seek to earn his trust or find a way to remove him from power. Either way, Jikai's enemies move against him."
        }
        PART 3 "Part Three: The Final Conflict" {
            SCENES ["Running the Battle", "A Traitor at the Gates", "The Enemy Within", "Out for Themselves"]
            DESCRIPTION "The nature of the Final Conflict (page 27) reflects the decisions the PCs have made throughout the adventure, while also giving them further options to influence the outcome. In the end, Jikai either defeats his enemies, or falls. The PCs might fight for or against the daimyō, and their success or failure determines not only their own future but that of everyone under Jikai's governorship."
        }
        PART 4 "Conclusion & Rewards" {
            DESCRIPTION "The adventure's conclusion depends on the decisions the PCs made over its course. If the PCs helped the daimyō to retain his position, he might reward them by swearing them into his service, and they are rōnin no longer. If this was the particular goal of any or all PCs, they should be awarded 2 extra glory for achieving this.\n\nIf the village has been saved, by replacing the daimyō or improving his situation and outlook, or by dealing with the elemental imbalance, then the PCs should receive an increase of 3 or more to both honor and glory. Stories of their deeds will be told in the village for generations to come.\n\nThe amount of experience gained at the end of the adventure should depend on how many problems the PCs tackled, how far they explored, and how well they maintained the balance between their ninjō and personal sense of duty. Even if the PCs were not successful in their goals, they may have learned from their mistakes. For advice on awarding experience, see page 299 of the core rulebook.\n\nHowever Sins of Regret concludes, the adventure does not have to stop here. The downloadable content Cresting Waves, available at FantasyFlightGames.com, offers additional encounters in and around Twin Blessings Village and Closed Shell Castle. In addition, the included maps of Twin Blessings Village and Closed Shell Castle have many locations and details that aren't featured directly in the adventure, leaving plenty of room for further exploration and intrigue."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        #LcnJJahby6hDXeMOzCMQL9 ^"Twin Blessings Village" DEF {
            TYPE "Village"
            DESCRIPTION "As introduced in Path of Waves, Twin Blessings Village has no hard-and-fast location, to allow GMs to situate it based on the needs of their own campaigns—for this story, it is assumed to be somewhere rural and remote. Far from any major holding, the word of the local daimyō is law—as long as he can enforce it. This is important, as it inspires the PCs to make their own decisions and act without orders. While the daimyō seemingly does not feel responsible for upholding Bushidō, the PCs might, as there is no one else to come to the villagers' aid. Or they may feel able to act outside the laws of Bushidō as his samurai do.\n\nRural villages like the one encountered in this adventure exist all across Rokugan. Even if the GM decides to locate the village within the territory of a particular clan, it can remain on the fringes, far from any major family holding. Such villages are compact and independent societies, each one individual but working towards the common goals of survival and paying the rice tax."
            NPCS [#IgXuKjRwdNj1nekgSiqIO4 ^"Ichirō (Sins of Regret)", #VakzLUNGNDAKSTKuL71kkN ^"Reju Tsugumasa", #l61kx7lWynQSxZbxBC41Ww ^"Michi"]
        }
        #3mr22VwlWzREBecelOjDsb ^"Closed Shell Castle" DEF {
            TYPE "Castle"
            DESCRIPTION "Otomo Nahoko is a name some PCs might recognize if they have studied military history. She was a successful general who won many battles, developing tactics the Imperial Legions still practice, such as the inescapable \"closed shell\" maneuver. What the histories fail to mention is that as she aged, she grew paranoid, seeing enemies everywhere, and yet refused to retire to a monastery. Her family's solution was to give her land to build herself a castle and live out the remainder of her life governing a small territory.\n\nNahoko designed the Castle of the Closed Shell herself, and her growing paranoia is evident in everything from the unusually deep moat and vast number of yasama (arrow-slits), to the numerous trick doors and trapdoors. Though the land Nahoko was given to govern was small and relatively safe, surrounded by other imperial holdings, she built so many defenses that courtiers laughed about it behind their fans. Even the hill the castle stands on is artificial, as Nahoko lamented there was no location in her new territory with suitable natural defenses.\n\nOfficially, Nahoko died of old age, barricaded inside a castle that never saw a siege, but rumor has it her death was hastened by her own successor, who grew tired of being embarrassed by her. Some say both Nahoko's ghost and that of her successor haunt the family rooms in the castle, and their arguments keep the resident family awake at night.\n\nThe area Nahoko had cleared around the castle remains barren and unsightly, and the elemental imbalance is clear here. This means that no village has ever grown up in the shadow of the castle, and Twin Blessings Village serves most of the castle's needs. According to the resident spiritual advisor, Reju Toshio, the imbalance is due to the kami Nahoko angered when she built the castle, failing to listen to her advisers and take care that the castle fitted well with its surroundings. However, this does not explain why the imbalance is now spreading and worsening.\n\nThe new daimyō and his court lament the lack of comfort and aesthetically pleasing features in the castle, but some people might find a stark, utilitarian beauty in it. Longstanding servants like Shaki (see page 15) are proud of the castle's odd history and are willing to educate visitors, and do so without disparaging the castle."
            NPCS [#APx8F7vNrSmS6NscQxgJ8D ^"Reju Jikai", #WEzOnmPr5f8K9Vc8KbIVM7 ^"Seppun Azusa", #ZKJd0HgKn2mEL3e0CH4G47 ^"Reju Ume", #koqrICBoGbBHpXaRu277T5 ^"Reju Toshio", #F2qA63OrsPT8TuqHPOcb0M ^"Otomo Nobu", #SeKQrBxBlbiAmyTJ29PTVf ^"Kyōkotsu", #6vI9lbp7EqTS2pdbFancTU ^"Shachihoko"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-sins-of-regret-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        VILLAGE [#IgXuKjRwdNj1nekgSiqIO4 ^"Ichirō (Sins of Regret)", #VakzLUNGNDAKSTKuL71kkN ^"Reju Tsugumasa", #l61kx7lWynQSxZbxBC41Ww ^"Michi"]
        REJU [#APx8F7vNrSmS6NscQxgJ8D ^"Reju Jikai", #WEzOnmPr5f8K9Vc8KbIVM7 ^"Seppun Azusa", #ZKJd0HgKn2mEL3e0CH4G47 ^"Reju Ume", #koqrICBoGbBHpXaRu277T5 ^"Reju Toshio"]
        SCHEMERS [#F2qA63OrsPT8TuqHPOcb0M ^"Otomo Nobu", #8loFqh5F9CGPD5uWX7WSFt ^"Otomo Kazumi"]
        SPIRITS [#SeKQrBxBlbiAmyTJ29PTVf ^"Kyōkotsu", #6vI9lbp7EqTS2pdbFancTU ^"Shachihoko"]
    }

    # An adventure for the players' own rōnin characters, so there is no PARTY /
    # pregen roster.
}
