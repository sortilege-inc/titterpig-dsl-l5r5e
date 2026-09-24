# L5R 5E — The Topaz Championship (.arc)
# Structure of the L5R Roleplaying Beginner Game's core adventure (FFG) — the
# prequel to "In the Palace of the Emerald Champion." GM narrative and read-aloud
# text live in l5r5e-0.5-topaz-championship.lore; the cast NPCs (Bayushi Sugai and
# the Ruffian) in l5r5e-0.5-topaz-championship-cast.ttrpg. The seven pregens are
# the shared Beginner Game character folios, authored in
# l5r5e-0.5-emerald-champion-pregens.actor and referenced here.

ARC "topaz-championship" EXTENDS "l5r5e" {
    NAME "The Topaz Championship"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "The Topaz Championship: the adventure included in the L5R Roleplaying Beginner Game (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "The adventure takes place in Tsuma, a small village located within lands controlled by the Crane Clan. Tsuma is a small fishing village on the Tangu River, with only a few dozen homes, barns, storehouses, and artisan shops. It has enormous cultural significance, however, as the site of the Topaz Championship, the most celebrated coming-of-age ritual ceremony, or gempuku, in the Emerald Empire.\n\nAs the story begins, the PCs are young samurai-to-be traveling to Tsuma for their coming of age. Samurai in Rokugan are minor nobles who serve the Emperor and their Clan in a variety of ways. Most samurai are further divided into several broad roles in the Emerald Empire. Bushi, or warriors, serve as soldiers, bodyguards, duelists, commanders, and in many other roles. Courtiers serve as diplomats, couriers, administrators, and in other bureaucratic roles. Shugenja are priests and scholars who can speak with spirits to perform what we would consider to be magic. Finally, Monks can be peasants or samurai who have dedicated their lives to spiritual contemplation and a monastic lifestyle (which is important and respected in Rokugan).\n\nIf the PCs can pass most of the tests that compose the tournament, they earn the right to be considered samurai in the Empire, giving them the privileges and responsibilities of minor nobles. The most exceptional samurai will also earn the title of Topaz Champion, bringing great honor and prestige to their clan. Naturally, each clan sends only their best and brightest to compete in the Topaz Championship. That includes the PCs!"

    THEMES ["Coming of age (gempuku) through the tournament", "Honor and the reputation of one's clan", "A hidden Scorpion scheme against the Crane", "The first stirring of Doji Satsume's ghost", "Learning the ways of Rokugan (a teaching adventure)"]

    TONE "A three-day tournament of contests, courtesy, and intrigue, building to a rigged duel and a chase — the Beginner Game's teaching scenario"
    PLAYER_COUNT "Seven pre-generated Beginner Game samurai (one per Great Clan), shared with In the Palace of the Emerald Champion"
    SETTING "Tsuma, a small Crane fishing town, during the three days of the Topaz Championship"
    SUMMARY "The PCs arrive at Tsuma by cart (glimpsing, with the peasant Ryu, the ghost of the dead Emerald Champion Doji Satsume) to compete in the Topaz Championship for their gempuku. Across three days — settling in among honored guests, a midnight tea, the competition's contests, a sake-house brawl, and the feast — they meet the Dragon investigator Kitsuki Yuikimi and the Mantis boy Hitoshi (secretly the bastard son of the Crane master sensei Kakita Toshimoko, and a pawn in a covert Scorpion–Crane conflict). The Scorpion courtier Bayushi Sugai schemes to dishonor the Crane by swapping the duelist Kakita Riku's blunt training sword for a real, razor-sharp double, so that she fatally wounds her opponent in the final duel and is forced to commit seppuku. In the climactic duel (One Cut), the PCs must notice the switch, expose Sugai — finding Riku's true sword on him — and give chase, vindicating Riku and earning the approving, challenging gaze of Satsume's ghost."

    # ─────────────────────────────────────────────
    # SCENE STRUCTURE (eight scenes over three days)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Scene 1: The Cart" {
            DESCRIPTION "In this encounter, the PCs come across a peasant named Ryu struggling with an upended cart. The meeting gives them an opportunity to get into character and ask any questions they might have about the Topaz Championship, Tsuma, or their competition. It also helps highlight the social structure of Rokugan, and the stark difference between the samurai and peasant classes. (It also provides a clue that proves useful later in the adventure.)"
        }
        PART 2 "Scene 2: Honored Guests" {
            DESCRIPTION "In this encounter, the PCs arrive at the House of the Laughing Carp, their home during the Topaz Championship, and hopefully defuse a tense situation between one of their rivals and the local authorities."
        }
        PART 3 "Scene 3: Midnight Tea" {
            DESCRIPTION "In this encounter, the PCs receive a visit from the ghost of Doji Satsume, the dead Emerald Champion. The PCs will have to successfully appease the ghost if they want to get a good night's sleep before their first day of the tournament!"
        }
        PART 4 "Scene 4: The Competition" {
            DESCRIPTION "In this scene, the PCs participate in the first five contests of the Topaz Championship. This scene will be a bit more abstract than the others, with the PCs making a single dice roll in each contest. However, this is necessary to make sure the PCs can get through the Championship in a timely manner."
        }
        PART 5 "Scene 5: High Spirits" {
            DESCRIPTION "In this encounter, the PCs find themselves (willingly or not) at a sake house where their honor will be repeatedly impugned. Should they somehow manage not to erupt into a brawl, they will be instead accosted on their way home."
        }
        PART 6 "Scene 6: Competition, Day Two" {
            DESCRIPTION "The next morning, the competition resumes, less any NPC contestants who were injured too badly to continue last night. Read the following aloud:\n\nThe next morning, the contest resumes. However, contestants who were injured too badly in last evening's brawl are unable to continue and have to bow out from the competition. Regrettably, this means that they will not finish their gempuku, and have to return home in shame.\n\nAs before, this day is a series of trials and the previous rules for the events apply here as well."
        }
        PART 7 "Scene 7: The Feast" {
            DESCRIPTION "The evening of the second day of the Championship is marked by a feast held in the Tsuma magistrate's estate, celebrating the success of the young samurai who are soon to become legal adults. In this encounter, the PCs must navigate the treacherous waters of a formal event, and perhaps help honor the wishes of Doji Satsume's ghost."
        }
        PART 8 "Scene 8: One Cut (the Rigged Duel)" {
            DESCRIPTION "The next morning, the remaining contestants gather for the final stage of the Topaz Championship. It is a single-elimination iaijutsu dueling competition, fought with blunted steel swords. After each round, half the contestants are eliminated, until only one remains: the Topaz Champion. Note that all of the contestants who are allowed to enter the tournament must have attained enough points to complete their gempuku—the duels are only to determine who gains the honor of becoming the new Topaz Champion.\n\nThere is also a parallel competition for shugenja, known as taryu-jiai. If the winner of this magic-oriented competition has amassed more total points than the winner of the iaijutsu dueling competition, then the shugenja is named Topaz Champion—a very rare occasion to be sure, but one that has happened in the past.\n\nHowever, in this specific encounter, neither competition will get very far, as in the second bout Kakita Riku will nearly murder Hitoshi with a live (sharp) sword, planted there by Bayushi Sugai in an effort to discredit the Crane and have her disqualified and her clan disgraced.\n\nIf Hitoshi has withdrawn or failed to achieve eight points, then Mirumoto Hinata takes his place; but even if injured last night, Hitoshi will be present to attempt to regain lost honor."
        }
        PART 9 "Aftermath" {
            DESCRIPTION "If Bayushi Sugai is defeated, the PCs can return to the dueling arena and explain things, saving Kakita Riku from being forced to commit seppuku for her action. Read the following aloud:\n\nYou return to the tournament grounds with a bloody and defeated Bayushi Sugai in tow, only to find Riku grimly preparing to commit ritual suicide for accidentally injuring her opponent. Toshimoko stands nearby. His face looks as if it was carved from stone.\n\nWhen he sees you, his expression changes to surprise. \"Hold!\" he commands to Riku. \"Clearly there is more going on here than first appears!\"\n\nThe PCs can explain that they found Riku's training sword on Bayushi Sugai. Although the Scorpion admits nothing, the existence of the real sword lays his plot bare (and Kitsuki Yuikimi, if she lived, backs up their story). This vindicates Riku, and also greatly pleases Toshimoko, who gains control of himself before thanking you gruffly.\n\nThe PCs also see a glimpse of Doji Satsume again; read or paraphrase the following aloud:\n\nAs you turn away from Toshimoko, you again see Doji Satsume's face. He looks on with approval, then turns a challenging gaze directly at you before becoming lost in the crowd. You can see in his eyes that his story isn't complete, and you'll see him again.\n\nIf Sugai escaped, the PCs return only to see Riku performing the ritual suicide, with a grim-faced Toshimoko acting as her second. Doji Satsume's countenance is equally grim, and he looks on the PCs with disappointment instead.\n\nThis is a good place to end the adventure. However, the PCs may want to play out the tournament, just to see who ends up becoming the Topaz Champion."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATION
    # ─────────────────────────────────────────────
    LOCATIONS {
        #Qk5CahfwIAvNXDGBNItox1 ^"Tsuma" DEF {
            TYPE "Town"
            DESCRIPTION "The adventure takes place in Tsuma, a small village located within lands controlled by the Crane Clan. Tsuma is a small fishing village on the Tangu River, with only a few dozen homes, barns, storehouses, and artisan shops. It has enormous cultural significance, however, as the site of the Topaz Championship, the most celebrated coming-of-age ritual ceremony, or gempuku, in the Emerald Empire."
            NPCS [#t54e13c3e188733ae9c3d4 ^"Bayushi Sugai"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-topaz-championship-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ANTAGONISTS [#t54e13c3e188733ae9c3d4 ^"Bayushi Sugai", #hViONy5InE6DIMvB8ThVgd ^"Ruffian (Topaz Championship)"]
    }

    # ─────────────────────────────────────────────
    # PREGENS — the shared Beginner Game folios
    # (authored in l5r5e-0.5-emerald-champion-pregens.actor; the same seven
    #  characters are used in both Beginner Game adventures)
    # ─────────────────────────────────────────────
    PARTY {
        PREGENS [#borV4EPfbO4461EG1D2A6y ^"Akodo Masako", #mdgXo3dyN1anVTTGuMLtFq ^"Bayushi Kyo", #yRz6zse1MHa80ptJjVYc9w ^"Doji Ren", #dOuhA27JA1FkxCGArVmQjf ^"Hida Sugi", #BumtE0gc6rxfR3PrDZKWR6 ^"Isawa Aki", #byjZjCnTY0YQyqgASFSQlJ ^"Shinjo Takuya", #0VUc4xhd1UkVKVR92AL2sT ^"Togashi Yoshi"]
    }
}
