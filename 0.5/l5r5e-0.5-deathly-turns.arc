# L5R 5E — Deathly Turns (.arc)
# Structure of "Deathly Turns: Supplemental Encounters for Wheel of Judgment"
# (FFG) — three optional encounters and an appendix of adventure seeds. GM
# narrative and read-aloud text live in l5r5e-0.5-deathly-turns.lore; the cast
# (five statblocks, the Trio minion, and two profile NPCs) in
# l5r5e-0.5-deathly-turns-cast.ttrpg; the two new traditions in
# l5r5e-0.5-deathly-turns-mechanics.ttrpg. These encounters use the players' own
# characters — there are no pregens; the first two presume the PCs have been
# reincarnated as oni, as in Wheel of Judgment.

ARC "deathly-turns" EXTENDS "l5r5e" {
    NAME "Deathly Turns"
    VERSION "0.5.3"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "Deathly Turns: Supplemental Encounters for Wheel of Judgment (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "Deathly Turns is a game supplement that encompasses several optional bonus encounters meant to be played in conjunction with the Legend of the Five Rings Roleplaying Game adventure Wheel of Judgment. It consists of three encounters and an appendix of adventure seeds:\n\nBlood and Magic (page 3): This encounter takes place after the player characters (PCs) have been reincarnated as oni and have entered Jigoku, the Realm of Evil, in Part Two of Wheel of Judgment. This encounter also includes options that expand upon playing oni characters.\n\nEscape of the Hungry Dead (page 10): This encounter can be incorporated after the PCs have left Jigoku and are returning to Meido, the Realm of Waiting, through Gaki-dō, the Realm of the Hungry Dead. This encounter also provides additional information about Gaki-dō.\n\nA Mission from Lady Mazoku (page 15): This encounter takes place shortly after the PCs have returned to Ningen-dō, the Realm of Mortals.\n\nAppendix: Agents of Mazoku (page 22): This appendix provides several adventure seeds for subsequent adventures, which can occur any time after the players have played through Wheel of Judgment.\n\nIn addition to the bonus encounters, Deathly Turns introduces two new schools suitable for characters who join the party in the afterlife: the Mazoku's Enforcer Tradition (see page 24) and the Champion of Days Gone Tradition (see page 25)."

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
            DESCRIPTION "The PCs have been reincarnated as oni, using the masks provided by the maō (demon lord) Burakakin, as described beginning on page 11 of Wheel of Judgment. The masks have absorbed their spirits, causing them to be reincarnated as oni, and they have entered the hellish realm of Jigoku. In this form, they are able to move relatively freely through this land, something that would be far more difficult and dangerous were they still mortals. Burakakin has given the PCs the task of determining who, or what, is responsible for the missing paperwork and the general sabotage of the bureaucracy of Meido, which is causing a great deal of consternation in the court of Emma-Ō, the Fortune of Death and Judge of the Dead. Blood and Magic also gives the PCs a problem to solve that is independent of Burakakin's mission. The PCs may choose to ignore the new problem—with appropriate consequences, as described below—or to pursue it. If they pursue it, they may do so in parallel with Burakakin's mission, or they may place that mission on hold while they pursue the new one. In either case, Blood and Magic does not otherwise interact with Burakakin's mission. Note, however, that should the PCs' true natures and purpose for being in Jigoku be revealed during this encounter, it could very much have implications for Burakakin's mission."

            # Table 1-1 (page 3): how many oni to field in the final battle,
            # by PC group rank. Ranges reproduced as printed (they overlap at 12).
            ENCOUNTER_SCALING "Oni Battle Scaling" {
                #eGy5vm0zoIkAWXslTV92v8 ^"PC Group Rank 7 or lower" DEF { ^"Combatants" STRING "The Brute" }
                #UcTeTIpp0QJ3LjLESeLNVI ^"PC Group Rank 8–12" DEF { ^"Combatants" STRING "The Brute and one member of the Trio of Vicious Oni" }
                #3ExVwSwtLLY14oUJRX8kvh ^"PC Group Rank 12–16" DEF { ^"Combatants" STRING "The Brute and two members of the Trio of Vicious Oni" }
                #HQ2U8rR6OJzeIHcMgOdJsW ^"PC Group Rank 16+" DEF { ^"Combatants" STRING "The Brute and all three members of the Trio of Vicious Oni" }
            }

            # Table 1-2 (page 6): social objectives for the intrigue with the oni.
            INTRIGUE_TABLE "Blood and Magic Participants and Objectives" {
                #2lLmcfodG2qR264aRHZHdT ^"Appeal to the Brute" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "6"
                    ^"Base TN" STRING "3 (Water +2, Fire –2)"
                }
                #8t2JP6m7RhM0ikXiV1hx4y ^"Appeal to the Trio of Vicious Oni" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "8"
                    ^"Base TN" STRING "2 (Earth +2, Air –2)"
                }
                #XNmbUclQ1iaZYAtg5dN35U ^"Intimidate the new arrivals" DEF {
                    ^"Participant" STRING "The Brute"
                    ^"Momentum Points Needed" STRING "Highest PC focus"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
                #1k9iv5CIvfaJtAlI9B8oIf ^"Start a brawl" DEF {
                    ^"Participant" STRING "The Trio of Vicious Oni"
                    ^"Momentum Points Needed" STRING "Highest PC focus +5"
                    ^"Base TN" STRING "Highest PC vigilance –1"
                }
            }
        }
        PART 2 "Encounter 2: Escape of the Hungry Dead (Gaki-dō)" {
            SCENES ["Through the Crowd of Gaki", "Hiniku's Estate", "Accept Hiniku's Offer", "Help Hiniku Engineer the Escape", "Thwart Hiniku's Plans (past Hogo-sha)"]
            DESCRIPTION "In this encounter, as in Blood and Magic, the PCs are oni. However, they have left Jigoku and now travel through Gaki-dō, the Realm of the Hungry Dead, on their way back to Meido and the conclusion of their mission for Burakakin. Like Blood and Magic, this encounter is intended to be inset into Wheel of Judgment—specifically during Part Three: Returning, on page 26 of that adventure. However, Escape of the Hungry Dead is separate from Burakakin's mission for the PCs, providing an optional encounter in Gaki-dō. It could also be used as a stand-alone encounter, with appropriate setup by the GM."

            # Table 1-3 (page 12): social objectives for talking Hiniku down.
            INTRIGUE_TABLE "Dissuade Hiniku Participants and Objectives" {
                #e5xwDe6ln25LgKBbGLyfEf ^"Appeal to Hiniku's sense of duty" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "16"
                    ^"Base TN" STRING "3 (Air 2, Earth 4, Water 4)"
                }
                #UjwRtMRkzFwprCdCHaw4IU ^"Convince Hiniku that they will report her to her lord, the Hungry Governor (see page 13)" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "8"
                    ^"Base TN" STRING "4 (Air 3, Earth 5, Water 5)"
                }
                #tfTaiU7odHIWirZ80PJKx0 ^"Convince Hiniku's staff of bureaucrats to refuse to go along with her plan" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "9"
                    ^"Base TN" STRING "3 (Earth 4, Fire 4, Void 1)"
                }
                #U1lcRtVE9uS85QL6LrqQp7 ^"Convince the PCs she has given up on her plan (when in actuality she just intends to wait until they leave)" DEF {
                    ^"Participant" STRING "Hiniku"
                    ^"Momentum Points Needed" STRING "Highest PC focus –2"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
                #KATWZ3avFiyEHL94BuY8ro ^"Convince the PCs her plan is really for the greater good" DEF {
                    ^"Participant" STRING "Hiniku"
                    ^"Momentum Points Needed" STRING "Highest PC focus +3"
                    ^"Base TN" STRING "Highest PC vigilance –1"
                }
                #Rf2OrU96vhAZfhzGK1EwD2 ^"Get the PCs to offer to solve the root problem" DEF {
                    ^"Participant" STRING "One Mazoku Bureaucrat (representing Hiniku's staff)"
                    ^"Momentum Points Needed" STRING "Highest PC focus +5"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
            }
        }
        PART 3 "Encounter 3: A Mission from Lady Mazoku (Ningen-dō)" {
            SCENES ["Lady Mazoku's Charge", "The First Victim (Lonely Shore City)", "A Trail of Blood", "Protecting Shiba Akifusa", "Laying Hagane to Rest"]
            DESCRIPTION "Unlike the previous encounters, which take place in Jigoku and Gaki-dō, A Mission from Lady Mazoku takes place after the conclusion of Wheel of Judgment once the PCs have returned to Ningen-dō. This could be immediately after the adventure ends or at some point in the future: whatever works best for the campaign. This encounter provides a default NPC shade the PCs have to deal with, but the GM can substitute their own NPC, such as one whom the PCs have previously defeated. As always, the GM is free to adapt the NPC and encounter as needed."

            # Table 1-4 (page 19): social objectives for turning the shade Hagane aside.
            INTRIGUE_TABLE "Convincing Hagane to Turn Aside Participants and Objectives" {
                #syAxjNQuSQjzgC8uDSDjAM ^"Appeal to Hagane to abandon the grudge for the sake of his own spiritual growth" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "14"
                    ^"Base TN" STRING "3 (Air 1, Earth 5)"
                }
                #AJ2rezZx8OyV8E7zXRR4T0 ^"Convince Hagane to accept Akifusa's public apology" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "8"
                    ^"Base TN" STRING "4 (Air 2, Earth 6)"
                }
                #1H58OcjoDIRWnCQ7Ku3okv ^"Convince Akifusa to make a public apology" DEF {
                    ^"Participant" STRING "One or more PCs"
                    ^"Momentum Points Needed" STRING "4"
                    ^"Base TN" STRING "3 (Void 2)"
                }
                #9SPWrJfC0DgNyhh2Ghu0sA ^"Convince Hagane to spare Emihiko and the PCs in exchange for only Akifusa's life" DEF {
                    ^"Participant" STRING "Akifusa"
                    ^"Momentum Points Needed" STRING "12"
                    ^"Base TN" STRING "Highest PC vigilance"
                }
                #RpLkNB6m1wrVTAg6SKvvfb ^"Convince Akifusa to fight a final duel with Hagane (and certainly die) to make things right" DEF {
                    ^"Participant" STRING "Hagane"
                    ^"Momentum Points Needed" STRING "Highest PC focus +3"
                    ^"Base TN" STRING "3"
                }
            }
        }
        PART 4 "Appendix: Agents of Mazoku" {
            DESCRIPTION "Independent of both the Wheel of Judgment adventure and the preceding encounters in this supplement, the following are some abbreviated adventure seeds to provide GMs with inspiration for stories centering on the afterlife and its associated Spirit Realms. If a GM wishes to let Lady Mazoku play an ongoing role in their campaign, she can be the one to assign these tasks to the PCs; otherwise, another celestial agent can intervene. The GM should determine whether Lady Mazoku or the celestial agent simply seek to persuade the PCs to pursue the tasks or instead compel them to do so; in the latter case, the XP or other rewards should be somewhat more generous, to offset the sting of the spirits' coercion. The following adventure seeds could serve as excellent follow-ups to A Mission from Lady Mazoku or in any campaign with a supernatural focus. They could also provide players an opportunity to create new characters from the Falcon Clan (see page 81 and following in the Shadowlands sourcebook) or from schools focused on the afterlife, such as the Mazoku's Enforcer School (see page 24)."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS (Spirit Realms)
    # ─────────────────────────────────────────────
    LOCATIONS {
        #WPcvHqzvEomVlTRzF6R47M ^"The Bleak Place" DEF {
            TYPE "Landmark"
            DANGER_LEVEL "Jigoku (spiritually dead cavern)"
            DESCRIPTION "The Bleak Place, a cavern holding nothing but pools of stagnant water, is one of the very few parts of Jigoku that does not change or shift unnervingly. This is because it is, spiritually, utterly dead. In a past age, perhaps, some great desecration blasted all essence of vitality from the place, leaving it barren and desolate, even for an unhallowed place like Jigoku. Jya-Aku has chosen to meet the Brute here because she knows that the denizens of Jigoku shun the Bleak Place, making it as \"safe\" a place as one could likely find in the hellish realm."
            NPCS [#ZDW6SYBQgS4k9KVGjdigSQ ^"The Brute", #P2zbS6qPjvzxP5NxfusKAy ^"Jya-Aku", #wtP2JzwACxQ1R08t2xhFDK ^"Trio of Vicious Oni"]
        }
        #PStAWilPdspH2Xd5X2IhFt ^"Hiniku's Estate" DEF {
            TYPE "Building"
            DANGER_LEVEL "Gaki-dō"
            DESCRIPTION "If the PCs follow the gaki, they eventually reach a luxurious house surrounded by gardens and a stone wall perimeter. The building stands in stark contrast to the dreary, foul landscape all around it. Throngs of gaki mill about outside the estate, with more arriving every moment. Several small, blue, servile mazoku (formerly mortal souls who have become demons bound to serve Emma-Ō) periodically appear atop the wall, dumping baskets of what appear to be fruit and vegetables over it, where the horde of gaki ravenously consumes them. Vicious fights break out among the gaki as they compete for the food.\n\nInside the estate, the PCs find respite from the relentlessly bleak realm outside. The estate is sumptuous and luxurious. However, it is also noticeably disheveled and dilapidated, as though it's not being properly cleaned or maintained. The garden inside is abundant with fruit and vegetables. The plants are supernaturally enhanced, blossoming and growing new fruit almost as soon as the existing food has been picked by the small, servile mazoku. These mazoku are deferential to the PCs, but they excuse themselves after only brief snippets of conversation; they are too busy harvesting the fruit and dumping it over the wall to linger and talk."
            NPCS [#1JFeQ5a0giGTIjuPdAxqEt ^"Hiniku", #nDZ1RlYYBfSqKJJlD1nRkI ^"Hogo-sha"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-deathly-turns-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        JIGOKU [#ZDW6SYBQgS4k9KVGjdigSQ ^"The Brute", #wtP2JzwACxQ1R08t2xhFDK ^"Trio of Vicious Oni", #P2zbS6qPjvzxP5NxfusKAy ^"Jya-Aku"]
        GAKIDO [#1JFeQ5a0giGTIjuPdAxqEt ^"Hiniku", #nDZ1RlYYBfSqKJJlD1nRkI ^"Hogo-sha"]
        NINGENDO [#9ycb61EMTU6r75l0xyviDL ^"Lady Mazoku (Deathly Turns)", #ckbmZb8v0wxEKS75xKpL8x ^"Hagane"]
    }

    # Supplemental encounters for the players' own characters, so there is no
    # PARTY / pregen roster. Narrative figures (the maō Burakakin, Emma-Ō, the
    # victims Kakita Sadao and Doji Yūdai, the target Shiba Akifusa, the magistrate
    # Daidoji Himanari) live in the .lore / .codex.
}
