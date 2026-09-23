# L5R 5E — Cresting Waves (.arc)
# Structure of "Cresting Waves," three supplemental encounters for the Sins of
# Regret adventure (FFG). GM narrative and read-aloud text live in
# l5r5e-0.5-cresting-waves.lore; the four adversary statblocks in
# l5r5e-0.5-cresting-waves-cast.ttrpg. The encounters use the players' own
# (typically rōnin) characters — there are no pregens. Each encounter can be run
# within Sins of Regret or lifted into any ongoing game.

ARC "cresting-waves" EXTENDS "l5r5e" {
    NAME "Cresting Waves"
    VERSION "0.5.2"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "Cresting Waves: Supplemental Encounters for Sins of Regret (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "Cresting Waves contains three optional encounters designed to supplement the Sins of Regret adventure for the Legend of the Five Rings Roleplaying Game. Alternatively, each of these can be adapted for use within other ongoing adventures. Cresting Waves is particularly suited for rōnin PCs, designed to offer opportunities and challenges for lordless samurai. Like Sins of Regret, this supplement can also apply to other player characters, such as gaijin, who wander remote areas away from the influence of their lord."

    THEMES ["The lordless samurai in a wary countryside", "A crime that curses a whole village", "Supernatural predators of the wild places", "Love across a village rivalry", "Justice, compassion, and the truth behind a haunting"]

    TONE "Rural folk-horror vignettes: a vengeful ghost, a flesh-eating hag, and a shapeshifting wolf — small in scope, weighty in choice"
    PLAYER_COUNT "The players' own characters, especially rōnin (no pregens)"
    SETTING "The countryside around Twin Blessings Village and Closed Shell Castle, during (or independent of) Sins of Regret"
    SUMMARY "Cresting Waves gathers three self-contained encounters for lordless samurai. At the Village, the PCs find Twin Blessings cursed by an onryō — the ghost of the murdered villager Jimba — and must uncover that the dōshin Miyoko's jealous brother-in-law Banji killed him, then bring Banji to justice to lift the curse. In the Woods, the PCs hunt for the missing youth Kyou and find him and his beloved Sora — from the rival Nestled Village — held captive by Aguri, a flesh-eating yamauba, as a rescue party arrives to complicate matters. On the Road, a starving pack attacks; its leader is Mamoru Nakama, a shapeshifting wolf guardian who appears at Closed Shell Castle as a wounded courtier, and whom the low-status PCs must handle by negotiation rather than accusation."

    # ─────────────────────────────────────────────
    # ENCOUNTER STRUCTURE (three independent encounters)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Encounter 1: At the Village" {
            SCENES ["Meeting the Onryō", "In the Daylight", "Supernatural Wounds", "Investigating", "Confrontation with Banji", "Lifting the Curse"]
            DESCRIPTION "The PCs enter Twin Blessings Village (or another that better fits the GM's campaign plans), and during the night discover an onryō haunting an abandoned house. They uncover clues concerning the spirit both at night and during the following day, especially ones relating to a brutal murder that led to the haunting and a growing curse over the village.\n\nThe hidden truth is that a local villager named Banji had grown to believe his wife Nayaka and his best friend Jimba were sneaking off to spend time together. Out of unfounded jealousy, weeks ago Banji tricked Nayaka's sister Miyoko, the village dōshin (local law enforcer) into apprehending Jimba. He did this by leaving a bucket of rice for Jimba to find, and then telling Miyoko that Jimba had been stealing. Banji persuaded her to wait until morning to take him to the village leader Setsuo to face judgment, and so she used rope to detain Jimba in the house. In the night, Banji used his kama (a sickle used to harvest rice) to kill Jimba. Banji claimed he was merely trying to stop Jimba from escaping, and begged Miyoko not to tell Setsuo. Miyoko put family loyalty over the duty of her position, and agreed to keep the secret. Banji hacked the body to pieces, then he and Miyoko threw them into the river along with the \"stolen\" rice. Banji destroyed and then burned the bucket. They swore to keep the secret and told everyone that Jimba must have fled the village when he was caught stealing rice. Plagued by guilt, Miyoko became especially vulnerable to the curse. Her health began to fail soon after the murder, forcing her to retire from her position and move in with Banji and Nayaka. In the days that followed, the curse slowly spread across the rest of the village.\n\nDefeating the ghost doesn't end the curse, however: the PCs must uncover the truth of the murder. Only by bringing Banji to justice can the curse on the village and everyone within (including the PCs) be lifted."
        }
        PART 2 "Encounter 2: In the Woods" {
            SCENES ["Missing Youth", "The Forest", "Aguri's Hut", "Hostile Hospitality", "The Prisoners", "The Rival Village Arrives"]
            DESCRIPTION "The PCs are convinced (or hired) to find a villager named Kyou, a youth who disappeared a few days ago. He was last seen going out to gather wood in the common-land forest between Twin Blessings Village and Nestled Village. These two villages are rivals, but Kyou has found true love with Sora, an inhabitant of Nestled Village. Tracking down Kyou, the PCs find that both Kyou and Sora have been captured by Aguri, a hungry yamauba who lives in the dense woods. The yamauba isn't the PCs' only problem, however, as members of the rival village soon arrive to retrieve their own. The young lovers would rather not return, though. The PCs can decide to aid them, or see that they follow the wishes of their village's leaders."
        }
        PART 3 "Encounter 3: On the Road" {
            SCENES ["Traveling (the Silver Wolf)", "The Wolf Attack", "At the Castle", "The Wounded Courtier"]
            DESCRIPTION "As the PCs travel along a road through wilderness areas they are surrounded and attacked by wolves. This initial short, violent conflict has ramifications in the castle, where the PCs come across a shugenja with the same injury they inflicted on the leader of the wolves. Inspired by the legend of the senbiki ōkami (thousand wolves), this character is a wolf taking human form. The wolf has hostile intentions, as the castle's daimyō has over-hunted the woods and the wolves are slowly starving. The PCs must decide how to deal with the situation without jeopardizing any other objectives they might have at the court. As the courtier is samurai, the lowly rōnin PCs cannot simply accuse him of the attack. Negotiating with him and the daimyō, though, may allow for a peaceable resolution between the wolves and the castle's occupants."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS (resolve to the Sins of Regret / Path of Waves graph)
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Twin Blessings Village" DEF {
            TYPE "Village"
            DESCRIPTION "The backwater village of Sins of Regret, led by Setsuo, with the former dōshin Miyoko among its people. Cursed by the onryō of the murdered Jimba until his killer, Banji, is brought to justice."
            NPCS [^"Onryō, Vengeful Ghost", ^"Banji, Murderous Villager"]
        }
        ^"Nestled Village" DEF {
            TYPE "Village"
            DESCRIPTION "A village rival to Twin Blessings, across the common-land forest; home of Sora and of the elder Sayaka, who leads a party to retrieve their own missing youth."
        }
        ^"Aguri's Hut" DEF {
            TYPE "Building"
            DESCRIPTION "The trail leads you deep into the forest, and up a low hill where the trees finally thin a little. Here, the trail seems to disappear, but through the woods ahead you spy a small, sad-looking hut with balding thatch. It appears unoccupied.\n\nHowever the PCs deal with the yamauba, simply looking inside the hut reveals the prisoners, as well as jars of strong sake, broken tools, and bundles of herbs. There are several gnawed-upon bones in one corner; a TN 2 Medicine check (Water 1, Fire 3) reveals these to be human. The discovery of the prisoners cues the arrival of a party of peasants from Sora's village.\n\nThe hut is cluttered with pots, tools, and jars, all strewn about the bare earth floor. At the back, half-hidden in the gloom and propped up against the wall, are two bound figures. They do not move, even when the sounds of hurried feet and angry shouts come from outside."
            NPCS [^"Aguri, Yamauba"]
        }
        ^"Closed Shell Castle" DEF {
            TYPE "Castle"
            DESCRIPTION "The castle the PCs journey to in Sins of Regret. Its daimyō has over-hunted the surrounding woods; the wolf guardian Mamoru Nakama appears here as a wounded visiting courtier."
            NPCS [^"Mamoru Nakama, Wolf Guardian"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-cresting-waves-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ADVERSARIES [^"Onryō, Vengeful Ghost", ^"Banji, Murderous Villager", ^"Aguri, Yamauba", ^"Mamoru Nakama, Wolf Guardian"]
        ALLIES [^"Setsuo", ^"Daizō"]
    }

    # Three supplemental encounters for the players' own characters, so there is
    # no PARTY / pregen roster.
}
