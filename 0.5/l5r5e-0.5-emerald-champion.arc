# L5R 5E — In the Palace of the Emerald Champion (.arc)
# Structure of the L5R Roleplaying Beginner Game bonus adventure (FFG, 2018), a
# sequel to "The Topaz Championship." GM narrative, read-aloud text, and the
# mystery's resolution live in l5r5e-0.5-emerald-champion.lore; the cast NPCs in
# l5r5e-0.5-emerald-champion-cast.ttrpg; the seven pregenerated PCs in
# l5r5e-0.5-emerald-champion-pregens.actor.

ARC "emerald-champion" EXTENDS "l5r5e" {
    NAME "In the Palace of the Emerald Champion"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "In the Palace of the Emerald Champion: A Bonus Adventure for the L5R Roleplaying Beginner Game (Fantasy Flight Games, 2018)"
    LEAD_WRITER "Tim Huckelbery (design); Daniel Lovat Clark and Mari Murdock (writing)"
    DESCRIPTION "In the Palace of the Emerald Champion is a bonus adventure for the Legend of the Five Rings Roleplaying Beginner Game. It is designed to follow the events of The Topaz Championship, the adventure included in the Beginner Game.\n\nDuring the last adventure, the PCs engaged in the Topaz Championship and hopefully foiled Bayushi Sugai's plot for revenge. These feats proved their worth in the eyes of Agasha Sumiko, the Ruby Champion; impressed by their heroism and commitment to justice, she recommended them to become Emerald Magistrates. They are set to go to the palace of the Emerald Champion, also known as Shiro Yogasha, for training. However, questions surrounding Doji Satsume, their ghostly visitor, still linger. Satsume, the previous Emerald Champion, died there, so this journey promises to reveal new secrets surrounding his shadowy past and mysterious death."

    THEMES ["Coming of age: from tournament victors to Emerald Magistrates", "The public truth versus the private truth", "A magistrate's findings have political consequences", "Justice, loyalty, and the good of the Empire in tension", "The hidden hand of the Kolat"]

    TONE "A murder mystery in three acts: a dangerous road, an investigation among suspects at a great castle, and a fraught report to a superior"
    PLAYER_COUNT "Seven pre-generated Beginner Game samurai (one per Great Clan)"
    SETTING "The road from Tsuma north to Shiro Yogasha, the Castle of the Emerald Champion; shortly after the Topaz Championship"
    SUMMARY "Their heroism at the Topaz Championship earned the PCs a recommendation from the Ruby Champion, Agasha Sumiko, to become Emerald Magistrates — so they set out on the several-hundred-li road from Tsuma to Shiro Yogasha, the castle of the recently-deceased Emerald Champion Doji Satsume. On the road (Act 1) they face bandits, goblins and an ogre, a mysterious tengu sword-master, and the recurring ghost of Satsume, who charges them to see the matter of his death resolved without bringing shame on his family. At the castle (Act 2) they train as magistrates while secretly investigating that death, interviewing suspects — the curious steward Kitsuki Kāgi, the disguised Scorpion daimyō Shosuro Hametsu (posing as magistrate 'Bayushi Ago'), the paranoid Crab Hiruma Shigeki, and the peasant Sō who found the body — before the Kolat assassin Kitsuki Tomo, who had been sent to kill Satsume only for Satsume to die of natural causes first, strikes at Sumiko instead. In Act 3 the PCs present their findings to Sumiko, choosing which version of the truth to tell: the official 'natural causes' the Empire needs, or the tangle of Scorpion schemes, heretical letters, and Kolat plots beneath it."

    # ─────────────────────────────────────────────
    # ACT STRUCTURE (three Acts + epilogue)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Act 1: The Journey" {
            SCENES ["A Familiar Face (Ryu)", "The Bandit Ambush (Goro)", "Goblins and Teru the Ogre", "The Mysterious Stranger (Airi the Tengu)", "Satsume's Ghost by the Fire"]
            DESCRIPTION "Act 1: The Journey (page 10) takes place on the road from Tsuma to the Emerald Champion's castle. The journey takes several days and should be rife with conflict as the PCs travel the several hundred miles along dangerous terrain, proving their newfound skills against the measure of the open road. They once again encounter the ghost of the previous Emerald Champion and begin to unravel what he desires of them."
        }
        PART 2 "Act 2: The Castle" {
            SCENES ["Arrival at Shiro Yogasha", "Sumiko's Charge", "Daily Training", "Questioning the Witnesses (Sō, Kāgi, 'Bayushi Ago', Hiruma Shigeki)", "Satsume's Papers and the Secret Room", "The Assassin Strikes (Kitsuki Tomo)"]
            DESCRIPTION "Act 2: The Castle (page 18) has the PCs immersing themselves in their training as Emerald Magistrates. Alongside their studies, however, Agasha Sumiko also commands the PCs to investigate Doji Satsume's murder. They must interview potential witnesses and suspects while gathering clues in order to piece together the truth. This takes place over four days, consisting of the day they arrive and then three days of training."

            # Rumors and Information from the Clan Representatives (page 20): where
            # each clan's representative meets its PC, and what each conveys about
            # Satsume. Getting information from another clan's rep needs a TN 2
            # Courtesy or Sentiment check.
            REFERENCE_TABLE "Rumors and Information from the Clan Representatives" {
                #aauMCiOtGKP8CXP4f1ukRO ^"Crab" DEF {
                    ^"Representative" STRING "Hida Mikoro"
                    ^"Meeting Location" STRING "Armory"
                    ^"Information Provided" STRING "Satsume was a strict father. He hardly spoke to his eldest daughter, Hotaru, after his wife's death. Not that he spoke with her much before it, either."
                }
                #flAfXg3W1lqFqIOvaaSlg7 ^"Crane" DEF {
                    ^"Representative" STRING "Asahina Tadane"
                    ^"Meeting Location" STRING "Private Dining Hall"
                    ^"Information Provided" STRING "Since the death of his wife, Satsume was not very well liked, even among his own clan. Everyone secretly blamed him for her untimely end, his daughter Hotaru most of all."
                }
                #Id3l0rvLTaxXDislfHWpaA ^"Dragon" DEF {
                    ^"Representative" STRING "Mirumoto Tanetsu"
                    ^"Meeting Location" STRING "Room of Law"
                    ^"Information Provided" STRING "Sumiko would often grumble about Satsume's secrets, frustrated with how he felt no obligation to keep her informed of his efforts and whereabouts. She absolutely did not trust him."
                }
                #4YhnDhlOwyhLKCCY2fruR0 ^"Lion" DEF {
                    ^"Representative" STRING "Kitsu Tsuguri"
                    ^"Meeting Location" STRING "Training Dōjō"
                    ^"Information Provided" STRING "Satsume was an aggressive sparring partner, at times needlessly injuring his soldiers during martial practices in the training yard. He was often very harsh in his criticisms, and demanded more from everyone around him."
                }
                #j7ERiWSGbI4GAAcGnFaMzZ ^"Phoenix" DEF {
                    ^"Representative" STRING "Shiba Sono"
                    ^"Meeting Location" STRING "Garden of Verdant Serenity"
                    ^"Information Provided" STRING "During the last several months, Satsume spent more and more time in the library, where he used to spend hours referencing the Rokugani law books. It seems that he had become interested in precedent and ways to justify novel interpretations of Imperial law."
                }
                #X18IHHIhpcFhOUkBfhMi61 ^"Scorpion" DEF {
                    ^"Representative" STRING "Bayushi Negi"
                    ^"Meeting Location" STRING "Courtyard of Punishment"
                    ^"Information Provided" STRING "Satsume disappeared often, but no one could figure out how he left the castle or by what entrance he returned. This would suggest some secret in the castle's architecture."
                }
                #qVcSCiEveGSZJYTQt2GYNa ^"Unicorn" DEF {
                    ^"Representative" STRING "Shinjo Akiba"
                    ^"Meeting Location" STRING "Stables"
                    ^"Information Provided" STRING "Satsume was a great compromiser, ensuring that no one was happy with his decisions but also that no one was too angry with them. He didn't get along with most here, though. One time, Akiba says, she overheard Sumiko and Satsume arguing about their duties to the Emperor, but the disagreement went unresolved."
                }
            }
        }
        PART 3 "Act 3: The Findings" {
            SCENES ["Your Report to the Ruby Champion", "Report Options (Natural Causes / Assassination / Something Else)", "The Official Finding", "The Ruby Champion's Statement"]
            DESCRIPTION "Act 3: The Findings (page 35) is when the PCs present their evidence to Sumiko, having debated about which version of the truth to tell. They must learn that the public truth and the private truth are sometimes vastly different—especially since their announcement could have far-reaching consequences concerning the fate of many in Rokugan. This portion of the adventure lasts one day, when the PCs become Emerald Magistrates and present their findings."
        }
        PART 4 "Epilogue: Emerald Magistrates" {
            DESCRIPTION "The PCs are now Emerald Magistrates, and soon will be sent out from the palace to investigate and enforce the Emperor's Law.\n\nDepending on how Satsume's death was resolved, the PCs may have also made some powerful enemies or allies among the inhabitants of Shiro Yogasha. These could have further-reaching repercussions for their interactions in the future on a personal or even a Great Clan level. Angering a lowly magistrate might deny a person the ear of the Emperor later. However, kindness shown toward a single peasant might save one's life in the future."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        #Qhd2xdfB8A7pRGPNn4edXk ^"Tsuma" DEF {
            TYPE "Town"
            DESCRIPTION "The town that hosts the Topaz Championship, where the PCs underwent their gempuku and first encountered Satsume's ghost. The adventure's road begins here, roughly six hundred li south of Shiro Yogasha."
        }
        #dwO7DrDVV3yrr0KelCZ40C ^"Shiro Yogasha" DEF {
            TYPE "Castle"
            DESCRIPTION "Shiro Yogasha, the castle of the Emerald Champion, has been the primary home of the Emerald Champion for centuries. The stronghold is located on a hill bordered by wide, empty plains, making the approach of visitors or enemies visible far in advance. Inside the castle walls are numerous courtyards and spacious halls, and the buildings' sloped roofs are topped with glistening, emerald-colored tiles. The luxurious grandeur of the main keep suits the prestigious office that commands it."
            NPCS [^"Agasha Sumiko", ^"Kitsuki Kāgi", ^"Shosuro Hametsu", ^"Kitsuki Tomo"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-emerald-champion-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        GHOST [^"Doji Satsume"]
        CASTLE [^"Agasha Sumiko", ^"Kitsuki Kāgi"]
        ANTAGONISTS [^"Shosuro Hametsu", ^"Kitsuki Tomo"]
        ROAD [#s7gusTIxD30b5PmmAaqv24 ^"Ryu", ^"Goro the Bandit Leader", ^"Bandits", #Z2M3KpXbNN5SQFuJ1gl9RX ^"Airi the Tengu", #nHc6LNpbEQg7StnIvyXfal ^"Goblins", ^"Teru the Ogre"]
    }

    # ─────────────────────────────────────────────
    # PREGENS (resolve to l5r5e-0.5-emerald-champion-pregens.actor)
    # ─────────────────────────────────────────────
    PARTY {
        PREGENS [#borV4EPfbO4461EG1D2A6y ^"Akodo Masako", #mdgXo3dyN1anVTTGuMLtFq ^"Bayushi Kyo", #yRz6zse1MHa80ptJjVYc9w ^"Doji Ren", #dOuhA27JA1FkxCGArVmQjf ^"Hida Sugi", #BumtE0gc6rxfR3PrDZKWR6 ^"Isawa Aki", #byjZjCnTY0YQyqgASFSQlJ ^"Shinjo Takuya", #0VUc4xhd1UkVKVR92AL2sT ^"Togashi Yoshi"]
    }
}
