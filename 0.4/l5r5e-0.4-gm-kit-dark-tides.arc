# L5R 5E - DARK TIDES (ARC)
#
# Source: Legend of the Five Rings 5th Edition - Game Master's Kit (Dark Tides adventure booklet)
# Publisher: Fantasy Flight Games
# ISBN: 978-1-63344-338-9
# Product Code: L5R05
#
# A sandbox investigation adventure in Slow Tide Harbor, the Tortoise Clan's
# obscure smuggling port. PCs investigate the disappearance of opium-addicted
# samurai, uncovering a conspiracy to kidnap and sell them to a maho-tsukai
# for blood sacrifices.
#
# Mechanical content (Tortoise Clan, Kasuga Family, Kasuga Smuggler School,
# NPC stat blocks) is in l5r5e-0.3-gm-kit-mechanics.ttrpg.

ARC "L5R5e_DarkTides" {
    NAME "Dark Tides"
    VERSION "0.4"
    SPEC_VERSION "0.4"
    DEPENDS_ON "L5R5e_Core_Core"
    USES_EXTENSION "L5R5e_GM_Kit_Mechanics"

    THEMES {
        "Composure and emotional stress — resisting the urge to cut down those who offend your sensibilities"
        "The tension between duty and the moral compromises of a lawless town"
        "Three interchangeable villains — the GM chooses which of Kasuga Yumiko, Boss Yaguro, or Azif is the true culprit"
        "Uncovering forbidden magic and a blasphemous maho cult behind the kidnappings"
    }

    # =============
    # CAST
    # =============

    CAST {
        # --- Primary Villains (GM chooses one) ---
        # Stat blocks in l5r5e-0.3-gm-kit-mechanics.ttrpg

        #L5RGMK30aB2cD4eF6gH8iJ0k ^"Kasuga Yumiko" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Kasuga Yumiko, Renegade Samurai

            PROPERTIES {
                ^"Role"        STRING "Potential villain: ambitious Tortoise smuggler"
                ^"Description" STRING "Tortoise samurai and one of the two most powerful smugglers in Slow Tide Harbor. Sponsors Boss Kizo. If chosen as villain, she is funneling kidnapped samurai to Kitsu Sokori until the time is ripe to swoop in, destroy the cult, and reap political rewards. Uses Loyal Bushi profile with modifications."
            }
        }

        #L5RGMK31lM3nO5pQ7rS9tU1v ^"Boss Yaguro" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Boss Yaguro, Gang Leader

            PROPERTIES {
                ^"Role"        STRING "Potential villain: desperate, declining crime lord"
                ^"Description" STRING "Aging gang leader who controls the Green Rest opium den. His territory is shrinking under pressure from Bosses Hana and Kizo. If chosen as villain, he has escalated to selling drug-addicted samurai to Kitsu Sokori via Gaku."
            }
        }

        #L5RGMK32wX4yZ6aB8cD0eF2g ^"Azif the Smooth" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Azif the Smooth, Gaijin Smuggler

            PROPERTIES {
                ^"Role"        STRING "Potential villain: bold gaijin smuggler"
                ^"Description" STRING "Gaijin captain of the Obedient Slave, from al-Bhagvar along the Sand Road. Smuggles goods including Blue Flame drug and gaijin pepper. Allied with Boss Hana. If chosen as villain, he is simply pursuing profit by smuggling people on behalf of Kitsu Sokori."
            }
        }

        # --- Kitsu Sokori (true mastermind, recurring nemesis) ---

        #L5RGMK33hI5jK7lM9nO1pQ3r ^"Kitsu Sokori" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Kitsu Sokori, Maho-Tsukai

            PROPERTIES {
                ^"Role"        STRING "True villain: maho-tsukai mastermind behind the kidnappings"
                ^"Description" STRING "The true villain, conducting blood sacrifices to boost her supernatural power. Appears only at distance during the adventure's climax aboard a converted fishing boat. Intended as a recurring nemesis. Water Ring 4, Theology skill rank 3. Known maho: Grip of Anguish, Incite Haunting."
            }
        }

        # --- Kitsu Sokori's Agent ---

        #L5RGMK34sT6uV8wX0yZ2aB4c ^"Gaku" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Gaku, Maho Apprentice

            PROPERTIES {
                ^"Role"        STRING "Sokori's agent: formidable ronin maho apprentice"
                ^"Description" STRING "Large, physically memorable ronin with a distinctive neck tattoo. Coordinates kidnappings and is responsible for shipping prisoners to Sokori. Stays at Suitengu's Rest. Uses Wicked Maho-Tsukai profile plus Grip of Anguish and Incite Haunting."
            }
        }

        # --- Crime Lords ---

        #L5RGMK35dE7fG9hI1jK3lM5n ^"Boss Hana" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Boss Hana, Gang Leader

            PROPERTIES {
                ^"Role"        STRING "Crime lord: controls eastern Wallow and Golden Dream opium den"
                ^"Description" STRING "Lean, middle-aged woman known as 'the Flower.' Former brothel madam turned crime lord. Controls eastern Wallow and the Golden Dream opium den. Allied with Azif, which gives her access to Blue Flame. Expanding aggressively at Boss Yaguro's expense."
            }
        }

        #L5RGMK36oP8qR0sT2uV4wX6y ^"Boss Kizo" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Boss Kizo, Gang Leader

            PROPERTIES {
                ^"Role"        STRING "Crime lord: runs Splendid Visions print shop and protection rackets"
                ^"Description" STRING "Appears harmless, speaks softly, often seen walking with grandchildren. Beneath the facade, a cold and calculating criminal. Runs protection rackets in the Merchant District. Sponsored by Kasuga Yumiko. Also a moneylender to whom Hiroshige owed debts."
            }
        }

        # --- Town Officials ---

        #L5RGMK37zA9bC1dE3fG5hI7j ^"Kasuga Mugatsu" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Kasuga Mugatsu, Governor

            PROPERTIES {
                ^"Role"        STRING "Governor of Slow Tide Harbor"
                ^"Description" STRING "Lean, bone-thin man in late middle age. Past normal retirement age but has no heirs. Indulges in opium. Prefers not to be troubled by governance; content so long as taxes and bribes come in and there is no fighting in the streets. Uses Venerable Provincial Daimyo profile, Gruff demeanor."
            }
        }

        #L5RGMK38kL0mN2oP4qR6sT8u ^"Kasuga Mikoto" DEF {
            APPLIES TO [^"NPC"]

            # See: l5r5e-0.3-gm-kit-mechanics.ttrpg::Kasuga Mikoto, Magistrate

            PROPERTIES {
                ^"Role"        STRING "Tortoise Clan magistrate for Slow Tide Harbor"
                ^"Description" STRING "Pouch-faced woman in late thirties, widow with two children (Chisa, 12, and Tokko, 10). Appears less intelligent than she is — drooping lip, vague speech — but this is an act. Takes a leave-well-enough-alone attitude. Hostile to Crane PCs. Knows all major criminal players but shares information reluctantly. Uses Seasoned Courtier profile, Detached demeanor."
            }
        }

        # --- Investigation NPCs (narrative only) ---

        #L5RGMK39vW1xY3zA5bC7dE9f ^"Doji Hiroka" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Crane courtier who briefs the PCs"
                ^"Description" STRING "Charming, elegant Crane woman in her thirties. Hair dyed pure white. Explains the situation using delicate, indirect language. Represents Otomo Saneda, who is too important to meet the PCs himself."
            }
        }

        #L5RGMK40gH2iJ4kL6mN8oP0q ^"Chiyu" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Innkeeper of the Inn of Many Paths"
                ^"Description" STRING "Portly, middle-aged commoner. Normally cheerful and raucous, but withdrawn and careful with strange samurai. Two teenage sons serve as workers and bouncers. Hiroshige stayed at her inn for four months."
            }
        }

        #L5RGMK41rS3tU5vW7xY9zA1b ^"Kakita Amano" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Crane artist and opium addict, Hiroshige's friend"
                ^"Description" STRING "Thin, unhealthy artist living in a flophouse in the Wallow. Sells sumi-e paintings to Kizo's shop. Addicted to Blue Flame opium. Paranoid since friends' disappearances. Publicly accused Boss Kizo of murder, then went into hiding."
            }
        }

        #L5RGMK42cD4eF6gH8iJ0kL2m ^"Bayushi Naizu" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Scorpion junshin living in exile"
                ^"Description" STRING "A junshin: a 'pure of heart' Scorpion whose moral doubts caused him to be exiled to Slow Tide Harbor. Wry, world-weary, but friendly. Knows the identities of all major players in town. Seeks out new friendships to combat boredom."
            }
        }

        #L5RGMK43nO5pQ7rS9tU1vW3x ^"Hade" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Gaudy ronin, witness to a kidnapping"
                ^"Description" STRING "Bedraggled ronin who formerly worked as a bouncer at the Waiting Cat gambling house. Wore a gaudy embroidered eyepatch (cosmetic). Witnessed part of Hiroshige's kidnapping and was hit by Gaku's maho, leaving him consumed with lingering fear. Now sleeping in stables, deep in opium addiction. His stable counts as Defiled terrain."
            }
        }

        #L5RGMK44yZ6aB8cD0eF2gH4i ^"Master Aoi" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Manager of the Golden Dream opium den"
                ^"Description" STRING "Short, muscular woman in her forties. Hair tied back with a sheathed knife. Not inclined to cooperate but aware she cannot defy Imperial authority too strongly. Makes vague threats about Boss Hana's backing. If Azif is villain, she knows about the kidnapping arrangement."
            }
        }

        #L5RGMK45jK7lM9nO1pQ3rS5t ^"Master Awa" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Manager of the Green Rest opium den"
                ^"Description" STRING "Skinny, desperately nervous older man. Grovels and simpers. Desperate for business as the Green Rest loses customers to the Golden Dream. Can identify missing customers and the tattooed ronin (Gaku) who was last seen talking to Yasuki Suzaku."
            }
        }

        #L5RGMK46uV8wX0yZ2aB4cD6e ^"Doro" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Pawnbroker and moneylender in the Wallow"
                ^"Description" STRING "Studious older commoner with gaijin spectacles. Lends to opium addicts. Two of his debtors (Hiroshige and Kasuga Michiko) have disappeared. When he inquired, a trio of ruffians led by a large tattooed ronin threatened him."
            }
        }

        #L5RGMK47fG9hI1jK3lM5nO7p ^"Kasuga Nagato" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Harbormaster"
                ^"Description" STRING "Portly, unhealthy man in his forties with a perpetual sneer. Present mornings and mid-afternoons (often drunk by the latter). Wholly corrupt. Knows all ships and which carry legitimate cargo, but won't share without bribes or pressure."
            }
        }

        #L5RGMK48qR0sT2uV4wX6yZ8a ^"Ojo" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Chief priest at the Shrine to Jikoju"
                ^"Description" STRING "Long-faced, friendly priest. Socializes with gaijin, hoping to lead them to Enlightenment. Does not tie directly into the adventure but can offer guidance and clues at GM's discretion."
            }
        }

        # --- Victims ---

        #L5RGMK49bC1dE3fG5hI7jK9l ^"Otomo Hiroshige" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Missing Imperial noble (primary investigation target)"
                ^"Description" STRING "Wastrel offspring of Otomo Saneda, an Imperial noble of wealth and influence. Opium addict who fled to Slow Tide Harbor under the alias 'Doji Hiroshige.' Stayed at the Inn of Many Paths for four months. Kidnapped from an alleyway near the Golden Dream about two weeks ago."
            }
        }

        #L5RGMK50mN2oP4qR6sT8uV0w ^"Kasuga Toru" DEF {
            APPLIES TO [^"NPC"]

            PROPERTIES {
                ^"Role"        STRING "Missing Tortoise samurai"
                ^"Description" STRING "Short, bad-tempered Tortoise samurai. Wastrel and opium addict notorious for brawling. Thrown out of the Golden Dream five days ago after starting a fight, then left with Gaku for another opium den. Kidnapped from his apartment."
            }
        }

        # Other victims (Kasuga Michiko, Fubato, Yasuki Suzaku) are referenced
        # in investigations but have no stat blocks or direct scenes.

        # --- Minions ---
        # Ruffians, Gaijin Smugglers, Tortoise Samurai profiles in mechanics.ttrpg
    }

    # =============
    # LOCATIONS
    # =============

    LOCATION ^"Slow Tide Harbor" #slow_tide {
        DESCRIPTION "Taimana Choryu, a thriving but obscure port town northwest of Otosan Uchi. About 3,000 residents. Built on a peninsula in a swampy lagoon off the Bay of the Golden Sun. No walls or fortifications. The Tortoise Clan's major holding and primary smuggling nexus. Gaijin goods freely available, opium widely tolerated, samurai often indistinguishable from peasants."
        TAGS ["urban", "port", "smuggling", "tortoise-clan", "lawless"]

        LOCATION ^"Governor's Neighborhood" #governors_neighborhood {
            DESCRIPTION "The closest thing to a 'Noble Quarter.' The governor's large two-story estate with walled garden, stables, guard station, and servants' quarters. High-ranking Tortoise officials live nearby."
            TAGS ["official", "formal"]
        }

        LOCATION ^"Merchant District" #merchant_district {
            DESCRIPTION "Network of tangled streets lined with shops, businesses, and warehouses. Ironically named — more accurately a 'smugglers' district.' Always crowded day and night. Contains the open-air market, Boss Kizo's Splendid Visions print shop, and the Inn of Many Paths."
            TAGS ["trade", "crowded", "investigation"]

            LOCATION ^"Inn of Many Paths" #inn_many_paths {
                DESCRIPTION "Two-story inn on the east side of the open-air market. Run by Chiyu. The most 'respectable' inn in town. Caters equally to samurai and peasants. Where Otomo Hiroshige stayed and where the PCs likely begin investigating."
                TAGS ["lodging", "investigation-start"]
            }

            LOCATION ^"Splendid Visions" #splendid_visions {
                DESCRIPTION "Boss Kizo's woodblock print and sumi-e art shop. His public front for protection rackets."
                TAGS ["trade", "crime-front"]
            }

            LOCATION ^"Open-Air Market" #market {
                DESCRIPTION "Mix of wooden stalls and silk-shaded tables. Gaijin items sold openly: jewelry, exotic weapons, spices, cosmetics. Opium not sold openly but herb vendors covertly direct customers."
                TAGS ["trade", "gaijin-goods"]
            }
        }

        LOCATION ^"Dockside" #dockside {
            DESCRIPTION "Almost a li of coastline along the lagoon's northern shore. Dozens of piers, 10-15 ships at any time including at least one foreign vessel. Warehouses, cheap inns, sake houses, gambling dens, brothels, and opium parlors."
            TAGS ["port", "dangerous", "climactic-battle"]

            LOCATION ^"Suitengu's Rest" #suitengus_rest {
                DESCRIPTION "Less disreputable inn on the southern docks. Half the guests are samurai (mostly Tortoise and Mantis sailors). Azif keeps rooms here for meetings. Gaku also stays here."
                TAGS ["lodging", "investigation"]
            }

            LOCATION ^"Waiting Cat Gambling House" #waiting_cat {
                DESCRIPTION "Gambling den where Hade formerly worked as bouncer. Crowded tables, dice games, customers of all stations."
                TAGS ["gambling", "investigation"]
            }
        }

        LOCATION ^"The Wallow" #wallow {
            DESCRIPTION "The seediest part of town. Two long parallel streets — the Street of False Hopes and the Street of Lowering Clouds — connected by crooked alleyways. Opium dens, gaudy brothels, predatory moneylenders, flophouses. Where samurai have been disappearing. Named ironically from a long-ago Crane Magistrate's insult."
            TAGS ["dangerous", "criminal", "investigation"]

            LOCATION ^"Golden Dream Opium Den" #golden_dream {
                DESCRIPTION "Boss Hana's highly successful opium den on the eastern Wallow. Offers Blue Flame-enhanced opium courtesy of Azif. Currently the most popular den in town. Managed by Master Aoi with her bodyguard Mugu."
                TAGS ["opium", "crime", "investigation"]
            }

            LOCATION ^"Green Rest Opium Den" #green_rest {
                DESCRIPTION "Boss Yaguro's opium den on the western Wallow. Formerly the most popular, now losing customers to the Golden Dream. Visibly less crowded. Managed by Master Awa. Yaguro watches each visitor from his back office."
                TAGS ["opium", "crime", "investigation"]
            }
        }

        LOCATION ^"Shrine to Jikoju" #shrine_jikoju {
            DESCRIPTION "Pagoda-roofed shrine to the Fortune of the East Wind, large enough to almost be a temple. Three monks, led by the priest Ojo. Does not tie directly into the adventure but available for spiritual PCs."
            TAGS ["spiritual", "optional"]
        }

        LOCATION ^"Outskirts" #outskirts {
            DESCRIPTION "Residential areas, artisan shops, farmlands. Rice fields are sparse — the town depends on trade for food. The burakumin village is on the northern fringe."
            TAGS ["rural", "outskirts"]

            LOCATION ^"Burakumin Village" #burakumin_village {
                DESCRIPTION "Satellite village of about 100 hinin on the northern fringe. Connected by two winding paths: one to the residential area, one to the Street of Lowering Clouds. Can provide crucial forensic information about Yasuki Suzaku's body."
                TAGS ["investigation", "social-challenge"]
            }

            LOCATION ^"The Warehouse" #warehouse {
                DESCRIPTION "Tall, broad rectangular wooden building with cheap tile roof on the far northern Merchant District fringe. Large sliding main door, smaller side and back doors, all barred from inside. Contains crates of illicit goods and a prisoner holding area with iron manacles. The identity of the goods reveals which villain controls it."
                TAGS ["combat", "investigation", "act-two"]
            }
        }
    }

    # =============
    # FLOW
    # =============

    FLOW {
        PHASE ^"Introduction" {
            DESCRIPTION "PCs are briefed on the disappearance of Otomo Hiroshige and travel to Slow Tide Harbor"
            PACING "1 scene, establishing the mission"

            SCENE_REF #briefing
        }

        PHASE ^"Act One: Investigation" {
            DESCRIPTION "Sandbox investigation. PCs explore Slow Tide Harbor, meet with officials, visit the inn, and follow leads through the criminal underworld. Goal: learn the lay of the land and gain clues pointing to the villain's warehouse."
            PACING "Variable, player-driven. Multiple investigation paths available in any order."

            SCENE_REF #meeting_governor
            SCENE_REF #meeting_magistrate
            SCENE_REF #inn_investigation
            SCENE_REF #other_investigations
        }

        PHASE ^"Act Two: Raids and Chases" {
            DESCRIPTION "PCs raid the warehouse where prisoners were held, fight guards, chase fleeing ruffians, and interrogate prisoners. Reveals the identity of the villain and the ship transporting prisoners."
            PACING "1-2 scenes, shift from investigation to action"

            SCENE_REF #warehouse_raid
        }

        PHASE ^"Act Three: Battle at the Docks" {
            DESCRIPTION "Climactic nighttime battle at the docks. PCs must stop the ship carrying kidnapped samurai from sailing. Kitsu Sokori appears at distance as a dramatic reveal."
            PACING "1 scene, climactic combat and resolution"

            SCENE_REF #dock_battle
        }

        PHASE ^"Conclusion" {
            DESCRIPTION "Aftermath, epilogue, and rewards"
            PACING "1 scene, denouement"

            SCENE_REF #conclusion
        }
    }

    # =============
    # SCENES
    # =============

    # --- Introduction ---

    SCENE ^"Briefing from Doji Hiroka" #briefing {
        TYPE "Roleplay"
        LOCATION #slow_tide
        DESCRIPTION "PCs are briefed by Doji Hiroka, an elegant Crane courtier representing Otomo Saneda. She explains the disappearance of his wastrel son Otomo Hiroshige using delicate, indirect language. Hiroshige fled to Slow Tide Harbor under the alias 'Doji Hiroshige,' stayed at the Inn of Many Paths, and vanished over two weeks ago. The Tortoise Clan has the Emperor's protection, complicating matters. PCs are assumed to include at least one Emerald Magistrate."

        OBJECTIVES {
            REQUIRED "Learn about Hiroshige's disappearance and accept the investigation"
            OPTIONAL "Push Hiroka into speaking more directly (requires forfeiting honor equal to honor rank to violate Courtesy)"
        }

        CHECKS {
            CHECK ^"Tortoise Clan Knowledge" {
                SKILL "Government"
                RING "earth"
                TN 3
                ON_SUCCESS "PCs are aware of the Tortoise Clan's unique aspects and Imperial protections"
                ON_FAILURE "PCs enter Slow Tide Harbor without foreknowledge of the Tortoise situation"
            }
        }

        CLUES {
            CLUE ^"Hiroshige's Identity" {
                DESCRIPTION "Otomo Hiroshige is an opium addict using the alias 'Doji Hiroshige.' Stayed at the Inn of Many Paths."
                DISCOVERED_BY "Freely provided during briefing (though conveyed indirectly)"
            }
            CLUE ^"Tortoise Imperial Protection" {
                DESCRIPTION "The Tortoise Clan has the Emperor's protection, making it difficult to bring direct pressure"
                DISCOVERED_BY "Hiroka's warning or TN 3 Government (Earth) check"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Investigation Begins" {
                CONDITION "PCs accept the task and arrive at Slow Tide Harbor"
                OUTCOME "PCs arrive at an unfamiliar, morally ambiguous town."
                LEADS_TO [#meeting_governor, #meeting_magistrate, #inn_investigation]
            }
        }
    }

    # --- Act One: Investigation ---

    SCENE ^"Meeting with the Governor" #meeting_governor {
        TYPE "Roleplay"
        LOCATION #governors_neighborhood
        DESCRIPTION "PCs request an audience with Governor Kasuga Mugatsu. After about an hour's wait, a lean, bone-thin man in less-than-elegant garments enters. He is polite but vague, irritated by their presence, and encourages swift completion. May offer a subtle warning not to disrupt the town's 'equilibrium.'"

        OBJECTIVES {
            REQUIRED "Present credentials and explain purpose"
            OPTIONAL "Gain the Governor's cooperation or at least neutrality"
        }

        RESOLUTIONS {
            RESOLUTION ^"Formal Introduction Complete" {
                CONDITION "PCs have met the Governor"
                OUTCOME "Governor is aware of the investigation. Offers minimal assistance."
                LEADS_TO [#meeting_magistrate, #inn_investigation]
            }
        }
    }

    SCENE ^"Meeting with Magistrate Mikoto" #meeting_magistrate {
        TYPE "Intrigue"
        LOCATION #governors_neighborhood
        DESCRIPTION "PCs meet Kasuga Mikoto, who appears less intelligent than she is. She worries they will disrupt her careful balance. She knows much about the criminal factions but avoids sharing unless convinced the PCs will not upset things."

        OBJECTIVES {
            REQUIRED "Learn about other disappearances and the town's criminal landscape"
            OPTIONAL "Convince Mikoto the PCs will not cause disruptions"
            OPTIONAL "Learn identities of the three crime lords and two major smugglers"
        }

        CHECKS {
            CHECK ^"Read Mikoto's Motivations" {
                SKILL "Sentiment"
                RING "void"
                TN 2
                ON_SUCCESS "Mikoto is protecting the town's careful balance, not hiding guilt"
                ON_FAILURE "Her motivations remain unclear"
            }
            CHECK ^"Convince Mikoto to Cooperate" {
                SKILL "Courtesy"
                RING "void"
                TN 2
                ON_SUCCESS "Mikoto becomes cooperative, sharing information about disappearances and crime lords"
                ON_FAILURE "Mikoto minimizes the significance of events"
            }
            CHECK ^"Threaten Mikoto" {
                SKILL "Command"
                RING "fire"
                TN 4
                ON_SUCCESS "Mikoto reluctantly shares information"
                ON_FAILURE "Mikoto stonewalls and becomes hostile"
            }
        }

        CLUES {
            CLUE ^"Multiple Disappearances" {
                DESCRIPTION "Three clan samurai ('Doji' Hiroshige, Kasuga Toru, Kasuga Michiko) and a ronin (Fubato) have vanished in six weeks. Yasuki Suzaku of the Crab was found dead in an alley."
                DISCOVERED_BY "Mikoto shares if cooperative, or if PCs ask the right questions"
            }
            CLUE ^"Criminal Players" {
                DESCRIPTION "Three crime lords (Kizo, Yaguro, Hana) and two major smugglers (Azif, Kasuga Yumiko) operate in Slow Tide Harbor"
                DISCOVERED_BY "Mikoto shares if PCs specifically ask or give good reason"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Mikoto Cooperative" {
                CONDITION "PCs convince Mikoto they will not disrupt the town"
                OUTCOME "Mikoto provides useful background information"
                LEADS_TO [#inn_investigation, #other_investigations]
            }
            RESOLUTION ^"Mikoto Unhelpful" {
                CONDITION "PCs fail to win Mikoto over or antagonize her"
                OUTCOME "PCs must find information through other channels"
                LEADS_TO [#inn_investigation, #other_investigations]
            }
        }
    }

    SCENE ^"Investigation at the Inn of Many Paths" #inn_investigation {
        TYPE "Intrigue"
        LOCATION #inn_many_paths
        DESCRIPTION "PCs question Chiyu, the innkeeper, about Hiroshige. She is withdrawn with strange samurai but becomes chatty if they are friendly. She can confirm Hiroshige stayed four months, was frequently behind on rent, and disappeared over two weeks ago. Can identify his friends and associates."

        OBJECTIVES {
            REQUIRED "Confirm Hiroshige's stay and learn about his associates"
            OPTIONAL "Examine Hiroshige's stored belongings"
            OPTIONAL "Learn about his connections to moneylenders, the Crane artist, the ronin Hade, and the Scorpion"
        }

        CHECKS {
            CHECK ^"Read Chiyu's Demeanor" {
                SKILL "Sentiment"
                TN 1
                ON_SUCCESS "PCs realize Chiyu will be more forthcoming if they are friendly"
                ON_FAILURE "PCs may inadvertently intimidate her"
            }
            CHECK ^"Friendly Approach" {
                SKILL "Courtesy"
                RING "water"
                TN 2
                ON_SUCCESS "Chiyu relaxes and becomes chatty. Sons chip in with additional information."
                ON_FAILURE "Chiyu remains cautious"
            }
            CHECK ^"Stern Approach" {
                SKILL "Command"
                RING "fire"
                TN 2
                ON_SUCCESS "Chiyu answers reluctantly"
                ON_FAILURE "Chiyu clams up, sons remain silent"
            }
        }

        CLUES {
            CLUE ^"Hiroshige's Associates" {
                DESCRIPTION "Friends include Kakita Amano (Crane artist), Kasuga Toru (short, quick-tempered Tortoise), a gaudy ronin with an eyepatch (Hade, works at the Waiting Cat). Also seen with a Scorpion in a cat mask (Bayushi Naizu)."
                DISCOVERED_BY "Chiyu shares if friendly or if checks succeed"
            }
            CLUE ^"Moneylender Connections" {
                DESCRIPTION "Collectors from two moneylenders — Kizo and Doro — came looking for Hiroshige's debts"
                DISCOVERED_BY "Chiyu mentions if PCs ask who has been looking for Hiroshige"
            }
            CLUE ^"Sumi-e Paintings" {
                DESCRIPTION "Hiroshige's stored belongings include sumi-e paintings stamped with the chop of Kakita Amano"
                DISCOVERED_BY "Examining Hiroshige's stored belongings"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Leads Established" {
                CONDITION "PCs learn about Hiroshige's associates"
                OUTCOME "Multiple investigation threads open: Amano, Hade, Naizu, Kizo, Doro, the opium dens"
                LEADS_TO [#other_investigations]
            }
        }
    }

    SCENE ^"Other Investigations" #other_investigations {
        TYPE "Intrigue"
        LOCATION #slow_tide
        DESCRIPTION "A sandbox of investigation threads the PCs can follow in any order. Each thread provides clues pointing toward the warehouse and the villain's identity. Key threads: Kakita Amano (frightened artist), Bayushi Naizu (worldly Scorpion), Hade (traumatized witness), Boss Kizo (charming crime lord), Doro (nervous moneylender), Golden Dream opium den (Master Aoi), Green Rest opium den (Master Awa and Boss Yaguro), Boss Hana, Azif, Kasuga Yumiko, the harbormaster, Hiroshige's kidnapping site, Yasuki Suzaku's murder scene, and the burakumin village."

        OBJECTIVES {
            REQUIRED "Gather enough clues to locate the warehouse"
            OPTIONAL "Identify the adventure's villain through investigative deduction"
            OPTIONAL "Maintain composure in the face of criminality, drugs, and gaijin"
        }

        CHECKS {
            # --- Kakita Amano ---
            CHECK ^"Get Information from Amano" {
                SKILL "Command"
                TN 1
                ON_SUCCESS "One item of information per success. Amano shares details about Hiroshige's last night, Toru's disappearance, and the mysterious tattooed ronin."
                ON_FAILURE "Amano babbles incoherently"
            }
            CHECK ^"Learn Amano Accused Kizo" {
                SKILL "Courtesy"
                RING "fire"
                TN 2
                ON_SUCCESS "Amano admits he publicly accused Boss Kizo of murder four days ago and is now hiding"
                ON_FAILURE "Amano conceals this breach of etiquette"
            }

            # --- Hade ---
            CHECK ^"Calm Hade" {
                SKILL "Command"
                RING "earth"
                TN 2
                ON_SUCCESS "Hade describes witnessing Hiroshige's kidnapping — three men dragging him out of the Wallow, one who 'shouted something like a prayer' that filled Hade with lasting fear"
                ON_FAILURE "Hade is too frightened and incoherent to share useful information"
            }
            CHECK ^"Detect Maho on Hade" {
                SKILL "Theology"
                RING "earth"
                TN 2
                ON_SUCCESS "Hade was targeted with a maho spell. Kansen linger around him; his stable is Defiled terrain."
                ON_FAILURE "Something is wrong but the precise nature is unclear"
            }

            # --- Boss Kizo ---
            CHECK ^"Get Kizo to Cooperate" {
                SKILL "Courtesy"
                RING "fire"
                TN 2
                ON_SUCCESS "Kizo explains the town's power structure, identifies all major players, and reveals unease about his sponsor Kasuga Yumiko's ambitions"
                ON_FAILURE "Kizo maintains his grandfatherly facade and denies everything"
            }

            # --- Golden Dream ---
            CHECK ^"Overcome Aoi's Resistance" {
                SKILL "Command"
                RING "water"
                TN 2
                ON_SUCCESS "Aoi shares information about missing customers, the Blue Flame drug, and its supplier Azif"
                ON_FAILURE "Aoi evades and makes vague threats"
            }

            # --- Green Rest ---
            CHECK ^"Question Master Awa" {
                SKILL "Command"
                RING "earth"
                TN 2
                ON_SUCCESS "Awa identifies missing customers Yasuki Suzaku and Kasuga Michiko, and may recall the tattooed ronin speaking with Suzaku"
                ON_FAILURE "Awa is too nervous to share useful details"
            }

            # --- Hiroshige's Kidnapping Site ---
            CHECK ^"Examine Kidnapping Alley" {
                SKILL "Skulduggery"
                RING "air"
                TN 3
                ON_SUCCESS "Linen fragment stained with raw opium — suggests the kidnappers came from a place storing large amounts of the drug. Points toward the warehouse."
                ON_FAILURE "No useful physical evidence beyond what vigilance reveals"
            }

            # --- Burakumin Village ---
            CHECK ^"Convince Burakumin to Share" {
                SKILL "Command"
                RING "fire"
                TN 1
                ON_SUCCESS "Burakumin share forensic details about Suzaku's body: beaten and stabbed, fought back, signs of captivity (rope burns, manacle abrasions), clothing full of wood splinters and raw opium. They know about outskirts warehouses."
                ON_FAILURE "Burakumin are too frightened to cooperate"
            }

            # --- Doro the Moneylender ---
            # (Freely shares information once he knows why PCs are there)
        }

        CLUES {
            CLUE ^"The Tattooed Ronin" {
                DESCRIPTION "A large, formidable ronin with a distinctive neck tattoo (Gaku) was last seen with multiple victims before they disappeared"
                DISCOVERED_BY "Multiple sources: Amano, Awa, Doro, Chiyu's son (via Hade at the Waiting Cat)"
            }
            CLUE ^"Maho Involvement" {
                DESCRIPTION "Hade was hit with maho by one of the kidnappers. The supernatural fear persists. Kansen lurk around him."
                DISCOVERED_BY "TN 2 Theology (Earth) check examining Hade"
            }
            CLUE ^"Street of Lowering Clouds Direction" {
                DESCRIPTION "Hade saw Hiroshige dragged out via the Street of Lowering Clouds, which leads toward the burakumin village and outlying warehouses"
                DISCOVERED_BY "Hade's testimony when calmed"
            }
            CLUE ^"Raw Opium Connection" {
                DESCRIPTION "Evidence from the kidnapping site and Suzaku's body both show contact with large quantities of raw opium, pointing to a storage warehouse"
                DISCOVERED_BY "TN 3 Skulduggery (Air) at kidnapping site and/or burakumin testimony about Suzaku's clothing"
            }
            CLUE ^"Victims Were All Opium Addicts" {
                DESCRIPTION "Every victim — Hiroshige, Toru, Michiko, Fubato, Suzaku — was an opium addict"
                DISCOVERED_BY "Cross-referencing information from multiple sources"
            }
            CLUE ^"Blue Flame Drug Trail" {
                DESCRIPTION "The Blue Flame drug comes from Azif through Boss Hana's Golden Dream. It is a gaijin substance mixed with opium."
                DISCOVERED_BY "Aoi, Naizu, or Kizo if cooperative"
            }
            CLUE ^"Villain's Identity Hints" {
                DESCRIPTION "Various NPCs can point suspicion toward one or more of the three potential villains through their connections, alliances, and activities"
                DISCOVERED_BY "Accumulated evidence from multiple investigation threads"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Ready for Act Two" {
                CONDITION "PCs have enough clues pointing to the outskirts warehouse"
                OUTCOME "PCs decide to investigate the warehouse, triggering Act Two."
                LEADS_TO [#warehouse_raid]
            }
            RESOLUTION ^"Stuck" {
                CONDITION "PCs cannot find their way to the warehouse"
                OUTCOME "GM can have PCs spot Gaku speaking with a ruffian, then follow the ruffian to the warehouse."
                LEADS_TO [#warehouse_raid]
            }
        }
    }

    # --- Act Two: Raids and Chases ---

    SCENE ^"Warehouse Raid" #warehouse_raid {
        TYPE "Combat"
        LOCATION #warehouse
        DESCRIPTION "PCs approach the isolated warehouse. Three barred doors (main, side, back). Inside: crates of illicit goods lining walls, ruffian guards in the open space by the main entrance, and a prisoner holding area in back with iron manacles, evidence of captivity. The crates contain goods identifying the villain (Azif: gaijin items and Blue Flame; Yaguro: high-quality opium; Yumiko: gaijin items from across the Sea of Amaterasu). Prisoners have been moved — shipped out last night. After the fight, a chase through narrow alleys and crowded streets."

        OBJECTIVES {
            REQUIRED "Defeat or capture the ruffian guards"
            REQUIRED "Search the warehouse for clues about the prisoners and villain's identity"
            OPTIONAL "Capture at least one ruffian for interrogation"
            OPTIONAL "Chase fleeing ruffians through the streets"
        }

        CONFLICT {
            TYPE "combat"
            STAKES "Whether the PCs can secure the warehouse and capture prisoners for interrogation"
            OPPONENTS [#yaguro, #azif, #yumiko]
            # Ruffians: encounter rank equal to half or two-thirds of group rank
        }

        CHECKS {
            CHECK ^"Break Down Main Door" {
                SKILL "Fitness"
                TN 3
                ON_SUCCESS "Door smashed open. OP can be spent to surprise the ruffians."
                ON_FAILURE "Door holds; PCs must try another approach"
            }
            CHECK ^"Break Down Side Door" {
                SKILL "Fitness"
                TN 2
                ON_SUCCESS "Side door breached"
                ON_FAILURE "Door holds"
            }
            CHECK ^"Pick a Door Lock/Bar" {
                SKILL "Skulduggery"
                RING "air"
                TN 3
                ON_SUCCESS "Door bar lifted stealthily"
                ON_FAILURE "PCs alert the guards"
            }
            CHECK ^"Intimidate Guards Into Opening" {
                SKILL "Command"
                RING "fire"
                TN 2
                ON_SUCCESS "One or more ruffians open the door in fear"
                ON_FAILURE "Guards prepare to fight"
            }
            CHECK ^"Chase Fleeing Ruffians" {
                SKILL "Fitness"
                RING "fire"
                TN 3
                ON_SUCCESS "PC catches a fleeing ruffian"
                ON_FAILURE "Ruffian escapes into the town"
            }
            CHECK ^"Interrogate Captured Ruffian" {
                SKILL "Command"
                RING "fire"
                TN 3
                ON_SUCCESS "Prisoner reveals: villain's name, four prisoners held until last night, ship name (Obedient Slave/Floating Destiny/Jealous Zephyr), and Gaku's role"
                ON_FAILURE "Prisoner remains defiant; may need to be turned over to the magistrate's torturer"
            }
            CHECK ^"Identify Number of Prisoners" {
                SKILL "Survival"
                RING "water"
                TN 2
                ON_SUCCESS "Five prisoners held: longest about six weeks, most recent less than a week"
                ON_FAILURE "Evidence is inconclusive"
            }
            CHECK ^"Find Hiroshige's Name" {
                SKILL "Aesthetics"
                RING "earth"
                TN 2
                ON_SUCCESS "Kanji scratched into wall next to one set of manacles reads 'Hiroshige'"
                ON_FAILURE "The scratches are not recognized as writing"
            }
            CHECK ^"Identify Ruffians' Employer" {
                SKILL "Skulduggery"
                RING "earth"
                TN 2
                ON_SUCCESS "Tattoos, clothing, and belongings identify which villain the ruffians work for"
                ON_FAILURE "Their affiliation is unclear"
            }
        }

        CLUES {
            CLUE ^"Shipping Documents" {
                DESCRIPTION "False inventory documents stamped with the harbormaster's mon identify which ship brought the crates: Obedient Slave (Azif), Floating Destiny (Yaguro), or Jealous Zephyr (Yumiko)"
                DISCOVERED_BY "Searching the crates"
            }
            CLUE ^"Prisoner Evidence" {
                DESCRIPTION "Iron manacles with dried blood, chamber pots, water canteens, remnants of simple meals. One set of manacles especially bloody (Yasuki Suzaku's escape attempt)."
                DISCOVERED_BY "Vigilance 2+ and searching the holding area"
            }
            CLUE ^"Villain's Ship Name" {
                DESCRIPTION "The ship carrying the prisoners: Obedient Slave (Azif), Floating Destiny (Yaguro), or Jealous Zephyr (Yumiko)"
                DISCOVERED_BY "Interrogation or shipping documents"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Clues to Act Three" {
                CONDITION "PCs learn the ship name and/or villain's identity"
                OUTCOME "PCs rush to the docks to stop the ship from sailing"
                LEADS_TO [#dock_battle]
            }
            RESOLUTION ^"Stuck Again" {
                CONDITION "PCs didn't take prisoners and can't identify the ship"
                OUTCOME "GM can have additional ruffians arrive to relieve the guards, giving PCs another chance to take prisoners or follow them to the docks"
                LEADS_TO [#dock_battle]
            }
        }
    }

    # --- Act Three: Battle at the Docks ---

    SCENE ^"Battle at the Docks" #dock_battle {
        TYPE "Combat"
        LOCATION #dockside
        DESCRIPTION "Climactic nighttime battle. The villain's ship is about to cast off with the prisoners in the cargo hold. Gaku is aboard. The villain is either at the docks (Yumiko with Tortoise samurai, Yaguro with all his remaining ruffians) or aboard the ship (Azif with gaijin crew). PCs must board the ship, defeat Gaku (who fights to the death and may use maho or set the ship on fire), free the chained prisoners, and possibly survive a burning ship. The encounter rank should equal or slightly exceed the PCs' group rank."

        OBJECTIVES {
            REQUIRED "Stop the ship from escaping with the prisoners"
            REQUIRED "Defeat Gaku"
            REQUIRED "Rescue the kidnapped samurai"
            OPTIONAL "Capture the main villain alive"
            OPTIONAL "Learn Kitsu Sokori's name from Gaku during combat"
        }

        CONFLICT {
            TYPE "combat"
            STAKES "The lives of four kidnapped samurai and the villain's capture"
            OPPONENTS [#gaku, #yumiko, #yaguro, #azif]
            # Encounter rank should equal or slightly exceed PCs' group rank
        }

        CHECKS {
            CHECK ^"Swim to Ship" {
                SKILL "Fitness"
                RING "earth"
                TN 2
                ON_SUCCESS "PC reaches the ship"
                ON_FAILURE "PC struggles in the water"
            }
            CHECK ^"Commandeer a Kobune" {
                SKILL "Seafaring"
                RING "fire"
                TN 2
                ON_SUCCESS "PCs reach the enemy ship in two turns"
                ON_FAILURE "PCs reach the enemy ship in three turns"
            }
            CHECK ^"Board Enemy Ship" {
                SKILL "Fitness"
                RING "water"
                TN 2
                ON_SUCCESS "PC boards successfully"
                ON_FAILURE "PC knocked back by defenders"
            }
            CHECK ^"Intimidate Enemies" {
                SKILL "Command"
                RING "fire"
                TN 3
                ON_SUCCESS "Some enemies flee in terror"
                ON_FAILURE "Enemies fight on"
            }
            CHECK ^"Provoke Gaku into Revealing Information" {
                SKILL "Command"
                RING "air"
                TN 3
                ON_SUCCESS "Gaku shouts out his master's name: Kitsu Sokori"
                ON_FAILURE "Gaku fights silently"
            }
        }

        CLUES {
            CLUE ^"Kitsu Sokori's Identity" {
                DESCRIPTION "Gaku's master is Kitsu Sokori, a maho-tsukai who intended to sacrifice the kidnapped samurai for power"
                DISCOVERED_BY "Provoking Gaku during combat, his unmasking, or interrogation after the battle"
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Yumiko as Villain" {
                CONDITION "Kasuga Yumiko was the GM's chosen villain"
                OUTCOME "Yumiko may demand a duel. May plead for PCs not to tell her family of her crimes. PCs sparing the Tortoise from shame could reduce repercussions."
            }
            RESOLUTION ^"Azif as Villain" {
                CONDITION "Azif was the GM's chosen villain"
                OUTCOME "Azif begs forgiveness and offers a staggering sum for his freedom. PCs could turn him into an intelligence source on gaijin activities."
            }
            RESOLUTION ^"Yaguro as Villain" {
                CONDITION "Boss Yaguro was the GM's chosen villain"
                OUTCOME "Yaguro throws down his katana and begs PCs to end his life. PCs may grant a dignified death or force a humiliating public march."
            }
            RESOLUTION ^"Sokori Appears" {
                CONDITION "PCs defeat the last enemies"
                OUTCOME "At dawn, PCs spot Kitsu Sokori on a distant fishing boat in the lagoon. A robed figure staring back at them. A cold chill of malevolent attention. She escapes to become a recurring nemesis. GM should ensure she survives."
                LEADS_TO [#conclusion]
            }
        }
    }

    # --- Conclusion ---

    SCENE ^"Conclusion and Epilogue" #conclusion {
        TYPE "Montage"
        LOCATION #slow_tide
        DESCRIPTION "The aftermath. Interrogations reveal the kidnapped samurai were intended for Kitsu Sokori's blood sacrifices. The adventure's outcome affects the Tortoise Clan, Slow Tide Harbor's power structure, and establishes Sokori as a recurring nemesis."

        MONTAGE {
            MOMENT ^"The Tortoise Clan" {
                DESCRIPTION "Even if the Tortoise are not directly implicated, they face embarrassment. If Tortoise members were involved, the clan may scour its ranks. Local officials may start divulging secrets to ensure they survive the aftermath. If word reaches the Emperor, the Tortoise may face penalties."
            }
            MOMENT ^"Slow Tide Harbor" {
                DESCRIPTION "Outsiders may pay more attention to the port. Shakeups may install new players or introduce new criminal groups to replace those eliminated."
            }
            MOMENT ^"Kitsu Sokori" {
                DESCRIPTION "The PCs have gained a powerful recurring nemesis. She may appear in future adventures pulling strings from the shadows, possibly even attempting to lure the PCs to her service."
            }
        }

        RESOLUTIONS {
            RESOLUTION ^"Adventure Complete" {
                CONDITION "All aftermath elements resolved"
                OUTCOME "The adventure concludes. PCs carry the consequences forward."
            }
        }
    }

    # =============
    # REWARDS
    # =============

    REWARDS {
        XP_BASE 0
        CONDITIONAL_REWARDS {
            REWARD "Stopping Gaku from escaping with the prisoners (preventing Sokori's maho rite)" {
                XP 4
            }
            REWARD "Rescuing the prisoners" {
                XP 2
            }
            REWARD "Capturing the main villain of the adventure" {
                XP 1
            }
            REWARD "Capturing Gaku" {
                XP 1
            }
            REWARD "Exposing the Blue Flame trade" {
                XP 1
            }
        }
        HONOR_AWARDS {
            AWARD "6 honor for Chugi (Duty and Loyalty): Refusing to obey orders from higher-status Tortoise officials to call off the investigation"
            AWARD "3 honor for Jin (Compassion): Treating wounded Tortoise samurai (including Kasuga Yumiko if applicable) after the climactic battle"
        }
        GLORY_AWARDS {
            AWARD "6 glory for exposing (or creating the appearance of) any direct Tortoise Clan involvement with the crimes"
            AWARD "3 glory for publicly quashing an opium smuggling ring or other major criminal enterprise"
        }
    }
}
