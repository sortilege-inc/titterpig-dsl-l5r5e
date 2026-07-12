# L5R 5E - THE LOST WRITER IN THE CITY OF THE RICH FROG (ARC)
#
# Source: Legend of the Five Rings 5th Edition - Children of the Five Winds, Chapter 4
# Publisher: Fantasy Flight Games

ARC "L5R5e_LostWriter" {
    NAME "The Lost Writer in the City of the Rich Frog"
    VERSION "0.4"
    SPEC_VERSION "0.4"
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "The missing author, possessed by an ifrit"
                ^"Description" STRING "Popular author of stories and poems (pen name Hana-no-Ame), possessed by an ifrit from a meishōdō talisman while visiting the City of the Rich Frog."
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Governor of the City of the Rich Frog"
                ^"Description" STRING "Governor of the City of the Rich Frog, friend to many influential citizens. Has been housing Shinjo Higuchi while she writes her newest novel."
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Tea master at the Teahouse with No Name"
                ^"Description" STRING "Tea master and owner of the Teahouse with No Name in the Lion district. Diligent and professional, with a weakness for gossip and taboo romance stories."
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Dragonfly shrine keeper"
                ^"Description" STRING "A quiet Dragonfly shrine keeper who tends the gardens in the Dragon district. Observed Higuchi's growing obsession with a foreign talisman."
                ^"Combat Conflict Rank"  INTEGER 1
                ^"Intrigue Conflict Rank" INTEGER 2
                ^"Rings" DEF {
                    ^"Air" INTEGER 2
                    ^"Earth" INTEGER 3
                    ^"Fire" INTEGER 2
                    ^"Water" INTEGER 3
                    ^"Void" INTEGER 3
                }
                ^"Endurance" INTEGER 10
                ^"Composure" INTEGER 12
                ^"Focus" INTEGER 5
                ^"Vigilance" INTEGER 3
                ^"Honor"  INTEGER 55
                ^"Glory"  INTEGER 30
                ^"Status"  INTEGER 30
                ^"Skills" LIST OF STRING ["Artisan 1", "Martial 1", "Scholar 3", "Social 2", "Trade 1"]
            }
        }

        #L5RCW54sT6uV8wX0yZ2aB4c ^"Kaeru Haya" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Ronin peacekeeper of the Unicorn wharf"
                ^"Description" STRING "Old peacekeeper of the Kaeru family of ronin, leading the security group along the wharf in the Unicorn district. Has developed an interest in spiritual artifacts from beyond Rokugan."
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Unicorn antiquarian and artifact dealer"
                ^"Description" STRING "Unicorn antiquarian and seller of artifacts who recently purchased several supposedly mystical items from a Fox Clan merchant, then sold one to Higuchi."
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Crane trade envoy and amateur detective"
                ^"Description" STRING "Louche layabout and wastrel turned amateur gentleman detective. Crane Clan's trade envoy in the City of the Rich Frog."
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Crane shugenja with meishōdō expertise"
                ^"Description" STRING "Crane shugenja visiting Daidoji Shin in the City of the Rich Frog. An old friend of the governor, called upon to assist with the situation involving Shinjo Higuchi."
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
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Fire spirit possessing Higuchi"
                ^"Description" STRING "Fire spirit from the Burning Sands, long dormant within a magical meishōdō talisman. Accidentally awoken by Higuchi, it has possessed her in its confusion. This profile represents the ifrit in its natural, unbound form."
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

    LOCATION ^"City of the Rich Frog" #rich_frog {
        DESCRIPTION "An Imperial holding situated at a river junction, strategically important to the Dragon, Lion, and Unicorn clans as well as the Dragonfly Minor Clan. The city is divided into three clan districts, with neutral ronin from the Kaeru family serving as peacekeepers."
        TAGS ["urban", "trade-hub", "contested", "imperial-holding"]

        LOCATION ^"Teahouse with No Name" #teahouse {
            DESCRIPTION "An elegant teahouse in the Lion district, owned by Ikoma Kotone. The interior is refined and spare, with hanging scrolls of calligraphy and a garden view. Tea ceremonies here follow strict protocol."
            TAGS ["lion-district", "social", "formal"]
        }

        LOCATION ^"Shrine Gardens" #shrine_gardens {
            DESCRIPTION "A tranquil garden complex tended by the Dragonfly shrine keeper Tonbo Kuma. Stone paths wind between ancient trees and moss-covered lanterns. Higuchi visited here frequently before her disappearance."
            TAGS ["dragon-district", "spiritual", "peaceful"]
        }

        LOCATION ^"Unicorn Wharf" #unicorn_wharf {
            DESCRIPTION "The bustling riverside docks of the Unicorn district, patrolled by Kaeru peacekeepers. Crates of foreign goods are stacked alongside fishing boats. Smuggling is an open secret."
            TAGS ["unicorn-district", "trade", "dangerous"]
        }

        LOCATION ^"Ide Chiharu's Curiosity Shop" #curiosity_shop {
            DESCRIPTION "A cluttered shop in the Unicorn district filled with artifacts, curios, and items of dubious provenance. Shelves groan under the weight of foreign talismans, carved figurines, and sealed scrolls."
            TAGS ["unicorn-district", "trade", "meishōdō"]
        }

        LOCATION ^"Daidoji Shin's Residence" #shins_residence {
            DESCRIPTION "An extravagant residence in the Unicorn district, appointed with Crane elegance but lived in with cheerful disorder. Daidoji Shin holds court here among tea sets, gambling debts, and visiting friends."
            TAGS ["unicorn-district", "social", "crane"]
        }

        LOCATION ^"Governor's Manor" #governors_manor {
            DESCRIPTION "The official residence of Governor Miya Tetsua, situated on a small island connected to the city by a stone bridge. The manor gardens are beautiful and meticulously maintained — and conceal Higuchi's current location."
            TAGS ["island", "imperial", "formal", "gardens"]
        }

        LOCATION ^"Manor Gardens" #manor_gardens {
            DESCRIPTION "The sprawling formal gardens behind the Governor's Manor. Cherry trees, koi ponds, and stone walkways create a serene atmosphere — but fire damage and scorch marks betray the ifrit's presence."
            TAGS ["island", "outdoor", "dangerous", "supernatural"]
        }
    }

    # =============
    # FLOW
    # =============

    FLOW {
        PHASE ^"Background" {
            DESCRIPTION "The PCs arrive in the City of the Rich Frog and learn of the missing author"
            PACING "1 scene, establishing the situation and stakes"

            SCENE_REF #arrival
        }

        PHASE ^"Investigation" {
            DESCRIPTION "The PCs gather clues from NPCs and locations across the city's three districts"
            PACING "3-6 scenes depending on PC choices, player-driven exploration"

            SCENE_REF #tea_ceremony
            SCENE_REF #shrine_visit
            SCENE_REF #wharf_investigation
            SCENE_REF #curiosity_shop_visit
            SCENE_REF #shins_consultation
            SCENE_REF #governor_meeting
        }

        PHASE ^"Confrontation" {
            DESCRIPTION "The PCs face the possessed Higuchi and the ifrit in the manor gardens"
            PACING "1 scene, climactic combat and moral decision"

            SCENE_REF #confrontation
        }

        PHASE ^"Resolution" {
            DESCRIPTION "Aftermath of the confrontation, consequences and rewards"
            PACING "1 scene, denouement"

            SCENE_REF #aftermath
        }
    }

    # =============
    # SCENES
    # =============

    # --- Phase 1: Background ---

    SCENE ^"Arrival in the City of the Rich Frog" #arrival {
        TYPE "Roleplay"
        LOCATION #rich_frog
        DESCRIPTION "The PCs arrive in the city and learn that the famous author Hana-no-Ame (real name Shinjo Higuchi) has gone missing. Governor Miya Tetsua or another patron conveys the situation: Higuchi was visiting the city to write her newest novel and has not been seen for several days. The PCs are asked to investigate discreetly."

        OBJECTIVES {
            REQUIRED "Learn about Higuchi's disappearance and accept the investigation"
            OPTIONAL "Gather initial impressions of the city's factional dynamics"
            OPTIONAL "Establish relationships with one or more district contacts"
        }

        CLUES {
            CLUE ^"Higuchi's Identity" {
                DESCRIPTION "Hana-no-Ame is the pen name of Shinjo Higuchi, a Unicorn author of considerable fame"
                DISCOVERED_BY "Provided freely during the briefing"
            }
            CLUE ^"Last Known Movements" {
                DESCRIPTION "Higuchi was last seen several days ago. She had been frequenting the Shrine Gardens and various shops in the Unicorn district"
                DISCOVERED_BY "Provided freely during the briefing"
            }
            CLUE ^"The Governor's Hospitality" {
                DESCRIPTION "Higuchi has been staying at the Governor's Manor as Miya Tetsua's personal guest"
                DISCOVERED_BY "Provided freely during the briefing"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Investigation Begins" {
                CONDITION "PCs accept the task and choose where to begin"
                OUTCOME "The city is open to explore. PCs may visit locations in any order."
                LEADS_TO [#tea_ceremony, #shrine_visit, #wharf_investigation, #curiosity_shop_visit, #shins_consultation]
            }
        }
    }

    # --- Phase 2: Investigation ---

    SCENE ^"Tea Ceremony at the Teahouse with No Name" #tea_ceremony {
        TYPE "Intrigue"
        LOCATION #teahouse
        DESCRIPTION "The PCs attend a tea ceremony hosted by Ikoma Kotone, the Lion tea master. Kotone is a diligent professional but has a weakness for gossip and taboo romance stories. She knew Higuchi personally and can share information — but the formal setting of the tea ceremony means PCs must navigate strict social protocol to extract what she knows."

        OBJECTIVES {
            REQUIRED "Learn what Kotone knows about Higuchi's recent behavior"
            OPTIONAL "Avoid breaching tea ceremony protocol"
            OPTIONAL "Discover Kotone's personal connection to Higuchi's writing"
        }

        CHECKS {
            CHECK ^"Tea Ceremony Etiquette" {
                SKILL "social"
                RING "air"
                TN 2
                ON_SUCCESS "The PCs observe proper form and earn Kotone's respect, lowering the TN of subsequent social checks with her by 1"
                ON_FAILURE "A breach of protocol; Kotone is polite but guarded, increasing the TN of subsequent checks by 1"
            }
            CHECK ^"Draw Out Gossip" {
                SKILL "social"
                RING "water"
                TN 3
                ON_SUCCESS "Kotone reveals that Higuchi had become obsessed with a foreign artifact she purchased from a shop in the Unicorn district"
                ON_FAILURE "Kotone deflects with pleasantries and literary discussion"
            }
            CHECK ^"Read Kotone's Demeanor" {
                SKILL "social"
                RING "air"
                TN 2
                ON_SUCCESS "Kotone is genuinely worried about Higuchi — they were friends, bonded over a shared love of forbidden romance stories"
                ON_FAILURE "Kotone appears professionally concerned, nothing more"
            }
        }

        CLUES {
            CLUE ^"The Foreign Artifact" {
                DESCRIPTION "Higuchi purchased a foreign talisman from a curiosity shop in the Unicorn district and became increasingly fixated on it"
                DISCOVERED_BY "Successful TN 3 Social/Water check with Kotone"
            }
            CLUE ^"Higuchi's Obsession" {
                DESCRIPTION "In the days before her disappearance, Higuchi stopped attending social engagements and spent her time researching the talisman's inscriptions"
                DISCOVERED_BY "Successful TN 2 Social/Air check or by offering gossip in trade"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Productive Visit" {
                CONDITION "PCs obtain at least one clue"
                OUTCOME "Kotone wishes them well and offers her teahouse as a safe meeting place if needed"
                LEADS_TO [#shrine_visit, #curiosity_shop_visit, #wharf_investigation]
            }
            RESOLUTION ^"Unproductive Visit" {
                CONDITION "PCs fail to extract useful information"
                OUTCOME "A pleasant but uninformative tea ceremony. The investigation must continue elsewhere."
                LEADS_TO [#shrine_visit, #curiosity_shop_visit, #wharf_investigation]
            }
        }
    }

    SCENE ^"The Shrine Gardens" #shrine_visit {
        TYPE "Roleplay"
        LOCATION #shrine_gardens
        DESCRIPTION "The PCs visit the tranquil Shrine Gardens in the Dragon district, where Dragonfly shrine keeper Tonbo Kuma tends the grounds. Kuma observed Higuchi visiting the gardens frequently in the weeks before her disappearance, and noticed her growing spiritual distress. Kuma is forthcoming but speaks in the elliptical manner of the Dragonfly, requiring patience to parse."

        OBJECTIVES {
            REQUIRED "Learn about Higuchi's spiritual state before her disappearance"
            OPTIONAL "Gain Tonbo Kuma's trust and assistance for later events"
        }

        CHECKS {
            CHECK ^"Interpret Kuma's Riddles" {
                SKILL "scholar"
                RING "air"
                TN 2
                ON_SUCCESS "The PCs understand that Kuma is describing a spiritual possession — something foreign has taken hold of Higuchi"
                ON_FAILURE "Kuma's metaphors about 'fires within' and 'caged birds' seem poetic but unclear"
            }
            CHECK ^"Theology Assessment" {
                SKILL "scholar"
                RING "void"
                TN 3
                ON_SUCCESS "The PCs recognize the signs Kuma describes as consistent with meishōdō — name magic from the Burning Sands. The talisman is the key."
                ON_FAILURE "The spiritual disturbance is clearly supernatural, but its precise nature remains uncertain"
            }
        }

        CLUES {
            CLUE ^"Spiritual Distress" {
                DESCRIPTION "Higuchi was showing signs of spiritual possession — erratic behavior, speaking in tongues, and an unnatural warmth radiating from her person"
                DISCOVERED_BY "Tonbo Kuma shares this freely with respectful visitors"
            }
            CLUE ^"Meishōdō Connection" {
                DESCRIPTION "The possession is connected to meishōdō, name magic from the Burning Sands. The foreign talisman Higuchi activated is a meishōdō artifact containing a bound spirit."
                DISCOVERED_BY "Successful TN 3 Scholar/Void check"
            }
            CLUE ^"Kuma's Warning" {
                DESCRIPTION "Kuma sensed the disturbance growing stronger over several days, then suddenly it vanished — as if moved elsewhere. He believes whoever is sheltering Higuchi is concealing her."
                DISCOVERED_BY "Successful TN 2 Scholar/Air check"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Spiritual Insight" {
                CONDITION "PCs understand the nature of the possession"
                OUTCOME "The investigation gains focus — the PCs now know they are dealing with a spirit possession connected to a foreign artifact"
                LEADS_TO [#curiosity_shop_visit, #shins_consultation, #governor_meeting]
            }
            RESOLUTION ^"Partial Understanding" {
                CONDITION "PCs learn of the distress but not the meishōdō connection"
                OUTCOME "Something supernatural is happening to Higuchi, but the PCs need more information"
                LEADS_TO [#curiosity_shop_visit, #wharf_investigation, #shins_consultation]
            }
        }
    }

    SCENE ^"Unicorn Wharf Investigation" #wharf_investigation {
        TYPE "Combat"
        LOCATION #unicorn_wharf
        DESCRIPTION "The PCs investigate the Unicorn wharf, where Higuchi was reportedly seen before her disappearance. The Kaeru peacekeepers, led by Kaeru Haya, patrol the docks and are suspicious of outsiders asking questions — especially about smuggled goods or foreign artifacts. The investigation may escalate into a skirmish if the PCs push too hard."

        OBJECTIVES {
            REQUIRED "Investigate the wharf for information about Higuchi's movements"
            OPTIONAL "Avoid a confrontation with the Kaeru peacekeepers"
            OPTIONAL "Learn about the artifact trade flowing through the wharf"
        }

        CHECKS {
            CHECK ^"Question Dockworkers" {
                SKILL "social"
                RING "water"
                TN 2
                ON_SUCCESS "A dockworker remembers Higuchi visiting a curiosity shop several times, always leaving with wrapped packages"
                ON_FAILURE "The dockworkers are tight-lipped around strangers"
            }
            CHECK ^"Negotiate with Kaeru Haya" {
                SKILL "social"
                RING "earth"
                TN 3
                ON_SUCCESS "Haya respects directness and shares what she knows — foreign artifacts have been flowing through the wharf from a Fox Clan merchant"
                ON_FAILURE "Haya tells the PCs to leave her wharf and stop interfering with her peacekeepers"
            }
            CHECK ^"Search the Docks" {
                SKILL "trade"
                RING "water"
                TN 2
                ON_SUCCESS "Evidence of recent foreign goods shipments, including crates marked with Burning Sands script"
                ON_FAILURE "The docks are busy and the PCs find nothing distinctive"
            }
        }

        CONFLICT {
            TYPE "combat"
            STAKES "Whether the PCs can investigate freely or must fight their way out"
            OPPONENTS [#kaeru_haya]
        }

        CLUES {
            CLUE ^"Fox Clan Connection" {
                DESCRIPTION "A Fox Clan merchant recently sold a shipment of foreign artifacts through the wharf. Ide Chiharu purchased several items from this shipment."
                DISCOVERED_BY "Successful TN 3 Social/Earth check with Haya or TN 2 Trade/Water search"
            }
            CLUE ^"Burning Sands Script" {
                DESCRIPTION "Crates on the wharf bear markings in Burning Sands script, confirming the foreign origin of the artifacts"
                DISCOVERED_BY "Successful TN 2 Trade/Water search of the docks"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Peaceful Investigation" {
                CONDITION "PCs gather information without provoking the peacekeepers"
                OUTCOME "The Kaeru remain neutral and the PCs leave with useful intelligence"
                LEADS_TO [#curiosity_shop_visit, #shins_consultation]
            }
            RESOLUTION ^"Skirmish on the Docks" {
                CONDITION "PCs provoke or are provoked by the Kaeru peacekeepers"
                OUTCOME "A brief fight breaks out. Regardless of outcome, the PCs attract attention and word reaches the Governor."
                LEADS_TO [#governor_meeting]
            }
        }
    }

    SCENE ^"The Curiosity Shop" #curiosity_shop_visit {
        TYPE "Intrigue"
        LOCATION #curiosity_shop
        DESCRIPTION "The PCs visit Ide Chiharu's curiosity shop to learn about the talisman she sold to Higuchi. Chiharu is a shrewd dealer who will not part with information freely — she expects compensation, favors, or leverage. She knows the talisman was dangerous but did not warn Higuchi, and fears the consequences if this becomes known."

        OBJECTIVES {
            REQUIRED "Learn the nature and origin of the talisman sold to Higuchi"
            OPTIONAL "Obtain documentation about the sealing ritual for the talisman's spirit"
            OPTIONAL "Discover that Chiharu knowingly sold a dangerous artifact"
        }

        CHECKS {
            CHECK ^"Negotiate for Information" {
                SKILL "social"
                RING "water"
                TN 3
                ON_SUCCESS "Chiharu reveals the talisman was a meishōdō artifact — a sealed vessel containing a fire spirit called an ifrit"
                ON_FAILURE "Chiharu offers only generalities about the talisman being 'unusual'"
            }
            CHECK ^"Detect Chiharu's Guilt" {
                SKILL "social"
                RING "air"
                TN 3
                ON_SUCCESS "Chiharu knew the talisman might be dangerous when she sold it. She is worried about liability."
                ON_FAILURE "Chiharu appears to be a simple merchant caught up in events beyond her control"
            }
            CHECK ^"Obtain Sealing Documentation" {
                SKILL "scholar"
                RING "fire"
                TN 2
                ON_SUCCESS "Chiharu provides a scroll documenting the original binding ritual used to seal the ifrit. This will be crucial during the confrontation."
                ON_FAILURE "Chiharu claims no such documentation exists"
            }
        }

        CLUES {
            CLUE ^"The Meishōdō Talisman" {
                DESCRIPTION "The talisman is a meishōdō artifact from the Burning Sands containing an ifrit — a powerful fire spirit. Higuchi accidentally activated it by reading the inscriptions aloud."
                DISCOVERED_BY "Successful TN 3 Social/Water check"
            }
            CLUE ^"Chiharu's Negligence" {
                DESCRIPTION "Chiharu suspected the talisman was dangerous but sold it to Higuchi anyway, motivated by profit"
                DISCOVERED_BY "Successful TN 3 Social/Air check"
            }
            CLUE ^"Sealing Ritual Scroll" {
                DESCRIPTION "A scroll documenting the original binding ritual. This knowledge can be used to re-seal the ifrit during the confrontation."
                DISCOVERED_BY "Successful TN 2 Scholar/Fire check"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Full Disclosure" {
                CONDITION "PCs learn about the ifrit and obtain the sealing scroll"
                OUTCOME "The PCs now understand exactly what happened to Higuchi and have the tools to help her"
                LEADS_TO [#shins_consultation, #governor_meeting]
            }
            RESOLUTION ^"Partial Information" {
                CONDITION "PCs learn about the talisman but not the sealing ritual"
                OUTCOME "The PCs know the problem but lack a complete solution. They need more help."
                LEADS_TO [#shins_consultation, #governor_meeting]
            }
            RESOLUTION ^"Stonewalled" {
                CONDITION "PCs fail to extract meaningful information"
                OUTCOME "Chiharu deflects all inquiries. The PCs must find answers elsewhere."
                LEADS_TO [#shins_consultation, #governor_meeting]
            }
        }
    }

    SCENE ^"Consultation with Daidoji Shin" #shins_consultation {
        TYPE "Roleplay"
        LOCATION #shins_residence
        DESCRIPTION "An optional but rewarding scene. The PCs visit Daidoji Shin, the Crane trade envoy and amateur detective, at his residence. Shin is accompanied by his bodyguard Hiramori Kasami and the shugenja Asahina Nao. Shin has been independently investigating Higuchi's disappearance out of personal curiosity, and Nao has expertise in meishōdō that could prove invaluable."

        OBJECTIVES {
            REQUIRED "Share findings with Shin and pool investigative resources"
            OPTIONAL "Enlist Asahina Nao's help with the meishōdō talisman"
            OPTIONAL "Learn Shin's own theories about the disappearance"
        }

        CHECKS {
            CHECK ^"Impress Shin" {
                SKILL "scholar"
                RING "fire"
                TN 2
                ON_SUCCESS "Shin is genuinely impressed by the PCs' progress and shares everything he knows freely"
                ON_FAILURE "Shin is amused but unimpressed; he shares information but in a leisurely, roundabout fashion"
            }
            CHECK ^"Consult Nao on Meishōdō" {
                SKILL "scholar"
                RING "void"
                TN 2
                ON_SUCCESS "Nao confirms the ifrit theory and explains how a sealing ritual might work — or how the spirit might be freed safely"
                ON_FAILURE "Nao provides general information about meishōdō but nothing actionable"
            }
        }

        CLUES {
            CLUE ^"Shin's Deduction" {
                DESCRIPTION "Shin has deduced that the Governor is hiding Higuchi in the manor. Tetsua's household staff have been purchasing unusual quantities of ice and requesting shugenja wards against fire."
                DISCOVERED_BY "Shin shares this if the PCs have gathered at least 3 other clues"
            }
            CLUE ^"Meishōdō Expertise" {
                DESCRIPTION "Asahina Nao explains that the ifrit can potentially be freed, re-sealed, or destroyed — each option carries different spiritual and ethical consequences"
                DISCOVERED_BY "Successful TN 2 Scholar/Void check with Nao"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Alliance Formed" {
                CONDITION "PCs share their findings and gain Shin's support"
                OUTCOME "Shin and Nao will assist at the Governor's Manor if asked. The PCs gain powerful allies for the confrontation."
                LEADS_TO [#governor_meeting]
            }
            RESOLUTION ^"Cordial Parting" {
                CONDITION "PCs visit but do not share enough information to form a partnership"
                OUTCOME "Shin wishes them luck with characteristic nonchalance. The PCs proceed without his direct aid."
                LEADS_TO [#governor_meeting]
            }
        }
    }

    SCENE ^"Audience with the Governor" #governor_meeting {
        TYPE "Intrigue"
        LOCATION #governors_manor
        DESCRIPTION "The PCs confront Governor Miya Tetsua at his manor. Tetsua has been sheltering the possessed Higuchi, trying to manage the situation quietly to avoid a scandal. He is reluctant to admit the truth but can be persuaded, pressured, or confronted with evidence. Once the truth is out, Tetsua asks the PCs to resolve the situation — setting up the final confrontation."

        PREREQUISITES {
            MINIMUM_CLUES 4
        }

        OBJECTIVES {
            REQUIRED "Persuade or compel Tetsua to reveal Higuchi's location"
            REQUIRED "Gain access to Higuchi in the manor gardens"
            OPTIONAL "Understand Tetsua's motives for concealing the situation"
        }

        CHECKS {
            CHECK ^"Diplomatic Pressure" {
                SKILL "social"
                RING "earth"
                TN 3
                ON_SUCCESS "Tetsua concedes — he has been trying to protect Higuchi and the city's reputation, but the situation has grown beyond his control"
                ON_FAILURE "Tetsua deflects, insisting everything is under control"
            }
            CHECK ^"Present Evidence" {
                SKILL "scholar"
                RING "fire"
                TN 2
                ON_SUCCESS "The weight of evidence is undeniable. Tetsua admits to sheltering Higuchi and reveals the situation is deteriorating — the ifrit grows stronger each day."
                ON_FAILURE "Tetsua disputes the PCs' conclusions but appears shaken"
            }
            CHECK ^"Appeal to Duty" {
                SKILL "social"
                RING "void"
                TN 3
                ON_SUCCESS "Tetsua is moved. As an Imperial servant, his duty is to the wellbeing of all — including Higuchi. He opens the manor gardens to the PCs."
                ON_FAILURE "Tetsua invokes his authority as governor and stonewalls"
            }
        }

        CLUES {
            CLUE ^"The Governor's Burden" {
                DESCRIPTION "Tetsua has been using Imperial resources to contain Higuchi — shugenja wards, isolation, and secrecy. But the ifrit's power is growing, and the wards are failing."
                DISCOVERED_BY "Successful check or presenting sufficient prior evidence"
            }
            CLUE ^"Higuchi's Location" {
                DESCRIPTION "Higuchi is in the manor gardens, contained within a circle of prayer wards. The wards will not hold much longer."
                DISCOVERED_BY "Tetsua reveals this once persuaded"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Governor Cooperates" {
                CONDITION "PCs successfully persuade Tetsua"
                OUTCOME "Tetsua grants full access to the gardens and offers whatever support he can provide"
                LEADS_TO [#confrontation]
            }
            RESOLUTION ^"Forced Entry" {
                CONDITION "PCs bypass Tetsua or enter the gardens without permission"
                OUTCOME "The PCs reach Higuchi but have made an enemy of the Governor. Complications will follow."
                LEADS_TO [#confrontation]
            }
        }
    }

    # --- Phase 3: Confrontation ---

    SCENE ^"The Possessed Author" #confrontation {
        TYPE "Combat"
        LOCATION #manor_gardens
        DESCRIPTION "The climactic encounter. In the manor gardens, the PCs find Shinjo Higuchi within a failing circle of prayer wards. The ifrit's fire burns within her — scorch marks scar the garden, the air shimmers with heat, and Higuchi speaks in two voices. The PCs must decide how to resolve the situation: free the ifrit, seal it back into the talisman, or destroy it. Each choice carries moral weight and mechanical consequences."

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
            OPPONENTS [#shinjo_higuchi, #adventure_ifrit]
        }

        CHECKS {
            CHECK ^"Perform Sealing Ritual" {
                SKILL "scholar"
                RING "void"
                TN 4
                APPROACH "void"
                ON_SUCCESS "The ifrit is re-sealed within the talisman. Higuchi is freed but weakened."
                ON_FAILURE "The ritual falters. The ifrit breaks free of the wards entirely and must be confronted directly."
            }
            CHECK ^"Commune with the Ifrit" {
                SKILL "social"
                RING "fire"
                TN 4
                ON_SUCCESS "The ifrit is a sentient being, confused and frightened. It did not choose to possess Higuchi. It can be reasoned with."
                ON_FAILURE "The ifrit lashes out with fire, treating the attempt at communication as an attack"
            }
            CHECK ^"Subdue Higuchi" {
                SKILL "martial"
                RING "water"
                TN 3
                ON_SUCCESS "Higuchi is restrained without serious injury, buying time for a ritual or negotiation"
                ON_FAILURE "Higuchi fights with supernatural strength; the ifrit's power surges"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Free the Ifrit" {
                CONDITION "PCs negotiate with the ifrit and help it separate from Higuchi willingly"
                OUTCOME "The ifrit departs peacefully, returning to the spirit realms. Higuchi is saved. The PCs have shown compassion to a sentient being, but some may question releasing a dangerous spirit. Governor Tetsua is relieved but uneasy."
            }
            RESOLUTION ^"Seal the Ifrit" {
                CONDITION "PCs perform the sealing ritual successfully (requires the sealing scroll from Chiharu)"
                OUTCOME "The ifrit is imprisoned once more. Higuchi is freed. The PCs have obeyed the Governor's wishes and followed duty — but they have condemned a sentient being to eternal captivity."
            }
            RESOLUTION ^"Destroy the Ifrit" {
                CONDITION "PCs defeat the ifrit in combat"
                OUTCOME "The ifrit is destroyed. Higuchi survives but is deeply traumatized. The threat is ended, but at the cost of a life — even a spirit's."
            }
            RESOLUTION ^"Catastrophic Failure" {
                CONDITION "PCs fail to contain or resolve the situation"
                OUTCOME "The ifrit breaks free entirely, causing significant damage to the manor gardens before fleeing into the countryside. Higuchi survives but the ifrit remains a threat. The Governor is furious."
            }
        }
    }

    # --- Phase 4: Resolution ---

    SCENE ^"Aftermath" #aftermath {
        TYPE "Montage"
        LOCATION #governors_manor
        DESCRIPTION "The aftermath of the confrontation. The PCs deal with the consequences of their choices, receive recognition or censure, and reflect on the ethical weight of their decision. The city returns to its uneasy equilibrium."

        MONTAGE {
            MOMENT ^"Higuchi's Recovery" {
                DESCRIPTION "Shinjo Higuchi recovers from the ordeal. If the PCs treated her with compassion, she expresses deep gratitude and promises to write of their deeds. If the ifrit was sealed or destroyed, she is haunted by guilt over its fate."
            }
            MOMENT ^"The Governor's Judgment" {
                DESCRIPTION "Miya Tetsua assesses the PCs' handling of the situation. Cooperative PCs receive his formal thanks and a letter of commendation. Those who forced entry or caused a scene receive a more measured response."
            }
            MOMENT ^"Chiharu's Fate" {
                DESCRIPTION "If the PCs exposed Chiharu's negligence, she faces consequences — her shop may be closed, or she may seek to make amends. If not, she continues her trade, wiser but unrepentant."
            }
            MOMENT ^"The City Endures" {
                DESCRIPTION "The City of the Rich Frog returns to its routine of trade, rivalry, and uneasy coexistence. But the PCs have left their mark, and the factions remember."
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"A Story Ends" {
                CONDITION "All aftermath moments are resolved"
                OUTCOME "The adventure concludes. The PCs carry the weight of their choices forward."
            }
        }
    }

    # =============
    # REWARDS
    # =============

    REWARDS {
        XP_BASE 3
        CONDITIONAL_REWARDS {
            REWARD "Saved Shinjo Higuchi's life" {
                XP 1
            }
            REWARD "Resolved the ifrit's situation with compassion (freed or negotiated)" {
                XP 1
            }
            REWARD "Maintained the Governor's trust and cooperation throughout" {
                XP 1
            }
            REWARD "Discovered the full truth about the meishōdō talisman's origin" {
                XP 1
            }
            REWARD "Achieved personal goals related to ninjo or giri" {
                XP 2
            }
        }
    }
}
