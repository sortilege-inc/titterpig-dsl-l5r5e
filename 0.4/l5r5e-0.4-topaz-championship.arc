# L5R 5E — The Topaz Championship (.arc)
# Structure of the L5R Roleplaying Beginner Game's core adventure (FFG) — the
# prequel to "In the Palace of the Emerald Champion." GM narrative and read-aloud
# text live in l5r5e-0.4-topaz-championship.lore; the cast NPCs (Bayushi Sugai and
# the Ruffian) in l5r5e-0.4-topaz-championship-cast.ttrpg. The seven pregens are
# the shared Beginner Game character folios, authored in
# l5r5e-0.4-emerald-champion-pregens.actor and referenced here.

ARC "topaz-championship" EXTENDS "l5r5e" {
    NAME "The Topaz Championship"
    VERSION "0.4"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "The Topaz Championship: the adventure included in the L5R Roleplaying Beginner Game (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "The introductory adventure of the Legend of the Five Rings Roleplaying Beginner Game, designed to teach the game. Newly-adult samurai travel to the town of Tsuma to compete in the Topaz Championship — a gempuku (coming-of-age) tournament of athletic, martial, and cultural contests — over three days. Amid the competition, the PCs glimpse the ghost of the recently-deceased Emerald Champion Doji Satsume and uncover a Scorpion plot to dishonor the Crane, culminating in a rigged duel. It is directly continued by In the Palace of the Emerald Champion."

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
            DESCRIPTION "The PCs travel the last road to Tsuma with the cheerful peasant cart-driver Ryu. On the way, one glimpses a stern samurai who — Ryu insists — must be a trick of the light, for the man is the Emerald Champion Doji Satsume, dead these several weeks. The PCs meet fellow contestants on the road: the kind Kitsuki Yuikimi of the Dragon, and a Mantis boy (Hitoshi)."
        }
        PART 2 "Scene 2: Honored Guests" {
            DESCRIPTION "Arriving at Tsuma, the PCs settle in among the tournament's guests and officials, register for the contests, and begin to take the measure of the other contestants and the town — a small Crane fishing village made significant only as the site of the Topaz Championship."
        }
        PART 3 "Scene 3: Midnight Tea" {
            DESCRIPTION "A quiet, courtly scene — a tea ceremony by night — in which the PCs practice etiquette and social play, and may pick up threads of the intrigue swirling around Hitoshi and the coming contests."
        }
        PART 4 "Scene 4: The Competition" {
            DESCRIPTION "Day one of the Topaz Championship: the PCs participate in the tournament's contests of athletic skill, martial prowess, and knowledge of Rokugan's history and culture, scoring tournament points toward becoming the Topaz Champion."
        }
        PART 5 "Scene 5: High Spirits" {
            DESCRIPTION "A brawl erupts in a cramped sake house against Bayushi Sugai's hired Ruffians — the adventure's teaching combat, introducing stances, initiative, and the Strike action. The rōnin fight to a point, then flee if things go poorly."
        }
        PART 6 "Scene 6: Competition, Day Two" {
            DESCRIPTION "The second day of contests continues the tournament, narrowing the field of finalists (Kakita Riku and Bayushi Mei Lin among them) and setting up the climactic duel."
        }
        PART 7 "Scene 7: The Feast" {
            DESCRIPTION "A grand feast between competition days — a social set-piece where alliances, rivalries, and the Scorpion's scheme come to a head, and the PCs can gather the clues they need before the final duel."
        }
        PART 8 "Scene 8: One Cut (the Rigged Duel)" {
            DESCRIPTION "The climax. In the final duel, Kakita Riku's blunt training sword has been swapped for a real, razor-sharp double — an exact copy down to the hilt-wrapping. The PCs must notice the switch before Riku fatally wounds her opponent and is forced into seppuku, expose Bayushi Sugai (whose scheme also targets Kitsuki Yuikimi), and give chase. Finding Riku's true training sword on the fleeing Sugai lays his plot bare and vindicates Riku."
        }
        PART 9 "Aftermath" {
            DESCRIPTION "If Sugai is caught, Riku is saved from seppuku, the master sensei Kakita Toshimoko is gruffly grateful, and Doji Satsume's ghost looks on with approval and a challenging gaze — a story left incomplete, continued in In the Palace of the Emerald Champion. GMs may play out the rest of the tournament to crown a Topaz Champion. If Sugai escaped, Riku performs the ritual suicide and Satsume looks on with disappointment."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATION
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Tsuma" DEF {
            TYPE "Town"
            DESCRIPTION "A small Crane fishing town, significant only as the site of the Topaz Championship — the gempuku tournament where young samurai of all clans compete for the honor of becoming Topaz Champion. Home to the tournament grounds, the dueling arena, the sake house, and the feast hall."
            NPCS [^"Bayushi Sugai"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-topaz-championship-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        ANTAGONISTS [^"Bayushi Sugai", ^"Ruffian"]
    }

    # ─────────────────────────────────────────────
    # PREGENS — the shared Beginner Game folios
    # (authored in l5r5e-0.4-emerald-champion-pregens.actor; the same seven
    #  characters are used in both Beginner Game adventures)
    # ─────────────────────────────────────────────
    PARTY {
        PREGENS [^"Akodo Masako", ^"Bayushi Kyo", ^"Doji Ren", ^"Hida Sugi", ^"Isawa Aki", ^"Shinjo Takuya", ^"Togashi Yoshi"]
    }
}
