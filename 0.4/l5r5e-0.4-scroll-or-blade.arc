# L5R 5E — The Scroll or the Blade (.arc)
# Structure of the supplemental adventure for "Winter's Embrace" (FFG, 2020).
# GM narrative and read-aloud text live in l5r5e-0.4-scroll-or-blade.lore; the
# cast NPCs in l5r5e-0.4-scroll-or-blade-cast.ttrpg. This is a supplement run
# during lulls at Winter Court, so it uses the players' existing characters —
# there are no pregens.

ARC "the-scroll-or-the-blade" EXTENDS "l5r5e" {
    NAME "The Scroll or the Blade"
    VERSION "0.4.1"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "The Scroll or the Blade: A Supplemental Adventure for Winter's Embrace (Fantasy Flight Games, 2020)"
    LEAD_WRITER "Alexis Dykema"
    DESCRIPTION "A supplemental storyline for the Legend of the Five Rings Roleplaying Game, occurring during or after Winter's Embrace and set in the heart of Kyūden Doji. It centers on Masayo, an orphaned child of Dragon and Phoenix parents whose powerful elemental affinity turns the clans' cordial relationship into political conflict at Winter Court. The child's temporary guardian, the Imperial cartographer Miya Bunji, is manipulated into asking the PCs to help determine her fate — the scroll (the Phoenix, and scholarship) or the blade (the Dragon, and war)."

    THEMES ["A child as a political prize", "Dragon versus Phoenix; scholarship versus the sword", "Duty against compassion", "Chosen family over clan", "Secrets that could tip the scales"]

    TONE "Winter Court intrigue with a sympathetic child at its center; escalating to a kidnapping and a courtroom judgment"
    PLAYER_COUNT "The players' existing Winter Court characters (a supplement to Winter's Embrace; no pregens)"
    SUMMARY "During the days of Winter Court at Kyūden Doji, the PCs guard a memorial service for Masayo's fallen samurai parents when a freak winter storm — a sign of the Fortune Yamakaze's bond with the child — traps the assembly. The cartographer Miya Bunji, Masayo's reluctant guardian, asks the PCs to help formalize her adoption before Dragon and Phoenix rivalry turns to bloodshed. Through a kemari tournament, a duel, and a shinobi kidnapping attempt, the PCs weigh the Dragon candidates (Kitsuki Tomoyo, Mirumoto Kazuya) against the Phoenix (Asako Haruki, Isawa Yoshiko) — uncovering that Yoshiko is Masayo's blood aunt and that Kazuya courts the Perfect Land Sect — before testing the child, learning she wishes Bunji to raise her, and presenting a final decision before Miya Satoshi's court."

    # ─────────────────────────────────────────────
    # ACT STRUCTURE (over days 9–11 of Winter's Embrace)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Act 1: The Lost Child" {
            SCENES ["Meeting Masayo", "With Honor They Served", "The Storm", "Bunji's Request"]
            DESCRIPTION "The PCs guard a memorial service for Masayo's parents at a Shinseist hill temple overlooking Kyūden Doji. A ferocious snowstorm — Yamakaze stirred by the frightened child — traps the assembly; the PCs keep order and reassure Masayo (whose neck bears a birthmark like Yamakaze's symbol). Impressed, the cartographer Miya Bunji asks the PCs to help adjudicate Masayo's adoption between the Dragon and Phoenix. Per-clan letters privately brief each player on their lord's agenda."

            # Table 1-1 (page 7): social objectives for keeping order during the storm.
            INTRIGUE_TABLE "Objectives at the Temple" {
                ^"Calming Attendees" DEF {
                    ^"Difficulty" STRING "TN 3 Courtesy (Earth 2, Fire 4) check or a TN 3 Command (Earth 2, Fire 4) check"
                    ^"Momentum Required" STRING "4"
                }
                ^"Consoling Masayo" DEF {
                    ^"Difficulty" STRING "TN 3 Sentiment (Water 2, Air 4) check or a TN 4 Theology (Void 3, Air 3, Earth 5) check"
                    ^"Momentum Required" STRING "4"
                }
                ^"Reinforcing the Temple" DEF {
                    ^"Difficulty" STRING "TN 3 Labor (Fire 2, Air 4) check or a TN 2 Fitness (Earth 2, Void 4) check"
                    ^"Momentum Required" STRING "4"
                }
            }

            # Table 1-2 (page 8): example claims each clan offers for Masayo's placement,
            # grouped by clan (the source lists three per clan).
            REFERENCE_TABLE "Clan Claims" {
                ^"Phoenix" DEF {
                    ^"Claim 1" STRING "Prior to her disappearance, Shiba Miku was a Phoenix shugenja. Records exist of her birthmark which consists of three wavy lines. This matches the birthmark found on Masayo's neck."
                    ^"Claim 2" STRING "There is a precedence for talented shugenja to join the Phoenix, even though a heritable connection exists with other clans."
                    ^"Claim 3" STRING "Existing maps show the village of Chisanrū was formerly a part of Phoenix lands, and Phoenix scrolls were found at the destroyed villa that Masayo came from."
                }
                ^"Dragon" DEF {
                    ^"Claim 1" STRING "The katana recovered by Bunji is an old Dragon design, its blade etched with murals of an epic battle in the mountains, its hilt adorned with the markings of the Kitsuki family mon."
                    ^"Claim 2" STRING "Historical documents exist showing the foundation of the Chisanrū village and its position within Dragon borders."
                    ^"Claim 3" STRING "The teachings of the Hinokami Prophecy speak of a child of two families who joins the Dragon Clan, her destiny to defeat a massive creature that will threaten Dragon holdings. The Dragon believe Masayo is this child."
                }
            }
        }
        PART 2 "Act 2: Those Who Take" {
            SCENES ["Games We Play", "The Kemari Tournament", "The Duel", "The Kidnapping"]
            DESCRIPTION "Shika Yuki arranges a kemari tournament to let the candidates vent their frustrations; instead tempers flare and the Dragon candidate challenges the Phoenix candidate to a duel that draws in the PCs. The kemari champion Daidoji Aki works the crowd (pining after Isawa Yoshiko). That evening, mercenary shinobi try to kidnap Masayo; an injured Bunji alerts the PCs, who must pursue the kidnappers and begin to suspect a clan — or a third party — is sowing discord."

            # Table 1-3 (page 11): pre-rolled per-round dice results for each NPC
            # contestant, so the GM need not roll them ((op) = Opportunity, (st) = strife).
            RESULTS_TABLE "Kemari Tournament Results" {
                ^"Asako Haruki" DEF {
                    ^"Round 1 (TN 2)" STRING "Success with 1 bonus (op), and 1 (st)"
                    ^"Round 2 (TN 3)" STRING "Success with 0 bonus (op)"
                    ^"Round 3 (TN 4)" STRING "Knocked out"
                }
                ^"Daidoji Aki" DEF {
                    ^"Round 1 (TN 2)" STRING "Success with 2 bonus (op), and 2 (st)"
                    ^"Round 2 (TN 3)" STRING "Success with 2 bonus (op), and 1 (st)"
                    ^"Round 3 (TN 4)" STRING "Success with 1 bonus (op), and 1 (st)"
                }
                ^"Isawa Yoshiko" DEF {
                    ^"Round 1 (TN 2)" STRING "Success with 2 bonus (op), and 2 (st)"
                    ^"Round 2 (TN 3)" STRING "Success with 2 bonus (op), and 1 (st)"
                    ^"Round 3 (TN 4)" STRING "Success with 1 bonus (op)"
                }
                ^"Kitsuki Tomoyo" DEF {
                    ^"Round 1 (TN 2)" STRING "Success with 1 bonus (op)"
                    ^"Round 2 (TN 3)" STRING "Success with 0 bonus (op), and 1 (st)"
                    ^"Round 3 (TN 4)" STRING "Success with 0 bonus (op)"
                }
                ^"Mirumoto Kazuya" DEF {
                    ^"Round 1 (TN 2)" STRING "Success with 2 bonus (op)"
                    ^"Round 2 (TN 3)" STRING "Success with 1 bonus (op)"
                    ^"Round 3 (TN 4)" STRING "Success with 0 bonus (op), and 1 (st)"
                }
            }
        }
        PART 3 "Act 3: Those Who Receive" {
            SCENES ["Bunji's Confession", "Preparing for Court", "Testing Masayo", "Semblance of Order (the court)", "Decisions, Decisions"]
            DESCRIPTION "The PCs help ready Masayo for a premature gempuku and test which clan she might suit — provoking her Accidentally Unleashed power and learning she wants Bunji to raise her. At court before the Imperial Herald Miya Satoshi, with Kitsuki Tomoyo and Asako Haruki opposing, the PCs present their findings as an Appeal-to-a-Person intrigue and decide Masayo's fate: the Dragon, the Phoenix, Bunji himself, or a creative middle path — each with consequences."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Kyūden Doji" DEF {
            TYPE "Palace"
            DESCRIPTION "The Esteemed Palaces of the Crane, atop the white cliffs on Rokugan's eastern shore; host to the Winter Court where the dispute over Masayo unfolds. A Shinseist temple complex sits in the hills behind the castle."
            NPCS [^"Miya Bunji", ^"Masayo", ^"Shika Yuki", ^"Daidoji Aki"]
        }
        ^"Chisanrū" DEF {
            TYPE "Village"
            DESCRIPTION "A long-forgotten village hidden in the valleys of the eastern Dragon provinces near the Phoenix border, with a sacred shrine to Yamakaze buried beneath it. Birthplace of Masayo and the secret home of her parents Kitsuki Taiki and Shiba Miku, until a catastrophe destroyed their villa."
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-scroll-or-blade-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        CHILD_AND_GUARDIAN [^"Masayo", ^"Miya Bunji"]
        DRAGON [^"Kitsuki Tomoyo", ^"Mirumoto Kazuya"]
        PHOENIX [^"Asako Haruki", ^"Isawa Yoshiko"]
        DEER_AND_HOST [^"Shika Yuki", ^"Daidoji Aki"]
        HIRED [^"Mercenary Shinobi"]
    }

    # This is a supplement to Winter's Embrace; the players use their existing
    # Winter Court characters, so there is no PARTY / pregen roster.
}
