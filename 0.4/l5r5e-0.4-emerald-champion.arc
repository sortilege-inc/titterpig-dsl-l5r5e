# L5R 5E — In the Palace of the Emerald Champion (.arc)
# Structure of the L5R Roleplaying Beginner Game bonus adventure (FFG, 2018), a
# sequel to "The Topaz Championship." GM narrative, read-aloud text, and the
# mystery's resolution live in l5r5e-0.4-emerald-champion.lore; the cast NPCs in
# l5r5e-0.4-emerald-champion-cast.ttrpg; the seven pregenerated PCs in
# l5r5e-0.4-emerald-champion-pregens.actor.

ARC "emerald-champion" EXTENDS "l5r5e" {
    NAME "In the Palace of the Emerald Champion"
    VERSION "0.4.1"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "In the Palace of the Emerald Champion: A Bonus Adventure for the L5R Roleplaying Beginner Game (Fantasy Flight Games, 2018)"
    LEAD_WRITER "Tim Huckelbery (design); Daniel Lovat Clark and Mari Murdock (writing)"
    DESCRIPTION "A bonus adventure for the Legend of the Five Rings Roleplaying Beginner Game, designed to follow The Topaz Championship. Having proven themselves at the Topaz Championship, the newly-adult PCs travel to Shiro Yogasha — the Castle of the Emerald Champion — to train as Emerald Magistrates. There, the acting Emerald Champion Agasha Sumiko charges them with quietly investigating the death of the previous Emerald Champion, Doji Satsume, whose ghost has followed them from Tsuma. The PCs must weigh the public truth against the private one, learning that a magistrate's findings can carry consequences far beyond the facts."

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
            DESCRIPTION "The road from Tsuma runs roughly six hundred li north to Shiro Yogasha — about eight days on foot, on a rough detour path since the main road is under repair. The journey should be rife with conflict: the PCs meet the familiar peasant Ryu again, are ambushed by Goro's bandits, encounter a horde of goblins led by Teru the Ogre far north of the Wall (a sign vile magic may be at work), and are tested by Airi, an ancient tengu sword-master disguised as an old woman. Each evening the ghost of Doji Satsume joins them at the fire, his visage clearer as he nears the completion of his mission, and charges them: ensure the matter of his death brings no shame or retribution upon his family."
        }
        PART 2 "Act 2: The Castle" {
            SCENES ["Arrival at Shiro Yogasha", "Sumiko's Charge", "Daily Training", "Questioning the Witnesses (Sō, Kāgi, 'Bayushi Ago', Hiruma Shigeki)", "Satsume's Papers and the Secret Room", "The Assassin Strikes (Kitsuki Tomo)"]
            DESCRIPTION "Over four days — the day of arrival and three days of training — the PCs immerse themselves in becoming Emerald Magistrates while Agasha Sumiko secretly commands them to investigate Satsume's death, insisting the official story remains that the case is closed and no foul play was involved. Interviewing witnesses and suspects (the peasant Sō who found the body, the curious steward Kitsuki Kāgi, the disguised Scorpion 'Bayushi Ago,' the paranoid Crab magistrate Hiruma Shigeki), searching Satsume's offices, the secret room, and the Emerald Archives, they piece together a tangle: heretical correspondence in Satsume's own hand, a Scorpion scheme to frame Doji Hotaru, and evidence of the Kolat. It culminates when Kitsuki Tomo — the Kolat assassin sent to kill Satsume, thwarted only because Satsume died of natural causes first — turns his blade on the Ruby Champion."

            # Rumors and Information from the Clan Representatives (page 20): where
            # each clan's representative meets its PC, and what each conveys about
            # Satsume. Getting information from another clan's rep needs a TN 2
            # Courtesy or Sentiment check.
            REFERENCE_TABLE "Rumors and Information from the Clan Representatives" {
                ^"Crab" DEF {
                    ^"Representative" STRING "Hida Mikoro"
                    ^"Meeting Location" STRING "Armory"
                    ^"Information Provided" STRING "Satsume was a strict father. He hardly spoke to his eldest daughter, Hotaru, after his wife's death. Not that he spoke with her much before it, either."
                }
                ^"Crane" DEF {
                    ^"Representative" STRING "Asahina Tadane"
                    ^"Meeting Location" STRING "Private Dining Hall"
                    ^"Information Provided" STRING "Since the death of his wife, Satsume was not very well liked, even among his own clan. Everyone secretly blamed him for her untimely end, his daughter Hotaru most of all."
                }
                ^"Dragon" DEF {
                    ^"Representative" STRING "Mirumoto Tanetsu"
                    ^"Meeting Location" STRING "Room of Law"
                    ^"Information Provided" STRING "Sumiko would often grumble about Satsume's secrets, frustrated with how he felt no obligation to keep her informed of his efforts and whereabouts. She absolutely did not trust him."
                }
                ^"Lion" DEF {
                    ^"Representative" STRING "Kitsu Tsuguri"
                    ^"Meeting Location" STRING "Training Dōjō"
                    ^"Information Provided" STRING "Satsume was an aggressive sparring partner, at times needlessly injuring his soldiers during martial practices in the training yard. He was often very harsh in his criticisms, and demanded more from everyone around him."
                }
                ^"Phoenix" DEF {
                    ^"Representative" STRING "Shiba Sono"
                    ^"Meeting Location" STRING "Garden of Verdant Serenity"
                    ^"Information Provided" STRING "During the last several months, Satsume spent more and more time in the library, where he used to spend hours referencing the Rokugani law books. It seems that he had become interested in precedent and ways to justify novel interpretations of Imperial law."
                }
                ^"Scorpion" DEF {
                    ^"Representative" STRING "Bayushi Negi"
                    ^"Meeting Location" STRING "Courtyard of Punishment"
                    ^"Information Provided" STRING "Satsume disappeared often, but no one could figure out how he left the castle or by what entrance he returned. This would suggest some secret in the castle's architecture."
                }
                ^"Unicorn" DEF {
                    ^"Representative" STRING "Shinjo Akiba"
                    ^"Meeting Location" STRING "Stables"
                    ^"Information Provided" STRING "Satsume was a great compromiser, ensuring that no one was happy with his decisions but also that no one was too angry with them. He didn't get along with most people, though. One time, Akiba says, she overheard Sumiko and Satsume arguing about their duties to the Emperor, but the disagreement went unresolved."
                }
            }
        }
        PART 3 "Act 3: The Findings" {
            SCENES ["Your Report to the Ruby Champion", "Report Options (Natural Causes / Assassination / Something Else)", "The Official Finding", "The Ruby Champion's Statement"]
            DESCRIPTION "The PCs present their evidence and conclusions to Sumiko in her private estate, having debated which version of the truth to tell. Sumiko clearly hopes for a finding of 'natural causes' — the best outcome for the Empire's stability — and accepts it readily; a finding of assassination or Kolat involvement she resists and sets aside. The PCs learn that the public truth and the private truth are often vastly different, that a magistrate's findings bend to political consequence, and that they may withhold evidence, keep it as leverage, or forfeit honor to go public and shame the Ruby Champion. Sumiko then releases her official declaration: the Emerald Champion died of natural causes."
        }
        PART 4 "Epilogue: Emerald Magistrates" {
            DESCRIPTION "The PCs complete their training and become Emerald Magistrates. Whether or not Sumiko used their findings officially, the investigation has proven their mettle and armed them with knowledge of major powers in Rokugan for later adventures — the Scorpion's schemes, the Kolat's reach, Satsume's secrets. Threads left open (the true identity of 'Bayushi Ago,' who hired Goro's bandits, the fate of the heretical correspondent at Otosan Uchi) seed future play."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Tsuma" DEF {
            TYPE "Town"
            DESCRIPTION "The town that hosts the Topaz Championship, where the PCs underwent their gempuku and first encountered Satsume's ghost. The adventure's road begins here, roughly six hundred li south of Shiro Yogasha."
        }
        ^"Shiro Yogasha" DEF {
            TYPE "Castle"
            DESCRIPTION "The Castle of the Emerald Champion, seat of the office and home to the Emerald Archives and the Court of Judgment. Roughly six hundred li north of Tsuma. The recent death of its master, Doji Satsume, has left the whole castle recovering; the Ruby Champion Agasha Sumiko now administers it, aided by the steward Kitsuki Kāgi. It holds Satsume's offices and audience room, the magistrates' quarters, the dining hall, the training locations, a secret room, and Sumiko's private estate tower."
            NPCS [^"Agasha Sumiko", ^"Kitsuki Kāgi", ^"Shosuro Hametsu", ^"Kitsuki Tomo"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-emerald-champion-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        GHOST [^"Doji Satsume"]
        CASTLE [^"Agasha Sumiko", ^"Kitsuki Kāgi"]
        ANTAGONISTS [^"Shosuro Hametsu", ^"Kitsuki Tomo"]
        ROAD [^"Ryu", ^"Goro the Bandit Leader", ^"Bandits", ^"Airi the Tengu", ^"Goblins", ^"Teru the Ogre"]
    }

    # ─────────────────────────────────────────────
    # PREGENS (resolve to l5r5e-0.4-emerald-champion-pregens.actor)
    # ─────────────────────────────────────────────
    PARTY {
        PREGENS [^"Akodo Masako", ^"Bayushi Kyo", ^"Doji Ren", ^"Hida Sugi", ^"Isawa Aki", ^"Shinjo Takuya", ^"Togashi Yoshi"]
    }
}
