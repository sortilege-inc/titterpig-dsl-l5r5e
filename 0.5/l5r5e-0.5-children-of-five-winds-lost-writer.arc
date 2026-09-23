# L5R 5E - THE LOST WRITER IN THE CITY OF THE RICH FROG (ARC)
#
# Source: Legend of the Five Rings 5th Edition - Children of the Five Winds, Chapter 4
# Publisher: Fantasy Flight Games

ARC "L5R5e_LostWriter" {
    NAME "The Lost Writer in the City of the Rich Frog"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    DEPENDS_ON "L5R5e_Core_Core"
    USES_EXTENSION "L5R5e_Children_of_Five_Winds"

    THEMES {
        "Duty versus ethics — must you obey orders that conflict with your conscience?"
        "The tension between freedom and captivity, both literal and spiritual"
        "Art as a vessel for truth, and the dangers of uncovering it"
    }

    # =============
    # CAST
    # =============

    CAST {
        # --- Primary NPCs ---

        #L5RCW50aB2cD4eF6gH8iJ0k ^"Shinjo Higuchi" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "The missing author, possessed by an ifrit"
                ^"Description" STRING "A popular—if a bit controversial—author of stories and poems, Hana-no-Ame (real name: Shinjo Higuchi) has reportedly gone missing while visiting the City of the Rich Frog."
                ^"Combat Conflict Rank"  INTEGER 4
                ^"Intrigue Conflict Rank" INTEGER 1
                ^"Rings" DEF {
                    ^"Air" INTEGER 3
                    ^"Earth" INTEGER 2
                    ^"Fire" INTEGER 5
                    ^"Water" INTEGER 1
                    ^"Void" INTEGER 3
                }
                ^"Endurance" INTEGER 10
                ^"Composure" INTEGER 10
                ^"Focus" INTEGER 5
                ^"Vigilance" INTEGER 3
                ^"Honor"  INTEGER 60
                ^"Glory"  INTEGER 50
                ^"Status"  INTEGER 39
                ^"Skills" LIST OF STRING ["Artisan 1", "Martial 2", "Scholar 1", "Social 1", "Trade 0"]
            }
        }

        #L5RCW51lM3nO5pQ7rS9tU1v ^"Miya Tetsua" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Governor of the City of the Rich Frog"
                ^"Description" STRING "The governor of the City of the Rich Frog, Miya Tetsua is friend to many an influential citizen. He has been housing Shinjo Higuchi while she writes her newest novel, but he has been concerned about her behavior as of late."
                ^"Combat Conflict Rank"  INTEGER 2
                ^"Intrigue Conflict Rank" INTEGER 5
                ^"Rings" DEF {
                    ^"Air" INTEGER 4
                    ^"Earth" INTEGER 2
                    ^"Fire" INTEGER 4
                    ^"Water" INTEGER 3
                    ^"Void" INTEGER 2
                }
                ^"Endurance" INTEGER 12
                ^"Composure" INTEGER 12
                ^"Focus" INTEGER 8
                ^"Vigilance" INTEGER 4
                ^"Honor"  INTEGER 45
                ^"Glory"  INTEGER 55
                ^"Status"  INTEGER 60
                ^"Skills" LIST OF STRING ["Artisan 3", "Martial 2", "Scholar 4", "Social 4", "Trade 1"]
            }
        }

        #L5RCW52wX4yZ6aB8cD0eF2g ^"Ikoma Kotone" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Tea master at the Teahouse with No Name"
                ^"Description" STRING "Ikoma Kotone is the tea master and owner of the Teahouse with No Name in the City of the Rich Frog's Lion district. While she is diligent and professional, she does have a weak spot for gossip, and she has a particular love for taboo romance stories."
                ^"Combat Conflict Rank"  INTEGER 1
                ^"Intrigue Conflict Rank" INTEGER 4
                ^"Rings" DEF {
                    ^"Air" INTEGER 3
                    ^"Earth" INTEGER 2
                    ^"Fire" INTEGER 2
                    ^"Water" INTEGER 3
                    ^"Void" INTEGER 3
                }
                ^"Endurance" INTEGER 8
                ^"Composure" INTEGER 10
                ^"Focus" INTEGER 5
                ^"Vigilance" INTEGER 3
                ^"Honor"  INTEGER 60
                ^"Glory"  INTEGER 50
                ^"Status"  INTEGER 39
                ^"Skills" LIST OF STRING ["Artisan 2", "Martial 0", "Scholar 2", "Social 3", "Trade 0"]
            }
        }

        #L5RCW53hI5jK7lM9nO1pQ3r ^"Tonbo Kuma" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Dragonfly shrine keeper"
                ^"Description" STRING "A shrine keeper of the Dragonfly Minor Clan, Tonbo Kuma is a member of the Tonbo family, which maintains the extensive shrine gardens in the City of the Rich Frog. The Dragonfly's de facto leader within this city, Tonbo is a good friend of its governor, Miya Tetsua."
            }
        }

        #L5RCW54sT6uV8wX0yZ2aB4c ^"Kaeru Haya" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Ronin peacekeeper of the Unicorn wharf"
                ^"Description" STRING "Haya is an old peacekeeper of the Kaeru family of rōnin. She leads the group that manages security along the wharf in the City of the Rich Frog's Unicorn district. Having overseen the comings and goings of Unicorn merchants for quite some time, she has developed an interest in spiritual artifacts from lands beyond Rokugan."
                ^"Combat Conflict Rank"  INTEGER 2
                ^"Intrigue Conflict Rank" INTEGER 1
                ^"Rings" DEF {
                    ^"Air" INTEGER 2
                    ^"Earth" INTEGER 3
                    ^"Fire" INTEGER 2
                    ^"Water" INTEGER 1
                    ^"Void" INTEGER 1
                }
                ^"Endurance" INTEGER 10
                ^"Composure" INTEGER 6
                ^"Focus" INTEGER 5
                ^"Vigilance" INTEGER 2
                ^"Honor"  INTEGER 30
                ^"Glory"  INTEGER 40
                ^"Status"  INTEGER 20
                ^"Skills" LIST OF STRING ["Artisan 0", "Martial 2", "Scholar 1", "Social 0", "Trade 1"]
            }
        }

        #L5RCW55dE7fG9hI1jK3lM5n ^"Ide Chiharu" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Unicorn antiquarian and artifact dealer"
                ^"Description" STRING "A Unicorn antiquarian and seller of artifacts, Ide Chiharu recently purchased several supposedly mystical items from a mysterious Fox Clan merchant. Even more recently, Chiharu sold one of those items to Higuchi."
                ^"Combat Conflict Rank"  INTEGER 1
                ^"Intrigue Conflict Rank" INTEGER 3
                ^"Rings" DEF {
                    ^"Air" INTEGER 3
                    ^"Earth" INTEGER 1
                    ^"Fire" INTEGER 1
                    ^"Water" INTEGER 3
                    ^"Void" INTEGER 1
                }
                ^"Endurance" INTEGER 4
                ^"Composure" INTEGER 8
                ^"Focus" INTEGER 4
                ^"Vigilance" INTEGER 3
                ^"Honor"  INTEGER 45
                ^"Glory"  INTEGER 40
                ^"Status"  INTEGER 20
                ^"Skills" LIST OF STRING ["Artisan 2", "Martial 0", "Scholar 0", "Social 2", "Trade 3"]
            }
        }

        #L5RCW56oP8qR0sT2uV4wX6y ^"Daidoji Shin" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Crane trade envoy and amateur detective"
                ^"Description" STRING "This louche layabout and wastrel has recently turned amateaur, gentleman detective. After coasting through his role as the Crane Clan's trade envoy in the City of the Rich Frog, Shin found himself swept up in the mysteries of the city and discovered a taste for investigation. He is rarely seen without his bodyguard—and reluctant friend—Kasami."
                ^"Combat Conflict Rank"  INTEGER 5
                ^"Intrigue Conflict Rank" INTEGER 11
                ^"Rings" DEF {
                    ^"Air" INTEGER 5
                    ^"Earth" INTEGER 2
                    ^"Fire" INTEGER 3
                    ^"Water" INTEGER 5
                    ^"Void" INTEGER 2
                }
                ^"Endurance" INTEGER 8
                ^"Composure" INTEGER 16
                ^"Focus" INTEGER 8
                ^"Vigilance" INTEGER 5
                ^"Honor"  INTEGER 60
                ^"Glory"  INTEGER 50
                ^"Status"  INTEGER 40
                ^"Skills" LIST OF STRING ["Artisan 5", "Martial 2", "Scholar 3", "Social 5", "Trade 2"]
            }
        }

        #L5RCW57zA9bC1dE3fG5hI7j ^"Asahina Nao" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Crane shugenja with meishōdō expertise"
                ^"Description" STRING "Asahina Nao is a Crane shugenja visiting Daidoji Shin in the City of the Rich Frog. An old friend of the city's governor, Miya Tetsua, she has been called upon to assist with the situation involving Shinjo Higuchi."
                ^"Combat Conflict Rank"  INTEGER 2
                ^"Intrigue Conflict Rank" INTEGER 2
                ^"Rings" DEF {
                    ^"Air" INTEGER 2
                    ^"Earth" INTEGER 2
                    ^"Fire" INTEGER 3
                    ^"Water" INTEGER 3
                    ^"Void" INTEGER 3
                }
                ^"Endurance" INTEGER 8
                ^"Composure" INTEGER 10
                ^"Focus" INTEGER 5
                ^"Vigilance" INTEGER 2
                ^"Honor"  INTEGER 50
                ^"Glory"  INTEGER 40
                ^"Status"  INTEGER 40
                ^"Skills" LIST OF STRING ["Artisan 3", "Martial 0", "Scholar 3", "Social 2", "Trade 0"]
            }
        }

        #L5RCW58kL0mN2oP4qR6sT8u ^"Adventure Ifrit" DEF {
            APPLIES TO [#t4540de6f35155c46f41f0 ^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Fire spirit possessing Higuchi"
                ^"Description" STRING "A fire spirit originating from the Burning Sands, this ifrit has long lain dormant within a magical talisman. Accidentally awoken by Higuchi, it has possessed her in its confusion.\n\nThis profile represents the ifrit in its natural, unbound form. For the spirit's stats while it is still inhabiting Higuchi's body, see Shinjo Higuchi, Possessed (page 170)."
                ^"Combat Conflict Rank"  INTEGER 9
                ^"Intrigue Conflict Rank" INTEGER 2
                ^"Rings" DEF {
                    ^"Air" INTEGER 2
                    ^"Earth" INTEGER 2
                    ^"Fire" INTEGER 6
                    ^"Water" INTEGER 1
                    ^"Void" INTEGER 1
                }
                ^"Endurance" INTEGER 12
                ^"Composure" INTEGER 3
                ^"Focus" INTEGER 4
                ^"Vigilance" INTEGER 1
                ^"Skills" LIST OF STRING ["Artisan 0", "Martial 3", "Scholar 3", "Social 2", "Trade 3"]
            }
        }
    }

    # =============
    # LOCATIONS
    # =============

    LOCATION ^"City of the Rich Frog" #rich_frog_5a7470c08c15 {
        DESCRIPTION "Located at the junction of the Three Sides River and Drowned Merchant River, the City of the Rich Frog is one of Rokugan's most vital river ports, facilitating trade among its people. To three Great Clans—the Dragon, Lion, and Unicorn—and to the Dragonfly Minor Clan, it is a city of particularly vital strategic and economic importance."
        TAGS ["urban", "trade-hub", "contested", "imperial-holding"]

        LOCATION ^"Teahouse with No Name" #teahouse_de442dc16e12 {
            DESCRIPTION "In the Lion Clan's district within the City of the Rich Frog, an old and renowned teahouse overlooks the banks of the Drowned Merchant River. It has been there since the earliest days, when the city was just the Village of the Rich Frog. This teahouse's ownership has changed hands countless times over the years: so many times, in fact, that its original name has long been lost. The Teahouse with No Name—one of the city's more popular teahouses—is frequented by a wide variety of locals and travelers alike. It is here, at the subject of each of your search's last known location, that you have been drawn in your efforts to learn more."
            TAGS ["lion-district", "social", "formal"]
        }

        LOCATION ^"Shrine Gardens" #shrine_gardens_78e5e14cd094 {
            DESCRIPTION "In the Dragon Clan district, the Dragonfly Clan operates a number of shrines that have been built along the riverbanks. Encircling these shrines are beautiful, lavish gardens that are guarded at all times by a contingent of Dragonfly bushi. On a balcony overlooking one of the gardens, you see a person drinking tea and studying a Go board. As you draw near, they call out and beckon you over, introducing themselves as you take a seat as Tonbo Kuma, leader of the Dragonfly who live in the City of the Rich Frog. Kuma's invitation to sit and join them is welcome and genuine, but the faces of the guards who have kept watch since your approach warn you to watch yourselves."
            TAGS ["dragon-district", "spiritual", "peaceful"]
        }

        LOCATION ^"Unicorn Wharf" #unicorn_wharf_211102ec18fb {
            DESCRIPTION "The grand Unicorn Clan wharf lies along the western bank of the Three Sides River. Constructed almost entirely of polished black granite, it sees most of the trade that flows into the city, especially goods from outside Rokugan. In addition to merchant vessels and storage warehouses, the shops of numerous Unicorn merchants line the wharf, drawing an increasing number of visitors to this popular trade district."
            TAGS ["unicorn-district", "trade", "dangerous"]
        }

        LOCATION ^"Ide Chiharu's Curiosity Shop" #curiosity_shop_0db706f82ac7 {
            DESCRIPTION "A small shop sits nestled away from the bustling wharf's main thoroughfare. Its windows are covered with thick drapes of dark cloth that leave only a sliver of window uncovered. As you peer through it into the gloom, you see a room filled to the brim, cluttered full of all manner of old, strange antiques and curiosities. As you pass through the curtain hanging in the doorway, the shop's purveyor—a venerable antiquarian with a long, long beard—greets you, beckoning you farther inside."
            TAGS ["unicorn-district", "trade", "meishōdō"]
        }

        LOCATION ^"Daidoji Shin's Residence" #shins_residence_466a1cdd0ec9 {
            DESCRIPTION "Daidoji Shin's home lies on the outskirts of the Unicorn district, among a group of similarly violet-roofed buildings in the heart of the city's commercial center. A thick wall and screened windows isolate the building from the busy streets nearby. Outside, in a neat little garden, two women share a kettle of tea in the midday sun. One, dressed in the elaborate ceremonial robes of a shugenja, sips her tea with a pleasant demeanor. The other, who bears the countenance—and weaponry—of a bushi, seems significantly less happy to be there."
            TAGS ["unicorn-district", "social", "crane"]
        }

        LOCATION ^"Governor's Manor" #governors_manor_6ca10e6cf749 {
            DESCRIPTION "Located on a small island in the middle of the river junction is the resplendent governor's manor. The setting sun reflects off the waters as you take the ferry across, casting the city in pinkish-orange light. You take this time to prepare yourselves for whatever awaits you on the island.\n\nWhen you arrive, a pair of guards escorts you inside to a great meeting room. There, seated at a table, are two men: Daidoji Shin, whom you recognize from earlier in the day, and Governor Miya Tetsua himself."
            TAGS ["island", "imperial", "formal", "gardens"]
        }

        LOCATION ^"Manor Gardens" #manor_gardens_bea638c27ae6 {
            DESCRIPTION "Nao recommends moving Higuchi to the manor's interior garden for the confrontation, while Tetsua ensures that any potential prying eyes or innocent bystanders are sent away from the island."
            TAGS ["island", "outdoor", "dangerous", "supernatural"]
        }
    }

    # =============
    # FLOW
    # =============

    FLOW {
        PHASE ^"Background" {
            DESCRIPTION "Part One provides necessary context regarding the missing writer, Hana-no-Ame, and the events preceding the adventure. It also features background information on the City of the Rich Frog and on the four primary factions within it: the Dragon, Lion, and Unicorn Clans, and the Kaeru rōnin."
            PACING "1 scene, establishing the situation and stakes"

            SCENE_REF #arrival_7933e585a909
        }

        PHASE ^"Investigation" {
            DESCRIPTION "In Part Two, the PCs follow a trail of clues to various locations in the City of the Rich Frog to track down Hana-no-Ame. They speak with important NPCs and engage in some intrigue conflict scenes; they may take part in one or more duels or skirmishes as well. Each scene opens with narration that you may read aloud or paraphrase to set the stage."
            PACING "3-6 scenes depending on PC choices, player-driven exploration"

            SCENE_REF #tea_ceremony_b774e4c0f0de
            SCENE_REF #shrine_visit_5bcf354ce4a7
            SCENE_REF #wharf_investigation
            SCENE_REF #curiosity_shop_visit
            SCENE_REF #shins_consultation
            SCENE_REF #governor_meeting
        }

        PHASE ^"Confrontation" {
            DESCRIPTION "In Part Three, the PCs meet with the governor of the City of the Rich Frog and ready their allies. In the gardens of the governor's manor, they have their final confrontation and determine the fate of the lost writer."
            PACING "1 scene, climactic combat and moral decision"

            SCENE_REF #confrontation_fb324e23a5aa
        }

        PHASE ^"Resolution" {
            DESCRIPTION "In this final section, the players face the aftermath of the final confrontation. They receive their rewards, as determined by their actions, and are given an opportunity to reflect on the adventure and their choices."
            PACING "1 scene, denouement"

            SCENE_REF #aftermath_6ff3fca6b17e
        }
    }

    # =============
    # SCENES
    # =============

    # --- Phase 1: Background ---

    SCENE ^"Arrival in the City of the Rich Frog" #arrival_7933e585a909 {
        TYPE "Roleplay"
        LOCATION #rich_frog_5a7470c08c15
        DESCRIPTION "Each pair of premade PCs (available for free at edge-studio.net) have their own reasons for searching the City of the Rich Frog for the missing author. (If any of the premade characters has not been selected by a player, then that character is not joining their partner for this part of the investigation.)\n\nHiguchi's publisher, Ide Yuina, has not received her regular correspondence from Higuchi in some time. Concerned, she has traveled to the City of the Rich Frog to seek her out, starting with the last place Higuchi mentioned visiting—the Teahouse with No Name—in her final letter. Joining Yuina is Iuchi Minoru, who was among the shugenja that Higuchi had mentioned in her letters to Yuina. Minoru had neglected to warn Higuchi about the dangers meishōdō may pose to the inexperienced, so when Yuina arrived at their home saying that Higuchi had gone missing, they felt it was their responsibility to make sure the author was found safe.\n\nMatsu Rin is a dedicated Lion bushi in the City of the Rich Frog. Her daimyō, as well as others, have publicly denounced Hana-no-Ame's work as inappropriate, and now rumors have begun to circulate that the Lion Clan may have targeted the author as a political danger. Rin's lord wishes the author found, not just to prove that the Lion's hands are clean but also so the Lion can persuade the author to leave them out of her stories. Rin has called upon the assistance of an old battlefield companion, Kaeru Akiara, who has since turned rōnin. Unlike the Lion, rōnin have been described favorably in Hana-no-Ame's works, so Akiara feels a vested interest in ensuring the writer's safety. His connections with the other rōnin peacekeepers of the city have brought an interesting rumor to his attention: supposedly, the infamous Hana-no-Ame had been overheard discussing her new book at the Teahouse with No Name.\n\nKitsuki Tsubasa is one of several Dragon Clan investigators called to the City of the Rich Frog to root out a foreign artifact smuggling ring. Their investigation has drawn them to a suspicious stranger in the city—one whom witnesses claim has been calling herself \"Higuchi\"—who has reportedly been asking all over about gaijin magic and talismans. Tsubasa, along with Tonbo Goro—a Dragonfly shugenja who has noticed a recent increase in spiritual disturbances and desires to get to the bottom of it—have tracked the stranger to her last known location: the Teahouse with No Name.\n\nAlthough none of these pairs of PCs know the others, their investigations are about to converge on the same unassuming Lion district teahouse…"

        OBJECTIVES {
            REQUIRED "Learn about Higuchi's disappearance and accept the investigation"
            OPTIONAL "Gather initial impressions of the city's factional dynamics"
            OPTIONAL "Establish relationships with one or more district contacts"
        }

        CLUES {
            CLUE ^"Higuchi's Identity" {
                DESCRIPTION "This author, under the pseudonym Hana-no-Ame (her true name is Shinjo Higuchi; see Shinjo Higuchi, Possessed profile, page 170), arose seemingly from nowhere and has published an impressive collection of novels, poems, and plays in a relatively short amount of time."
            }
            CLUE ^"Last Known Movements" {
                DESCRIPTION "Higuchi's publisher, Ide Yuina, has not received her regular correspondence from Higuchi in some time. Concerned, she has traveled to the City of the Rich Frog to seek her out, starting with the last place Higuchi mentioned visiting—the Teahouse with No Name—in her final letter."
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Investigation Begins" {
                CONDITION "Each pair of premade PCs (available for free at edge-studio.net) have their own reasons for searching the City of the Rich Frog for the missing author."
                OUTCOME "Although none of these pairs of PCs know the others, their investigations are about to converge on the same unassuming Lion district teahouse…"
                LEADS_TO [#tea_ceremony_b774e4c0f0de]
            }
        }
    }

    # --- Phase 2: Investigation ---

    SCENE ^"Tea Ceremony at the Teahouse with No Name" #tea_ceremony_b774e4c0f0de {
        TYPE "Intrigue"
        LOCATION #teahouse_de442dc16e12
        DESCRIPTION "Whether separately or together, the PCs have arrived at the Teahouse with No Name to gather more information about Hana-no-Ame's disappearance or, in Kitsuki Tsubasa and Tonbo Goro's case, about the same mysterious woman who has been making inquiries about gaijin magic and talismans. Awaiting the arrival of the tea master in the teahouse's sitting room gives the PCs an opportunity to introduce themselves to each other and get acquainted. When the PCs are ready to proceed, a host invites them through a low door into the tea chamber proper.\n\nShortly thereafter, Tea Master Ikoma Kotone (see profile on page 171) arrives and begins the tea ceremony. Over the course of this ceremony, the PCs take part in an intrigue conflict scene in which they attempt to probe the revered tea master about Higuchi's (or the mysterious stranger's) visit in order to learn more about the author's movements and actions."

        OBJECTIVES {
            REQUIRED "Appeal to Tea Master Ikoma Kotone."
            OPTIONAL "Avoid breaching tea ceremony protocol"
        }

        CHECKS {
            CHECK ^"Stir the Leaves" {
                SKILL "Courtesy"
                SKILL "Performance"
                RING "Air"
                TN 3
                ON_FAILURE "Each character who fails increases the TN of their next check targeting Kotone by 1."
            }
            CHECK ^"Know Tonbo Kuma" {
                SKILL "Culture"
                RING "Fire"
                TN 2
                ON_SUCCESS "Dragon PCs, Goro especially, will know that Kuma oversees the Dragonfly's shrine gardens and holds a significant amount of political sway within the city. Other PCs can glean this information with a TN 2 Culture (Fire) check."
            }
            CHECK ^"Learn What Hana-no-Ame Asked" {
                SKILL "Courtesy"
                RING "Water"
                TN 4
                ON_SUCCESS "If the PCs accrued 10 or more momentum points, or if they accrued 5 or more and now succeed on a TN 4 Courtesy (Water) check, then Kotone adds that Hana-no-Ame asked specifically about spirits and spiritual artifacts from non-Rokugani cultures and locales."
            }
        }

        CLUES {
            CLUE ^"Meeting with Tonbo Kuma" {
                DESCRIPTION "Kotone is more than happy to reveal that not only did Hana-no-Ame indeed attend a ceremony at her teahouse recently, but that she did not attend it alone. She appeared to be meeting with none other than Tonbo Kuma (see profile on page 174), a shrine keeper and the head of the Dragonfly Clan within the city, and she asked them all sorts of questions about spirits, yōkai, and other mystical beings. Dragon PCs, Goro especially, will know that Kuma oversees the Dragonfly's shrine gardens and holds a significant amount of political sway within the city. Other PCs can glean this information with a TN 2 Culture (Fire) check."
                DISCOVERED_BY "If the PCs have accrued 5 or more momentum points"
            }
            CLUE ^"Spirits from Beyond Rokugan" {
                DESCRIPTION "Kotone adds that Hana-no-Ame asked specifically about spirits and spiritual artifacts from non-Rokugani cultures and locales. She suggests that since the Unicorn are the Rokugani who deal with foreign goods most often, the author's next stop may have been at the Unicorn wharf. Kotone then refers the PCs to a friend of hers who works those docks, a peacekeeper called Kaeru Haya (see profile on page 171)."
                DISCOVERED_BY "If the PCs accrued 10 or more momentum points, or if they accrued 5 or more and now succeed on a TN 4 Courtesy (Water) check"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Productive Visit" {
                CONDITION "PCs obtain at least one clue"
                OUTCOME "As the PCs exit the teahouse, they are approached by a man who introduces himself as Daidoji Shin (see profile on page 174). He is looking into rumors about the smuggling of dangerous magical artifacts from the Burning Sands west of Rokugan, and he overheard the PCs' conversation. He asks the PCs to let him know anything they may learn about such items being traded or transported as they search for Higuchi. Before making his exit, he also tells them directions to his residence in the Unicorn District in case they need to confer with him or find themselves in need of assistance as they continue their investigation.\n\nFollowing the scene at the Teahouse with No Name, the PCs may proceed to any location in the city they wish. Depending on what they have learned, they might choose to visit the Dragonfly Clan's shrine gardens to speak with Tonbo Kuma, the Unicorn Clan's wharf to find Kaeru Haya, or Daidoji Shin's lodgings if they need guidance on what to do next."
                LEADS_TO [#shrine_visit_5bcf354ce4a7, #wharf_investigation, #shins_consultation]
            }
            RESOLUTION ^"Unproductive Visit" {
                CONDITION "PCs fail to extract useful information"
                OUTCOME "As the PCs exit the teahouse, they are approached by a man who introduces himself as Daidoji Shin (see profile on page 174). He is looking into rumors about the smuggling of dangerous magical artifacts from the Burning Sands west of Rokugan, and he overheard the PCs' conversation. He asks the PCs to let him know anything they may learn about such items being traded or transported as they search for Higuchi. Before making his exit, he also tells them directions to his residence in the Unicorn District in case they need to confer with him or find themselves in need of assistance as they continue their investigation.\n\nFollowing the scene at the Teahouse with No Name, the PCs may proceed to any location in the city they wish. Depending on what they have learned, they might choose to visit the Dragonfly Clan's shrine gardens to speak with Tonbo Kuma, the Unicorn Clan's wharf to find Kaeru Haya, or Daidoji Shin's lodgings if they need guidance on what to do next."
                LEADS_TO [#shrine_visit_5bcf354ce4a7, #wharf_investigation, #shins_consultation]
            }
        }
    }

    SCENE ^"The Shrine Gardens" #shrine_visit_5bcf354ce4a7 {
        TYPE "Roleplay"
        LOCATION #shrine_gardens_78e5e14cd094
        DESCRIPTION "In this narrative scene, the PCs have the opportunity to converse with Tonbo Kuma to learn more about Kuma's meeting with Higuchi at the Teahouse with No Name. Known for their warm and gregarious nature, Kuma has an extensive network of social connections with various powerful individuals throughout the city."

        OBJECTIVES {
            REQUIRED "converse with Tonbo Kuma to learn more about Kuma's meeting with Higuchi at the Teahouse with No Name"
            OPTIONAL "Gain Tonbo Kuma's trust and assistance for later events"
        }

        CHECKS {
            CHECK ^"Game of Go" {
                SKILL "Games"
                RING "Water"
                RING "Air"
                TN 2
                ON_SUCCESS "Once they have reason to trust the PCs, Kuma has them swear to be discreet and fills them in on the conversation with Higuchi at the teahouse."
                ON_FAILURE "All Kuma is willing to divulge initially is that Higuchi requested a meeting to consult with them about some research she was doing; Kuma does not reveal any of the specifics of their conversation."
            }
            CHECK ^"Appeal to Compassion or Duty" {
                SKILL "Courtesy"
                RING "Fire"
                RING "Earth"
                TN 3
                ON_SUCCESS "Once they have reason to trust the PCs, Kuma has them swear to be discreet and fills them in on the conversation with Higuchi at the teahouse."
                ON_FAILURE "All Kuma is willing to divulge initially is that Higuchi requested a meeting to consult with them about some research she was doing; Kuma does not reveal any of the specifics of their conversation."
            }
        }

        CLUES {
            CLUE ^"Higuchi's Research" {
                DESCRIPTION "Higuchi sought out Kuma to discuss matters concerning humans' interactions with spirits and to find out what methods might allow a person to contact or otherwise engage with a spirit. As it is exceedingly rare for an individual untrained in the spiritual arts to communicate with a spirit by chance, Kuma advised that the most likely method might be via a talisman or shrine in which a spirit resides."
                DISCOVERED_BY "Once they have reason to trust the PCs, Kuma has them swear to be discreet and fills them in on the conversation with Higuchi at the teahouse."
            }
            CLUE ^"Asahina Nao" {
                DESCRIPTION "Kuma also mentions that Higuchi intended to consult other shugenja in the city as well. Asahina Nao, a Crane Clan shugenja and meishōdō expert currently visiting the area, seemed to greatly pique her interest."
                DISCOVERED_BY "Once they have reason to trust the PCs"
            }
            CLUE ^"The Governor's Referral" {
                DESCRIPTION "If the PCs ask directly, Kuma reveals that it was Governor Miya Tetsua who suggested that Higuchi get in touch with Kuma."
                DISCOVERED_BY "If the PCs ask directly"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Kuma's Lead" {
                CONDITION "If the PCs have not learned that Higuchi's research might have led her to the Unicorn wharf"
                OUTCOME "Kuma may add that Higuchi mentioned planning to pick up a gift for the governor at the Unicorn markets near that wharf, and that this might be a good place to inquire about her whereabouts."
                LEADS_TO [#wharf_investigation]
            }
        }
    }

    SCENE ^"Unicorn Wharf Investigation" #wharf_investigation {
        TYPE "Combat"
        LOCATION #unicorn_wharf_211102ec18fb
        DESCRIPTION "In this scene, PCs arrive to investigate the marketplace by the Unicorn district's wharf. Kaeru Akiara is the somewhat distant cousin of Kaeru Haya. Kuma let them know that Higuchi had planned to visit the wharf. This investigation begins as a narrative scene but might progress to a duel or skirmish depending on how the PCs handle its challenges.\n\nIf the PCs make a general investigation along the wharf, proceed to Dockside Search, page 165."

        OBJECTIVES {
            REQUIRED "Investigate the wharf for information about Higuchi's movements"
            OPTIONAL "Avoid a confrontation with the Kaeru peacekeepers"
            OPTIONAL "Learn about the artifact trade flowing through the wharf"
        }

        CHECKS {
            CHECK ^"Dockside Search" {
                SKILL "Culture"
                SKILL "Sentiment"
                SKILL "Command"
                SKILL "Courtesy"
                SKILL "Commerce"
                SKILL "Skulduggery"
                SKILL "Aesthetics"
                SKILL "Design"
                TN 3
                ON_SUCCESS "Successful checks can be rewarded with fragments of useful information, such as the following:\n\nSome people say they have seen Higuchi around recently; others have seen someone they think was her.\n\nThe Unicorn Clan trades in a lot of foreign goods, so the odds are good that multiple merchants or ships carry items from the Burning Sands.\n\nA mysterious Fox Clan individual has been seen around recently, but not much else can be gleaned about their presence."
            }
            CHECK ^"Convince the Peacekeepers" {
                SKILL "Command"
                RING "Earth"
                TN 3
                ON_SUCCESS "However, with a successful TN 3 Command (Earth) check, the PCs convince them to talk; they do not know much about the situation, but they offer to bring the party to their informal captain, Kaeru Haya, to see what she knows (see Find the Peacekeeper)."
                ON_FAILURE "If the PCs fail this check, a fight ensues (see Confrontation)."
            }
            CHECK ^"Find the Peacekeeper" {
                SKILL "Government"
                RING "Water"
                TN 1
                ON_SUCCESS "Haya is amiable and willing to chat, provided the PCs have not stirred up too much trouble beforehand. She admits to having recently spoken with someone claiming to be Hana-no-Ame, but she does not divulge specifics—she was sworn to secrecy, and she takes her vows very seriously. Haya was told that there were a number of people in the city who Hana-no-Ame wished to avoid meeting—dangerous people, possibly, but not the sorts who would lay down their lives in pursuit of her. In no uncertain terms, Haya says she will reveal what she knows only if the PCs prove that their search is not motivated by malice by facing her in a duel (see Confrontation). She will duel them only if they agree to leave the wharf if she wins."
            }
        }

        CONFLICT {
            TYPE "combat"
            STAKES "Whether the PCs can investigate freely or must fight their way out"
            OPPONENTS [#kaeru_haya_60be37c72620]
        }

        CLUES {
            CLUE ^"The Artifact Dealer" {
                DESCRIPTION "Higuchi visited the markets daily for a couple of weeks, asking nearly everyone she encountered about spirits and foreign talismans. Haya personally intervened, warning Higuchi against that kind of behavior while a smuggling investigation was underway, at which point Higuchi revealed her identity as Hana-no-Ame to her. As Hana-no-Ame, Higuchi has written favorably, even romantically, about the tragic valor of the rōnin. Haya was only too eager to assist, directing Higuchi toward a particular artifact dealer in the markets who might have what she needed. She now guides the PCs to the same dealer (see Curiosity Shop, page 166)."
                DISCOVERED_BY "If the PCs win the duel or skirmish, the rōnin divulge what they know"
            }
            CLUE ^"A Mysterious Fox Clan Individual" {
                DESCRIPTION "A mysterious Fox Clan individual has been seen around recently, but not much else can be gleaned about their presence."
                DISCOVERED_BY "Successful checks can be rewarded with fragments of useful information"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Duel or Skirmish Won" {
                CONDITION "If the PCs win the duel or skirmish"
                OUTCOME "She now guides the PCs to the same dealer (see Curiosity Shop, page 166)."
                LEADS_TO [#curiosity_shop_visit]
            }
            RESOLUTION ^"Duel or Skirmish Lost" {
                CONDITION "If the PCs lose the duel or skirmish"
                OUTCOME "the Kaeru peacekeepers eject them from the Unicorn wharf, requiring them to continue their investigation elsewhere."
                LEADS_TO [#shrine_visit_5bcf354ce4a7, #shins_consultation]
            }
        }
    }

    SCENE ^"The Curiosity Shop" #curiosity_shop_visit {
        TYPE "Intrigue"
        LOCATION #curiosity_shop_0db706f82ac7
        DESCRIPTION "In this shop, the PCs face another intrigue conflict scene to learn more about Higuchi's actions and what, if anything, she purchased here. If time is short, this intrigue may be replaced with a narrative scene.\n\nIf the PCs ask about Higuchi, the shop owner, Ide Chiharu (see profile on page 172), initially feigns ignorance—they have caught on to the fact that they may have incidentally played a part in some illegal smuggling, and they are not in the business of giving away customer secrets, after all! Chiharu lies, deflects, tries to convince the PCs to buy something—anything to avoid talking about Higuchi and potentially implicating themself in something untoward. Their deceptions are simple enough for the PCs to see through them with a successful TN 2 Sentiment (Air) check."

        OBJECTIVES {
            REQUIRED "Learn the nature and origin of the talisman sold to Higuchi"
            OPTIONAL "Obtain documentation about the sealing ritual for the talisman's spirit"
        }

        CHECKS {
            CHECK ^"Bribe or Cow Chiharu" {
                SKILL "Command"
                RING "Earth"
                TN 2
                ALTERNATIVE {
                    SKILL "Commerce"
                    RING "Water"
                    TN 3
                }
                ALTERNATIVE {
                    SKILL "Government"
                    RING "Fire"
                    TN 2
                }
                ON_SUCCESS "Once Chiharu has been sufficiently bribed or cowed, they agree to come clean."
                ON_FAILURE "If the PCs failed to cajole or strong-arm them in a narrative scene, then Chiharu provides the following information only if the entire party agrees to become indebted to them for a future favor."
            }
            CHECK ^"See Through Chiharu's Lies" {
                SKILL "Sentiment"
                RING "Air"
                TN 2
                ON_SUCCESS "Their lies having been exposed, Chiharu switches tactics: they say that, as it is clear the PCs could each benefit from their knowledge, they will be happy to share what they know—but only with whoever makes them the best offer."
                ON_FAILURE "Chiharu lies, deflects, tries to convince the PCs to buy something—anything to avoid talking about Higuchi and potentially implicating themself in something untoward."
            }
            CHECK ^"Decipher the Sealing Ritual" {
                SKILL "Theology"
                RING "Water"
                TN 4
                ON_SUCCESS "According to the deciphered information, the talisman's spirit must be removed from its current vessel, whether by force or by diplomacy, before the ritual described in the document commences. Then, any person or group may follow the document's instructions to perform a sealing ritual on the subdued spirit, sealing it inside a new vessel. (Upon hearing this, Chiharu offers to sell the PCs a brand-new vessel for just 2 koku—a discount, they assure them, and a safety measure in case the party cannot retrieve the talisman or something else suitable.)"
            }
        }

        CLUES {
            CLUE ^"The Talisman Sale" {
                DESCRIPTION "At this point, Chiharu admits that a woman visited the shop a couple of weeks ago, asking about spirits and in search of foreign artifacts. They say that they exclusively deal with collectors and were about to shoo her off when she claimed that she was the Hana-no-Ame—a more prestigious customer than they expected! Sensing an easy sale, they reluctantly admit to selling her a talisman that supposedly contained a wild spirit from the Burning Sands—a story that Chiharu did not believe but that easily convinced Higuchi to make the purchase."
                DISCOVERED_BY "Once Chiharu has been sufficiently bribed or cowed"
            }
            CLUE ^"The Fox Clan Traveler" {
                DESCRIPTION "Chiharu mostly sells objects whose worth stems more from form than from function, but they had recently obtained several valuable artifacts from a traveler bearing the mon, or symbol, of the Fox Clan. The traveler claimed that each of the pieces possessed some mystical significance. The shopkeeper notes that the traveler displayed some peculiar mannerisms unlike those of any samurai they have ever met."
                DISCOVERED_BY "Once Chiharu has been sufficiently bribed or cowed"
            }
            CLUE ^"The Ritual Documentation" {
                DESCRIPTION "Although they already sold the talisman, Chiharu has part of the documentation that came with it. The documentation Chiharu still possesses features ritual instructions for sealing or gaining protection against the talisman's purported spirit. Chiharu had planned to sell this information to Higuchi at a later date, assuming that it was the second part of ritual instructions they had sold her along with the talisman (in actuality, it is information on a complete second ritual, not only part of a ritual). They are more than happy to part with the document for the PCs' trouble."
                DISCOVERED_BY "Once Chiharu has been sufficiently bribed or cowed"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Full Disclosure" {
                CONDITION "Once Chiharu has been sufficiently bribed or cowed"
                OUTCOME "They are more than happy to part with the document for the PCs' trouble."
                LEADS_TO [#shins_consultation, #governor_meeting]
            }
            RESOLUTION ^"Indebted for a Future Favor" {
                CONDITION "If the PCs failed to cajole or strong-arm them in a narrative scene"
                OUTCOME "then Chiharu provides the following information only if the entire party agrees to become indebted to them for a future favor."
                LEADS_TO [#shins_consultation, #governor_meeting]
            }
        }
    }

    SCENE ^"Consultation with Daidoji Shin" #shins_consultation {
        TYPE "Roleplay"
        LOCATION #shins_residence_466a1cdd0ec9
        DESCRIPTION "This optional narrative scene is available for any group of PCs who may need a little extra assistance during their investigation. This scene would be most useful for a group of unlucky or curious PCs who missed out on some crucial information, or who would benefit from some NPC muscle or a shugenja who can help them perform rituals. Most other groups can skip this scene without missing out on much.\n\nDaidoji Shin is currently preoccupied with his investigation and is not home. Knowing he might have visitors and not wanting to be a poor host, he has posted his bodyguard, Hiramori Kasami (see profile on page 175), to await the PCs' arrival. Kasami is certain that this is simply an excuse to get out from under her watchful eye, and she is not happy about being made to wait. She knows this is not the PCs' fault, of course, and she is happy to shed insight on Shin's ongoing investigation.\n\nJoining Kasami is Asahina Nao (see profile on page 173), a well-respected Crane Clan shugenja and personal friend to both Daidoji Shin and Governor Miya Tetsua. She is in the city to visit Shin but has become caught up in the various happenings and now feels obligated to stay and assist. She will gladly help the party if they need any spiritual guidance, and she can assist in deciphering the sealing ritual if the PCs have already visited the Curiosity Shop."

        OBJECTIVES {
            OPTIONAL "Enlist Asahina Nao's help with the meishōdō talisman"
            OPTIONAL "Learn Shin's own theories about the disappearance"
        }

        CLUES {
            CLUE ^"Kasami's Insights" {
                DESCRIPTION "\"Shin has been searching for Higuchi as a person of interest in his magical artifacts smuggling case. She has been seen very publicly asking about foreign artifacts in recent weeks.\"\n\n\"Purportedly, a number of dangerous magical items from the Burning Sands have made their way into the city. Several witnesses have mentioned seeing suspicious characters down by the wharves at night. Several reported about a specific unfamiliar individual wearing a Fox Clan mon.\"\n\n\"Shin has primarily been investigating the area by the Unicorn wharf. You might wish to ask around there, if you have not already.\"\n\n\"The City Governor has been acting strange lately. In the last week or two, he has missed some of his usual engagements. Nao here can tell you more.\""
                DISCOVERED_BY "She knows this is not the PCs' fault, of course, and she is happy to shed insight on Shin's ongoing investigation."
            }
            CLUE ^"Nao's Insights" {
                DESCRIPTION "\"I came to the City of the Rich Frog to visit Shin, but I've been asked by the governor to stay for some favor he needs. He wouldn't specify what, just that he might need an expert on possession. So now I am here, waiting for him to call me to his manor.\"\n\n\"Earlier in my visit here, I received a letter from someone named Higuchi who wanted to ask about spirits and talismans. Seems my talents are in high demand here.\"\n\nIf the PCs describe the talisman or the sealing ritual: \"That sounds like the work of name magic right there. Binding spirits to borrow their strength. It can be very dangerous to mess around with talismans like that without proper training.\""
                DISCOVERED_BY "She will gladly help the party if they need any spiritual guidance, and she can assist in deciphering the sealing ritual if the PCs have already visited the Curiosity Shop."
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"A Little Assistance" {
                CONDITION "If the number of PCs is small, or if they might struggle on an upcoming challenge"
                OUTCOME "Nao or Kasami (or both!) could join the party for the rest of the adventure. Nao will be present for the final scene at the governor's manor, but she could always join the group early and accompany them there."
                LEADS_TO [#governor_meeting]
            }
        }
    }

    SCENE ^"Audience with the Governor" #governor_meeting {
        TYPE "Roleplay"
        LOCATION #governors_manor_6ca10e6cf749
        DESCRIPTION "If PCs try to visit the island without first exhausting their other options, they are turned away from the ferry by the governor's guards, who explain that the ferry is already full or that the governor is not taking visitors until later. Once the PCs have completed their business in the Unicorn district, they become able to access the island; this is a point of no return, so be sure that the party has done all they want in the Unicorn district.\n\nIn this narrative scene, the PCs meet with the governor of the City of the Rich Frog. Here, everything comes together as they learn what has happened with Higuchi."

        PREREQUISITES {
            MINIMUM_CLUES 4
        }

        OBJECTIVES {
            REQUIRED "learn what has happened with Higuchi"
            REQUIRED "Gain access to Higuchi in the manor gardens"
            OPTIONAL "Understand Tetsua's motives for concealing the situation"
        }

        CHECKS {
            CHECK ^"Assess the Situation" {
                SKILL "Theology"
                RING "Fire"
                TN 2
                ON_SUCCESS "On a success, they conclude that Higuchi has been possessed by a spirit. Depending on other information they have obtained in their investigation, they may also realize that Higuchi accidentally purchased a real meishōdō talisman, and that the spirit bound to it is one from the Burning Sands. These revelations give players an extra (skill)(skill) on Theology checks against the ifrit spirit."
                ON_FAILURE "If the PCs' check fails, then Nao comes to the same conclusions, but the party gain the extra (skill)(skill) benefit of their successful investigation."
            }
        }

        CLUES {
            CLUE ^"The Awful Truth" {
                DESCRIPTION "Tetsua says he has been noticing some strange behaviors from her for over a week now, but that something has been particularly wrong with her since early this morning. He is afraid that in her search, she may have angered a spirit and become stricken with a curse. Tetsua adds that he has spent the day trying to find someone who can help her quietly, and that for this reason he has called upon Tonbo Kuma and Asahina Nao for help, seeking spiritual wisdom."
                DISCOVERED_BY "In this narrative scene, the PCs meet with the governor of the City of the Rich Frog. Here, everything comes together as they learn what has happened with Higuchi."
            }
            CLUE ^"Higuchi's Location" {
                DESCRIPTION "Higuchi, a friend of Tetsua's, has been staying on the island while researching her latest book."
                DISCOVERED_BY "Tetsua says"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Governor Cooperates" {
                CONDITION "When the PCs are ready"
                OUTCOME "In this part of the adventure, the PCs—having gathered as many clues as they can—attempt to confront Higuchi. They must use the knowledge they have accumulated to fight, entrap, or free the spirit possessing her."
                LEADS_TO [#confrontation_fb324e23a5aa]
            }
        }
    }

    # --- Phase 3: Confrontation ---

    SCENE ^"The Possessed Author" #confrontation_fb324e23a5aa {
        TYPE "Combat"
        LOCATION #manor_gardens_bea638c27ae6
        DESCRIPTION "Nao recommends moving Higuchi to the manor's interior garden for the confrontation, while Tetsua ensures that any potential prying eyes or innocent bystanders are sent away from the island. It is up to the PCs to decide how they wish to deal with the errant spirit once they have excised it from Higuchi: Free it? Trap it once again inside a talisman? Banish it for good?\n\nNao is strongly opposed to freeing the spirit and even refuses to help with the ritual if the party decides to go that route. Tetsua does not care about what happens with the spirit, so long as Higuchi is unharmed. If any players want to play up their PCs' differing opinions on the resolution of the adventure, now may be the last opportunity for them to do so!\n\nWhen the PCs are ready, they head out to the manor's interior gardens, where Tetsua soon joins them, guiding Higuchi behind him. This scene begins as a narrative scene, but it may become a skirmish; the players ultimately decide how events play out.\n\nUpon her arrival, the author seems disoriented, asking where she is and what is going on in a voice that does not sound entirely her own. She also occasionally speaks in a language the PCs can recognize as a form of Nehiri with a TN 1 Culture (Earth) check. Anyone who passes a TN 2 Theology (Fire) check will recognize the spirit as an ifrit."

        PREREQUISITES {
            COMPLETED_SCENES [#governor_meeting]
        }

        OBJECTIVES {
            REQUIRED "Resolve the ifrit's possession of Higuchi"
            OPTIONAL "Save Higuchi's life"
            OPTIONAL "Resolve the situation without destroying the ifrit"
        }

        CONFLICT {
            TYPE "combat"
            STAKES "Higuchi's life, the ifrit's fate, and the safety of the City of the Rich Frog"
            OPPONENTS [#shinjo_higuchi_df4e0cc491ff, #adventure_ifrit_d9edc116c2e9]
        }

        CHECKS {
            CHECK ^"Recognize Nehiri" {
                SKILL "Culture"
                RING "Earth"
                TN 1
                ON_SUCCESS "She also occasionally speaks in a language the PCs can recognize as a form of Nehiri with a TN 1 Culture (Earth) check."
            }
            CHECK ^"Recognize the Ifrit" {
                SKILL "Theology"
                RING "Fire"
                TN 2
                ON_SUCCESS "Anyone who passes a TN 2 Theology (Fire) check will recognize the spirit as an ifrit."
            }
            CHECK ^"Understand the Ifrit" {
                SKILL "Theology"
                RING "Fire"
                TN 2
                ON_SUCCESS "The PCs may use a Commune with the Spirits ritual to establish a line of communication with the ifrit, but they must also succeed on a TN 2 Theology (Fire) check to understand and be understood by it (unless they already passed the check to identify the spirit)."
            }
            CHECK ^"Calm or Trick the Ifrit" {
                SKILL "Courtesy"
                RING "Water"
                RING "Air"
                TN 3
                ON_SUCCESS "A subsequent successful TN 3 Courtesy (Water or Air) check can be used to calm or trick the ifrit and encourage it to peacefully exit Higuchi's body, provided the PCs are willing to allow it to go free (something that some characters—especially Nao—have a strong objection to)."
                ON_FAILURE "If the PCs do not promise to let it go free, the ifrit does not agree to leave of its own accord."
            }
            CHECK ^"Perform Sealing Ritual" {
                SKILL "Theology"
                RING "Void"
                TN 2
                ON_SUCCESS "To seal the ifrit in a new vessel, they must fend it off while Nao or another shugenja performs the sealing ritual the PCs obtained in the Curiosity Shop. For the ritual to succeed, the shugenja performing it must succeed on three TN 2 Theology (Void) checks on their turns, at which point the ritual takes effect and the ifrit becomes sealed within its new vessel."
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Free the Ifrit" {
                CONDITION "PCs negotiate with the ifrit and help it separate from Higuchi willingly"
                OUTCOME "If Higuchi survives, she will thank the players for all that they have done to help her. Governor Tetsua will thank them too, and offers a favor for their deeds."
            }
            RESOLUTION ^"Seal the Ifrit" {
                CONDITION "PCs perform the sealing ritual successfully (requires the sealing scroll from Chiharu)"
                OUTCOME "If Higuchi survives, she will thank the players for all that they have done to help her. Governor Tetsua will thank them too, and offers a favor for their deeds. If the ifrit is sealed away once again, Nao will offer to buy the vessel from the party for a high price. The PCs may also choose to bring the vessel to the peacekeepers or Kitsuki Investigators for a—slightly less substantial—reward."
            }
            RESOLUTION ^"Destroy the Ifrit" {
                CONDITION "PCs defeat the ifrit in combat"
                OUTCOME "If Higuchi survives, she will thank the players for all that they have done to help her. Governor Tetsua will thank them too, and offers a favor for their deeds."
            }
            RESOLUTION ^"Higuchi Dies" {
                CONDITION "It is possible that the PCs might fight Higuchi while she is still possessed (see Shinjo Higuchi, Possessed, page 170)."
                OUTCOME "If she dies, the ifrit exits her body and attempts to flee, at which point it can be released, destroyed, or sealed as described earlier in this section."
            }
        }
    }

    # --- Phase 4: Resolution ---

    SCENE ^"Aftermath" #aftermath_6ff3fca6b17e {
        TYPE "Montage"
        LOCATION #governors_manor_6ca10e6cf749
        DESCRIPTION "Depending on how the PCs choose to approach the final confrontation and deal with the ifrit, this adventure may conclude in any of several ways.\n\nThe period when your group winds down from their victory offers an opportunity for players to reflect on the adventure and for you to elicit some concluding statements from them. Read the following questions aloud; ask the players to consider them and determine what their characters think:"

        MONTAGE {
            MOMENT ^"Hana-no-Ame's Fate" {
                DESCRIPTION "Hana-no-Ame's fate: Did Higuchi perish in the conflict, or was she freed from the ifrit? What will happen to her next? Who is satisfied with this outcome, and who is dissatisfied?"
            }
            MOMENT ^"The Ifrit" {
                DESCRIPTION "The ifrit: What is the ifrit's ultimate fate? Who is satisfied with this outcome, and who is not? Do you believe the ifrit could—or should—have been handled a different way?"
            }
            MOMENT ^"Personal Goals" {
                DESCRIPTION "Personal goals: Did you achieve what you set out to accomplish? Is your character satisfied with the way things turned out? How did (or will) they resolve their personal goals in the aftermath of this incident?"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"A Story Ends" {
                CONDITION "All aftermath moments are resolved"
                OUTCOME "For their part in the adventure, each PC should receive 3 XP plus an extra 1 XP for each hour of play."
            }
        }
    }

    # =============
    # REWARDS
    # =============

    REWARDS {
        XP_BASE 3
        CONDITIONAL_REWARDS {
            REWARD "Each hour of play" {
                XP 1
            }
            REWARD "any players felt that their character achieved their personal goal for this adventure" {
                XP 2
            }
        }
    }
}
