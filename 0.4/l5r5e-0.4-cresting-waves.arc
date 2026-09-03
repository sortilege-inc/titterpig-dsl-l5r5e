# L5R 5E — Cresting Waves (.arc)
# Structure of "Cresting Waves," three supplemental encounters for the Sins of
# Regret adventure (FFG). GM narrative and read-aloud text live in
# l5r5e-0.4-cresting-waves.lore; the four adversary statblocks in
# l5r5e-0.4-cresting-waves-cast.ttrpg. The encounters use the players' own
# (typically rōnin) characters — there are no pregens. Each encounter can be run
# within Sins of Regret or lifted into any ongoing game.

ARC "cresting-waves" EXTENDS "l5r5e" {
    NAME "Cresting Waves"
    VERSION "0.4"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Cresting Waves: Supplemental Encounters for Sins of Regret (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "Three optional encounters designed to supplement the Sins of Regret adventure for the Legend of the Five Rings Roleplaying Game, particularly suited to rōnin (and other outsider) PCs. Each can be woven into Sins of Regret — at Twin Blessings Village, in the forest, and on the road to Closed Shell Castle — or adapted to any backwater village, wild place, or wilderness road in an ongoing game."

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
            DESCRIPTION "Twin Blessings Village is haunted by an onryō — the ghost of Jimba, murdered and dismembered by his friend Banji out of jealousy over the dōshin Miyoko. The ghost menaces the PCs in an abandoned house, marking them with cursed wounds and spreading its curse through the village (afflicting Miyoko). Investigating with Setsuo and the priest Daizō, the PCs learn the truth, face Banji and his crowd of peasant supporters, and lift the curse by exposing Jimba's murder and bringing Banji to Setsuo's justice — healing Miyoko and the village."
        }
        PART 2 "Encounter 2: In the Woods" {
            SCENES ["Missing Youth", "The Forest", "Aguri's Hut", "Hostile Hospitality", "The Prisoners", "The Rival Village Arrives"]
            DESCRIPTION "Setsuo asks the PCs to find Kyou, a beloved youth (secretly the son of a samurai) who vanished gathering wood in the forest between Twin Blessings and Nestled Village. Following his fading trail, the PCs reach the hut of Aguri, a yamauba who has captured Kyou and his lover Sora of the rival Nestled Village. The hag offers drugged rice balls and sake and would rather deceive the PCs into leaving than fight; freeing the prisoners cues the arrival of a Nestled Village rescue party led by the elder Sayaka — and the young lovers would rather not be parted or returned."
        }
        PART 3 "Encounter 3: On the Road" {
            SCENES ["Traveling (the Silver Wolf)", "The Wolf Attack", "At the Castle", "The Wounded Courtier"]
            DESCRIPTION "On the road toward Closed Shell Castle, a starving wolf pack surrounds and attacks the PCs — the daimyō has over-hunted their forest. Its leader is Mamoru Nakama, a shapeshifting wolf guardian of the senbiki ōkami legend. Afterward, at the castle, the PCs meet Nakama in human form — a silver-grey-robed courtier bearing the exact wound they dealt the wolf, claiming bandits attacked him. As lowly rōnin, the PCs cannot simply accuse a samurai courtier; they must negotiate with him and the daimyō for a peace between the wolves and the castle."
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
            DESCRIPTION "A cluttered hut deep in the common-land forest between Twin Blessings and Nestled Village, strewn with pots, tools, jars of strong sake, bundles of herbs, and gnawed human bones — the lair of the yamauba Aguri, where Kyou and Sora are held bound."
            NPCS [^"Aguri, Yamauba"]
        }
        ^"Closed Shell Castle" DEF {
            TYPE "Castle"
            DESCRIPTION "The castle the PCs journey to in Sins of Regret. Its daimyō has over-hunted the surrounding woods; the wolf guardian Mamoru Nakama appears here as a wounded visiting courtier."
            NPCS [^"Mamoru Nakama, Wolf Guardian"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-cresting-waves-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ADVERSARIES [^"Onryō, Vengeful Ghost", ^"Banji, Murderous Villager", ^"Aguri, Yamauba", ^"Mamoru Nakama, Wolf Guardian"]
        ALLIES [^"Setsuo", ^"Daizō"]
    }

    # Three supplemental encounters for the players' own characters, so there is
    # no PARTY / pregen roster.
}
