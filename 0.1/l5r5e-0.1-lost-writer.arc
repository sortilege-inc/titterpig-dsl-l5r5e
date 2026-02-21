# L5R 5E - THE LOST WRITER IN THE CITY OF THE RICH FROG (ARC)
#
# Source: Legend of the Five Rings 5th Edition - Children of the Five Winds, Chapter 4
# Publisher: Fantasy Flight Games

ARC "L5R5e_LostWriter" {
    NAME "The Lost Writer in the City of the Rich Frog"
    VERSION "0.1.0"
    DEPENDS_ON "L5R5e"
    USES_EXTENSION "L5R5e_Children_Five_Winds"

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

        DEF ^"Shinjo Higuchi" #shinjo_higuchi {
            TYPE "npc"
            ROLE "The missing author, possessed by an ifrit"
            DESCRIPTION "Popular author of stories and poems (pen name Hana-no-Ame), possessed by an ifrit from a meishodo talisman while visiting the City of the Rich Frog."
            STATS {
                rings.air = 3
                rings.earth = 2
                rings.fire = 5
                rings.water = 1
                rings.void = 3
                endurance = 10
                composure = 10
                focus = 5
                vigilance = 3
                honor = 60
                glory = 50
                status = 39
                skills.artisan = 1
                skills.martial = 2
                skills.scholar = 1
                skills.social = 1
                skills.trade = 0
                combat_conflict_rank = 4
                intrigue_conflict_rank = 1
            }
        }

        DEF ^"Miya Tetsua" #miya_tetsua {
            TYPE "npc"
            ROLE "Governor of the City of the Rich Frog"
            DESCRIPTION "Governor of the City of the Rich Frog, friend to many influential citizens. Has been housing Shinjo Higuchi while she writes her newest novel."
            STATS {
                rings.air = 4
                rings.earth = 2
                rings.fire = 4
                rings.water = 3
                rings.void = 2
                endurance = 12
                composure = 12
                focus = 8
                vigilance = 4
                honor = 45
                glory = 55
                status = 60
                skills.artisan = 3
                skills.martial = 2
                skills.scholar = 4
                skills.social = 4
                skills.trade = 1
                combat_conflict_rank = 2
                intrigue_conflict_rank = 5
            }
        }

        DEF ^"Ikoma Kotone" #ikoma_kotone {
            TYPE "npc"
            ROLE "Tea master at the Teahouse with No Name"
            DESCRIPTION "Tea master and owner of the Teahouse with No Name in the Lion district. Diligent and professional, with a weakness for gossip and taboo romance stories."
            STATS {
                rings.air = 3
                rings.earth = 2
                rings.fire = 2
                rings.water = 3
                rings.void = 3
                endurance = 8
                composure = 10
                focus = 5
                vigilance = 3
                honor = 60
                glory = 50
                status = 39
                skills.artisan = 2
                skills.martial = 0
                skills.scholar = 2
                skills.social = 3
                skills.trade = 0
                combat_conflict_rank = 1
                intrigue_conflict_rank = 4
            }
        }

        DEF ^"Tonbo Kuma" #tonbo_kuma {
            TYPE "npc"
            ROLE "Dragonfly shrine keeper"
            DESCRIPTION "A quiet Dragonfly shrine keeper who tends the gardens in the Dragon district. Observed Higuchi's growing obsession with a foreign talisman."
            STATS {
                rings.air = 2
                rings.earth = 3
                rings.fire = 2
                rings.water = 3
                rings.void = 3
                endurance = 10
                composure = 12
                focus = 5
                vigilance = 3
                honor = 55
                glory = 30
                status = 30
                skills.artisan = 1
                skills.martial = 1
                skills.scholar = 3
                skills.social = 2
                skills.trade = 1
                combat_conflict_rank = 1
                intrigue_conflict_rank = 2
            }
        }

        DEF ^"Kaeru Haya" #kaeru_haya {
            TYPE "npc"
            ROLE "Ronin peacekeeper of the Unicorn wharf"
            DESCRIPTION "Old peacekeeper of the Kaeru family of ronin, leading the security group along the wharf in the Unicorn district. Has developed an interest in spiritual artifacts from beyond Rokugan."
            STATS {
                rings.air = 2
                rings.earth = 3
                rings.fire = 2
                rings.water = 1
                rings.void = 1
                endurance = 10
                composure = 6
                focus = 5
                vigilance = 2
                honor = 30
                glory = 40
                status = 20
                skills.artisan = 0
                skills.martial = 2
                skills.scholar = 1
                skills.social = 0
                skills.trade = 1
                combat_conflict_rank = 2
                intrigue_conflict_rank = 1
            }
        }

        DEF ^"Ide Chiharu" #ide_chiharu {
            TYPE "npc"
            ROLE "Unicorn antiquarian and artifact dealer"
            DESCRIPTION "Unicorn antiquarian and seller of artifacts who recently purchased several supposedly mystical items from a Fox Clan merchant, then sold one to Higuchi."
            STATS {
                rings.air = 3
                rings.earth = 1
                rings.fire = 1
                rings.water = 3
                rings.void = 1
                endurance = 4
                composure = 8
                focus = 4
                vigilance = 3
                honor = 45
                glory = 40
                status = 20
                skills.artisan = 2
                skills.martial = 0
                skills.scholar = 0
                skills.social = 2
                skills.trade = 3
                combat_conflict_rank = 1
                intrigue_conflict_rank = 3
            }
        }

        DEF ^"Daidoji Shin" #daidoji_shin {
            TYPE "npc"
            ROLE "Crane trade envoy and amateur detective"
            DESCRIPTION "Louche layabout and wastrel turned amateur gentleman detective. Crane Clan's trade envoy in the City of the Rich Frog."
            STATS {
                rings.air = 5
                rings.earth = 2
                rings.fire = 3
                rings.water = 5
                rings.void = 2
                endurance = 8
                composure = 16
                focus = 8
                vigilance = 5
                honor = 60
                glory = 50
                status = 40
                skills.artisan = 5
                skills.martial = 2
                skills.scholar = 3
                skills.social = 5
                skills.trade = 2
                combat_conflict_rank = 5
                intrigue_conflict_rank = 11
            }
        }

        DEF ^"Asahina Nao" #asahina_nao {
            TYPE "npc"
            ROLE "Crane shugenja with meishodo expertise"
            DESCRIPTION "Crane shugenja visiting Daidoji Shin in the City of the Rich Frog. An old friend of the governor, called upon to assist with the situation involving Shinjo Higuchi."
            STATS {
                rings.air = 2
                rings.earth = 2
                rings.fire = 3
                rings.water = 3
                rings.void = 3
                endurance = 8
                composure = 10
                focus = 5
                vigilance = 2
                honor = 50
                glory = 40
                status = 40
                skills.artisan = 3
                skills.martial = 0
                skills.scholar = 3
                skills.social = 2
                skills.trade = 0
                combat_conflict_rank = 2
                intrigue_conflict_rank = 2
            }
        }

        DEF ^"Adventure Ifrit" #adventure_ifrit {
            TYPE "npc"
            ROLE "Fire spirit possessing Higuchi"
            DESCRIPTION "Fire spirit from the Burning Sands, long dormant within a magical meishodo talisman. Accidentally awoken by Higuchi, it has possessed her in its confusion. This profile represents the ifrit in its natural, unbound form."
            STATS {
                rings.air = 2
                rings.earth = 2
                rings.fire = 6
                rings.water = 1
                rings.void = 1
                endurance = 12
                composure = 3
                focus = 4
                vigilance = 1
                skills.artisan = 0
                skills.martial = 3
                skills.scholar = 3
                skills.social = 2
                skills.trade = 3
                combat_conflict_rank = 9
                intrigue_conflict_rank = 2
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
            TAGS ["unicorn-district", "trade", "meishodo"]
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
                ON_SUCCESS "The PCs recognize the signs Kuma describes as consistent with meishodo — name magic from the Burning Sands. The talisman is the key."
                ON_FAILURE "The spiritual disturbance is clearly supernatural, but its precise nature remains uncertain"
            }
        }

        CLUES {
            CLUE ^"Spiritual Distress" {
                DESCRIPTION "Higuchi was showing signs of spiritual possession — erratic behavior, speaking in tongues, and an unnatural warmth radiating from her person"
                DISCOVERED_BY "Tonbo Kuma shares this freely with respectful visitors"
            }
            CLUE ^"Meishodo Connection" {
                DESCRIPTION "The possession is connected to meishodo, name magic from the Burning Sands. The foreign talisman Higuchi activated is a meishodo artifact containing a bound spirit."
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
                CONDITION "PCs learn of the distress but not the meishodo connection"
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
                ON_SUCCESS "Chiharu reveals the talisman was a meishodo artifact — a sealed vessel containing a fire spirit called an ifrit"
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
            CLUE ^"The Meishodo Talisman" {
                DESCRIPTION "The talisman is a meishodo artifact from the Burning Sands containing an ifrit — a powerful fire spirit. Higuchi accidentally activated it by reading the inscriptions aloud."
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
        DESCRIPTION "An optional but rewarding scene. The PCs visit Daidoji Shin, the Crane trade envoy and amateur detective, at his residence. Shin is accompanied by his bodyguard Hiramori Kasami and the shugenja Asahina Nao. Shin has been independently investigating Higuchi's disappearance out of personal curiosity, and Nao has expertise in meishodo that could prove invaluable."

        OBJECTIVES {
            REQUIRED "Share findings with Shin and pool investigative resources"
            OPTIONAL "Enlist Asahina Nao's help with the meishodo talisman"
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
            CHECK ^"Consult Nao on Meishodo" {
                SKILL "scholar"
                RING "void"
                TN 2
                ON_SUCCESS "Nao confirms the ifrit theory and explains how a sealing ritual might work — or how the spirit might be freed safely"
                ON_FAILURE "Nao provides general information about meishodo but nothing actionable"
            }
        }

        CLUES {
            CLUE ^"Shin's Deduction" {
                DESCRIPTION "Shin has deduced that the Governor is hiding Higuchi in the manor. Tetsua's household staff have been purchasing unusual quantities of ice and requesting shugenja wards against fire."
                DISCOVERED_BY "Shin shares this if the PCs have gathered at least 3 other clues"
            }
            CLUE ^"Meishodo Expertise" {
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
            REWARD "Discovered the full truth about the meishodo talisman's origin" {
                XP 1
            }
            REWARD "Achieved personal goals related to ninjo or giri" {
                XP 2
            }
        }
    }
}
