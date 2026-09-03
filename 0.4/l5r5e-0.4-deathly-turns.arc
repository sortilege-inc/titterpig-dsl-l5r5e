# L5R 5E — Deathly Turns (.arc)
# Structure of "Deathly Turns: Supplemental Encounters for Wheel of Judgment"
# (FFG) — three optional encounters and an appendix of adventure seeds. GM
# narrative and read-aloud text live in l5r5e-0.4-deathly-turns.lore; the cast
# (five statblocks, the Trio minion, and two profile NPCs) in
# l5r5e-0.4-deathly-turns-cast.ttrpg; the two new traditions in
# l5r5e-0.4-deathly-turns-mechanics.ttrpg. These encounters use the players' own
# characters — there are no pregens; the first two presume the PCs have been
# reincarnated as oni, as in Wheel of Judgment.

ARC "deathly-turns" EXTENDS "l5r5e" {
    NAME "Deathly Turns"
    VERSION "0.4.2"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Deathly Turns: Supplemental Encounters for Wheel of Judgment (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "A supplement of three optional bonus encounters designed to be played in conjunction with the Wheel of Judgment adventure, plus an appendix of adventure seeds and two new character traditions. The first two encounters take place in the Spirit Realms and presume the PCs have been reincarnated as oni (Blood and Magic in Jigoku; Escape of the Hungry Dead in Gaki-dō); the third takes place in Ningen-dō with conventional mortal PCs (A Mission from Lady Mazoku). Each can also be lifted out and run on its own."

    THEMES ["Journeys through the Realms of the dead", "Playing (and passing among) the demons of Jigoku", "The bureaucracy and law of the afterlife", "A vengeful shade and the price of justice", "The hidden agents of Emma-Ō and the Falcon Clan"]

    TONE "Spirit-realm horror and intrigue: bargaining among oni in Jigoku, navigating Gaki-dō's hungry dead, and hunting a ghostly duelist in the Mortal Realm"
    PLAYER_COUNT "The players' own characters (no pregens); the first two encounters presume PCs reincarnated as oni"
    SETTING "Jigoku (Realm of Evil), Gaki-dō (Realm of the Hungry Dead), and Ningen-dō (the Mortal Realm), around the events of Wheel of Judgment"
    SUMMARY "Deathly Turns gathers three self-contained encounters for a journey through the Realms of the dead. In Blood and Magic, the PCs — reincarnated as oni via the maō Burakakin's masks — spy on and confront the oni known as the Brute, its Trio of Vicious Oni, and the mahō-tsukai Jya-Aku at the Bleak Place, learning of Jya-Aku's Fel Mantle and her plan to open a tunnel from the Shadowlands into Rokugan. In Escape of the Hungry Dead, crossing Gaki-dō near Hiniku's estate, the PCs discover Hiniku's scheme to send a mass of gaki into the Mortal Realm and must decide whether to aid, thwart, or profit from it — past the mazoku guardian Hogo-sha. In A Mission from Lady Mazoku, back in Ningen-dō, the Falcon Clan's secret patron charges the PCs to hunt the escaped shade Hagane, a vengeful ghostly duelist murdering older warriors, and return him to the afterlife."

    # ─────────────────────────────────────────────
    # ENCOUNTER STRUCTURE (three encounters + an appendix)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Encounter 1: Blood and Magic (Jigoku)" {
            SCENES ["Eavesdropping on the Oni", "On the Trail of Evil", "Join Forces with (or Deceive) the Oni", "Fight! (the Brute, Trio, and Jya-Aku)", "The Scroll and the Fel Mantle"]
            DESCRIPTION "Reincarnated as oni by the maō Burakakin's masks and moving through Jigoku, the PCs come upon the Brute, its Trio of Vicious Oni, and the mahō-tsukai Jya-Aku conspiring at the Bleak Place — a spiritually dead cavern the denizens of Jigoku shun. The PCs may eavesdrop, join or deceive the demons, or fight them; either way they can recover the Brute's scroll (naming the Bleak Place) and learn of Jya-Aku's Fel Mantle and her leather map to a tunnel from the Shadowlands into Rokugan — a mortal trespass in Jigoku the PCs may resolve to seal. (Table 1-1 scales the Brute and Trio to the party.)"

            # Table 1-1 (page 3): how many oni to field in the final battle,
            # by PC group rank. Ranges reproduced as printed (they overlap at 12).
            ENCOUNTER_SCALING "Oni Battle Scaling" {
                ^"PC Group Rank 7 or lower" DEF { ^"Combatants" STRING "The Brute" }
                ^"PC Group Rank 8–12" DEF { ^"Combatants" STRING "The Brute and one member of the Trio of Vicious Oni" }
                ^"PC Group Rank 12–16" DEF { ^"Combatants" STRING "The Brute and two members of the Trio of Vicious Oni" }
                ^"PC Group Rank 16+" DEF { ^"Combatants" STRING "The Brute and all three members of the Trio of Vicious Oni" }
            }

            # Table 1-2 (page 6): social objectives for the intrigue with the oni.
            INTRIGUE_TABLE "Blood and Magic Participants and Objectives" {
                ^"Appeal to the Brute" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "6"
                    ^"Base TN" STRING "3 (Water +2, Fire –2)"
                }
                ^"Appeal to the Trio of Vicious Oni" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "8"
                    ^"Base TN" STRING "2 (Earth +2, Air –2)"
                }
                ^"Intimidate the new arrivals" DEF {
                    ^"Participant" STRING "The Brute"
                    ^"Momentum Points Needed" STRING "Highest PC focus"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
                ^"Start a brawl" DEF {
                    ^"Participant" STRING "The Trio of Vicious Oni"
                    ^"Momentum Points Needed" STRING "Highest PC focus +5"
                    ^"Base TN" STRING "Highest PC vigilance –1"
                }
            }
        }
        PART 2 "Encounter 2: Escape of the Hungry Dead (Gaki-dō)" {
            SCENES ["Through the Crowd of Gaki", "Hiniku's Estate", "Accept Hiniku's Offer", "Help Hiniku Engineer the Escape", "Thwart Hiniku's Plans (past Hogo-sha)"]
            DESCRIPTION "Returning toward Meido through Gaki-dō, the PCs reach the estate of Hiniku, a bureaucrat secretly engineering a mass escape of gaki into Ningen-dō through a long-disused passage guarded by the mazoku warrior Hogo-sha. Believing the PCs are oni, Hiniku offers rewards to help or to look away. The PCs can accept her offer, help open the way, or thwart her — dissuading, subduing, informing on, or killing her — navigating the crowd of hungry dead and the passage's guardian."

            # Table 1-3 (page 12): social objectives for talking Hiniku down.
            INTRIGUE_TABLE "Dissuade Hiniku Participants and Objectives" {
                ^"Appeal to Hiniku's sense of duty" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "16"
                    ^"Base TN" STRING "3 (Air 2, Earth 4, Water 4)"
                }
                ^"Convince Hiniku that they will report her to her lord, the Hungry Governor (see page 13)" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "8"
                    ^"Base TN" STRING "4 (Air 3, Earth 5, Water 5)"
                }
                ^"Convince Hiniku's staff of bureaucrats to refuse to go along with her plan" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "9"
                    ^"Base TN" STRING "3 (Earth 4, Fire 4, Void 1)"
                }
                ^"Convince the PCs she has given up on her plan (when in actuality she just intends to wait until they leave)" DEF {
                    ^"Participant" STRING "Hiniku"
                    ^"Momentum Points Needed" STRING "Highest PC focus –2"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
                ^"Convince the PCs her plan is really for the greater good" DEF {
                    ^"Participant" STRING "Hiniku"
                    ^"Momentum Points Needed" STRING "Highest PC focus +3"
                    ^"Base TN" STRING "Highest PC vigilance –1"
                }
                ^"Get the PCs to offer to solve the root problem" DEF {
                    ^"Participant" STRING "One Mazoku Bureaucrat (representing Hiniku's staff)"
                    ^"Momentum Points Needed" STRING "Highest PC focus +5"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
            }
        }
        PART 3 "Encounter 3: A Mission from Lady Mazoku (Ningen-dō)" {
            SCENES ["Lady Mazoku's Charge", "The First Victim (Lonely Shore City)", "A Trail of Blood", "Protecting Shiba Akifusa", "Laying Hagane to Rest"]
            DESCRIPTION "Back in the Mortal Realm after Wheel of Judgment, the PCs are confronted by Lady Mazoku, secret patron of the Falcon Clan and a magistrate of Gaki-dō, who charges them to find and return a dangerous escaped shade. The shade is Hagane — in life Mirumoto Ikutsuki — a ghostly duelist murdering older warriors across the Empire (the instructor Kakita Sadao in Lonely Shore City, the duelist Doji Yūdai near Otosan Uchi). Following the trail of broken katana, the PCs protect his next target, Shiba Akifusa, and must resolve Hagane's vengeance to set his spirit to rest (which transforms his cursed daishō from Unholy to Sacred)."

            # Table 1-4 (page 19): social objectives for turning the shade Hagane aside.
            INTRIGUE_TABLE "Convincing Hagane to Turn Aside Participants and Objectives" {
                ^"Appeal to Hagane to abandon the grudge for the sake of his own spiritual growth" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "14"
                    ^"Base TN" STRING "3 (Air 1, Earth 5)"
                }
                ^"Convince Hagane to accept Akifusa's public apology" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "8"
                    ^"Base TN" STRING "4 (Air 2, Earth 6)"
                }
                ^"Convince Akifusa to make a public apology" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "4"
                    ^"Base TN" STRING "3 (Void 2)"
                }
                ^"Convince Hagane to spare Emihiko and the PCs in exchange for only Akifusa's life" DEF {
                    ^"Participant" STRING "Akifusa"
                    ^"Momentum Points Needed" STRING "12"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
                ^"Convince Akifusa to fight a final duel with Hagane (and certainly die) to make things right" DEF {
                    ^"Participant" STRING "Hagane"
                    ^"Momentum Points Needed" STRING "Highest PC focus +3"
                    ^"Base TN" STRING "3"
                }
            }
        }
        PART 4 "Appendix: Agents of Mazoku" {
            DESCRIPTION "Adventure seeds building on A Mission from Lady Mazoku (agents of the Falcon Clan and of Emma-Ō hunting escaped spirits), plus two new Bushi traditions for characters created in the afterlife: the Mazoku's Enforcer Tradition [Bushi, Sage] and the Champion of Days Gone Tradition [Bushi] (see l5r5e-0.4-deathly-turns-mechanics.ttrpg)."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS (Spirit Realms)
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"The Bleak Place" DEF {
            TYPE "Landmark"
            DANGER_LEVEL "Jigoku (spiritually dead cavern)"
            DESCRIPTION "A cavern in Jigoku holding nothing but pools of stagnant water — one of the very few parts of the Realm of Evil that does not shift, because it is spiritually utterly dead, blasted of all vitality by some ancient desecration. Its denizens shun it, making it as 'safe' a meeting place as Jigoku offers; Jya-Aku meets the Brute here."
            NPCS [^"The Brute", ^"Jya-Aku", ^"Trio of Vicious Oni"]
        }
        ^"Hiniku's Estate" DEF {
            TYPE "Building"
            DANGER_LEVEL "Gaki-dō"
            DESCRIPTION "A sumptuous estate amid the joylessly bleak realm of Gaki-dō, near the threshold between Jigoku and Gaki-dō, held by the bureaucrat Hiniku — from which she schemes to loose a mass of gaki into Ningen-dō through a nearby disused passage."
            NPCS [^"Hiniku", ^"Hogo-sha"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-deathly-turns-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        JIGOKU [^"The Brute", ^"Trio of Vicious Oni", ^"Jya-Aku"]
        GAKIDO [^"Hiniku", ^"Hogo-sha"]
        NINGENDO [^"Lady Mazoku (Deathly Turns)", ^"Hagane"]
    }

    # Supplemental encounters for the players' own characters, so there is no
    # PARTY / pregen roster. Narrative figures (the maō Burakakin, Emma-Ō, the
    # victims Kakita Sadao and Doji Yūdai, the target Shiba Akifusa, the magistrate
    # Daidoji Himanari) live in the .lore / .codex.
}
