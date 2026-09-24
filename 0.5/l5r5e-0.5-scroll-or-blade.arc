# L5R 5E — The Scroll or the Blade (.arc)
# Structure of the supplemental adventure for "Winter's Embrace" (FFG, 2020).
# GM narrative and read-aloud text live in l5r5e-0.5-scroll-or-blade.lore; the
# cast NPCs in l5r5e-0.5-scroll-or-blade-cast.ttrpg. This is a supplement run
# during lulls at Winter Court, so it uses the players' existing characters —
# there are no pregens.

ARC "the-scroll-or-the-blade" EXTENDS "l5r5e" {
    NAME "The Scroll or the Blade"
    VERSION "0.5.4"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "The Scroll or the Blade: A Supplemental Adventure for Winter's Embrace (Fantasy Flight Games, 2020)"
    LEAD_WRITER "Alexis Dykema"
    DESCRIPTION "The Scroll or the Blade is an adventure for Legend of the Five Rings Role Playing Game. Players should not read material past this point. This supplemental storyline occurs either during or after the events of Winter's Embrace. It is useful for Game Masters who wish to give players more tasks to perform during lulls in activity while at Winter Court. It is highly recommended that GMs read through The Scroll or the Blade in its entirety to become familiar with the characters and the plot before running it with a group of PCs.\n\nTaking place in the heart of Kyūden Doji, this supplemental adventure centers around an orphaned child of Dragon and Phoenix parents. Although both the Dragon and Phoenix Clans are usually more focused on spiritual matters rather than warfare, their traditionally cordial relationship becomes strained when the child displays powerful elemental affinity.\n\nBoth Dragon and Phoenix Clans have faced hardship in recent times, with the Dragon's declining birthrate, and the Phoenix's recent spiritual quandaries. Unfortunately, this desperation has caused them to see the child as a solution to their problems, or at the very least something more tangible to focus their energies on. This creates political unrest at Winter Court and through twisted connections and careful plots the child's temporary guardian, an Imperial cartographer, is manipulated into asking the PCs for help in determining the child's fate."

    THEMES ["A child as a political prize", "Dragon versus Phoenix; scholarship versus the sword", "Duty against compassion", "Chosen family over clan", "Secrets that could tip the scales"]

    TONE "Winter Court intrigue with a sympathetic child at its center; escalating to a kidnapping and a courtroom judgment"
    PLAYER_COUNT "The players' existing Winter Court characters (a supplement to Winter's Embrace; no pregens)"
    SUMMARY "The storyline begins with the PCs acting as guards during a memorial service honoring Masayo's parents. Without warning, a freak winter storm descends upon the temple, trapping the assembly within its walls. In accordance with their duty, the PCs help keep the elements at bay while reassuring attendees, particularly Masayo.\n\nWhen the storm passes, Miya Bunji approaches the PCs and asks for their assistance in helping him formalize Masayo's adoption. He stresses the need for quick and unbiased action in the hopes to avoid open hostility between the Dragon and Phoenix, both of whom are vying to adopt Masayo.\n\nTo calm the waters between the competing adopters, Bunji's friend Shika Yuki, a Deer Clan matchmaker, arranges a kemari tournament which she asks the PCs to participate in so they may learn more about the candidates. The competition is fierce and tempers flare, resulting in a confrontation where the Dragon candidate challenges the Phoenix candidate to a duel, a circumstance which quickly involves the PCs.\n\nLater that evening, mercenary shinobi attempt to kidnap Masayo. An injured Bunji alerts the PCs, who must find the kidnappers or risk Masayo falling into the wrong hands. The situation may lead the PCs to suspect that one of the interested parties may have hired the shinobi rather than risk the decision going against them, or perhaps there is someone else sowing discord between the Clans.\n\nDuring the final stages of their investigation, the PCs test the child's abilities and discover that Masayo wants Bunji to be her permanent guardian. Shika Yuki supports this decision, citing the potential imbalance the child's powers could have in the hands of either Great Clan.\n\nEventually the PCs must reach a consensus and present their findings in open court. However, their decision may create further disharmony between the Dragon and Phoenix that could no doubt spill over into the proceedings of the Winter Court, and in turn, Winter's Embrace."

    # ─────────────────────────────────────────────
    # ACT STRUCTURE (over days 9–11 of Winter's Embrace)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Act 1: The Lost Child" {
            SCENES ["Meeting Masayo", "With Honor They Served", "The Storm", "Bunji's Request"]
            DESCRIPTION "The storyline begins with the PCs acting as guards during a memorial service honoring Masayo's parents. Without warning, a freak winter storm descends upon the temple, trapping the assembly within its walls. In accordance with their duty, the PCs help keep the elements at bay while reassuring attendees, particularly Masayo.\n\nWhen the storm passes, Miya Bunji approaches the PCs and asks for their assistance in helping him formalize Masayo's adoption. He stresses the need for quick and unbiased action in the hopes to avoid open hostility between the Dragon and Phoenix, both of whom are vying to adopt Masayo."

            # Table 1-1 (page 7): social objectives for keeping order during the storm.
            INTRIGUE_TABLE "Objectives at the Temple" {
                #v6gfWi1YPZ9wo5OnHhOtjv ^"Calming Attendees" DEF {
                    ^"Difficulty" STRING "TN 3 Courtesy (Earth 2, Fire 4) check or a TN 3 Command (Earth 2, Fire 4) check"
                    ^"Momentum Required" STRING "4"
                }
                #NYbJi82Ur8lWeyyKA0h9em ^"Consoling Masayo" DEF {
                    ^"Difficulty" STRING "TN 3 Sentiment (Water 2, Air 4) check or a TN 4 Theology (Void 3, Air 3, Earth 5) check"
                    ^"Momentum Required" STRING "4"
                }
                #9rVTH6qn4BvPqo1jgb1pWw ^"Reinforcing the Temple" DEF {
                    ^"Difficulty" STRING "TN 3 Labor (Fire 2, Air 4) check or a TN 2 Fitness (Earth 2, Void 4) check"
                    ^"Momentum Required" STRING "4"
                }
            }

            # Table 1-2 (page 8): example claims each clan offers for Masayo's placement,
            # grouped by clan (the source lists three per clan).
            REFERENCE_TABLE "Clan Claims" {
                #k7YivV6SVCEmmM2vkTzwdM ^"Phoenix" DEF {
                    ^"Claim 1" STRING "Prior to her disappearance, Shiba Miku was a Phoenix shugenja. Records exist of her birthmark which consists of three wavy lines. This matches the birthmark found on Masayo's neck."
                    ^"Claim 2" STRING "There is a precedence for talented shugenja to join the Phoenix, even though a heritable connection exists with other clans."
                    ^"Claim 3" STRING "Existing maps show the village of Chisanrū was formerly a part of Phoenix lands, and Phoenix scrolls were found at the destroyed villa that Masayo came from."
                }
                #SlM0oo7vHHESOwOnX3NCT5 ^"Dragon" DEF {
                    ^"Claim 1" STRING "The katana recovered by Bunji is an old Dragon design, its blade etched with murals of an epic battle in the mountains, its hilt adorned with the markings of the Kitsuki family mon."
                    ^"Claim 2" STRING "Historical documents exist showing the foundation of the Chisanrū village and its position within Dragon borders."
                    ^"Claim 3" STRING "The teachings of the Hinokami Prophecy speak of a child of two families who joins the Dragon Clan, her destiny to defeat a massive creature that will threaten Dragon holdings. The Dragon believe Masayo is this child."
                }
            }
        }
        PART 2 "Act 2: Those Who Take" {
            SCENES ["Games We Play", "The Kemari Tournament", "The Duel", "The Kidnapping"]
            DESCRIPTION "To calm the waters between the competing adopters, Bunji's friend Shika Yuki, a Deer Clan matchmaker, arranges a kemari tournament which she asks the PCs to participate in so they may learn more about the candidates. The competition is fierce and tempers flare, resulting in a confrontation where the Dragon candidate challenges the Phoenix candidate to a duel, a circumstance which quickly involves the PCs.\n\nLater that evening, mercenary shinobi attempt to kidnap Masayo. An injured Bunji alerts the PCs, who must find the kidnappers or risk Masayo falling into the wrong hands. The situation may lead the PCs to suspect that one of the interested parties may have hired the shinobi rather than risk the decision going against them, or perhaps there is someone else sowing discord between the Clans."

            # Table 1-3 (page 11): pre-rolled per-round dice results for each NPC
            # contestant, so the GM need not roll them ((op) = Opportunity, (st) = strife).
            RESULTS_TABLE "Kemari Tournament Results" {
                COLUMNS ["NPC", "Round 1 (TN 2)", "Round 2 (TN 3)", "Round 3 (TN 4)"]
                ROW [#GIWEMDFZmBUEsKaY5htgwR ^"Asako Haruki", "Success with 1 bonus (op), and 1 (st)", "Success with 0 bonus (op)", "Knocked out"]
                ROW [#m2a7hu6Fovvu1fey7xaeLZ ^"Daidoji Aki", "Success with 2 bonus (op), and 2 (st)", "Success with 2 bonus (op), and 1 (st)", "Success with 1 bonus (op), and 1 (st)"]
                ROW [#lsEmFaXZECi8cc8S1UDFHN ^"Isawa Yoshiko", "Success with 2 bonus (op), and 2 (st)", "Success with 2 bonus (op), and 1 (st)", "Success with 1 bonus (op)"]
                ROW [#HIAWSJv8szdMDp82vaA5RX ^"Kitsuki Tomoyo", "Success with 1 bonus (op)", "Success with 0 bonus (op), and 1 (st)", "Success with 0 bonus (op)"]
                ROW [#Nd0oZEf58ZRl26ZUMFQZGh ^"Mirumoto Kazuya", "Success with 2 bonus (op)", "Success with 1 bonus (op)", "Success with 0 bonus (op), and 1 (st)"]
            }
        }
        PART 3 "Act 3: Those Who Receive" {
            SCENES ["Bunji's Confession", "Preparing for Court", "Testing Masayo", "Semblance of Order (the court)", "Decisions, Decisions"]
            DESCRIPTION "During the final stages of their investigation, the PCs test the child's abilities and discover that Masayo wants Bunji to be her permanent guardian. Shika Yuki supports this decision, citing the potential imbalance the child's powers could have in the hands of either Great Clan.\n\nEventually the PCs must reach a consensus and present their findings in open court. However, their decision may create further disharmony between the Dragon and Phoenix that could no doubt spill over into the proceedings of the Winter Court, and in turn, Winter's Embrace."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        #niwyWoJFsHVr4fw9aI6OUT ^"Kyūden Doji" DEF {
            TYPE "Palace"
            DESCRIPTION "The Esteemed Palaces of the Crane, also known as Kyūden Doji, stands atop the white cliffs on the eastern shore of Rokugan. However, nestled in the hills behind the grand castle, beyond the surrounding city, and atop a winding staircase, is a Shinseist temple complex. Comprised of several white and gold buildings with red tiled roofs, each fashioned to hold up to 100 guests, with the main temple large enough to house 250. Ornately carved 12-foot-high heavy wooden doors, fashioned from a single oak tree, welcome guests to the comfortable interior. Spacious and simple, the temple contains polished wooden floors and row after row of kneeling mats before reaching a raised platform that monks use to give their sermons."
            NPCS [#MklMVziFFER4Fq75gaqtBx ^"Miya Bunji", #27LrDOWn433b8zr4eTE2Kg ^"Masayo", #Ykrbqbvzw93sVuZyE4IFzj ^"Shika Yuki", #m2a7hu6Fovvu1fey7xaeLZ ^"Daidoji Aki"]
        }
        #U484yE1eyquhRYEJuw6dNV ^"Chisanrū" DEF {
            TYPE "Village"
            DESCRIPTION "The village of Chisanrū was long-forgotten, hidden among the valleys of the Eastern Dragon provinces, nestled near the borders of both Dragon and Phoenix lands. Unbeknown to its inhabitants, a sacred shrine to Yamakaze lay buried beneath the village.\n\nYears after its establishment, the village became the secret rendezvous location for two samurai; Kitsuki Taiki, a Dragon warrior, and Shiba Miku, a Phoenix shugenja. Over time, the two built a small villa, eventually giving birth to a daughter, Masayo, who possessed an affinity for the elements. Soon after Masayo was born, a minor fortune of the mountain winds, known as Yamakaze, saw Masayo's natural affinity and became enraptured by her. After several years, the relative peace of the villa was shattered when an avalanche roared down from the mountain and killed Taiki and Miku, though Masayo was saved by Yamakaze. The displaced snow blocked Dragon patrol paths, isolating the village further until it fell into obscurity."
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.5-scroll-or-blade-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        CHILD_AND_GUARDIAN [#27LrDOWn433b8zr4eTE2Kg ^"Masayo", #MklMVziFFER4Fq75gaqtBx ^"Miya Bunji"]
        DRAGON [#HIAWSJv8szdMDp82vaA5RX ^"Kitsuki Tomoyo", #Nd0oZEf58ZRl26ZUMFQZGh ^"Mirumoto Kazuya"]
        PHOENIX [#GIWEMDFZmBUEsKaY5htgwR ^"Asako Haruki", #lsEmFaXZECi8cc8S1UDFHN ^"Isawa Yoshiko"]
        DEER_AND_HOST [#Ykrbqbvzw93sVuZyE4IFzj ^"Shika Yuki", #m2a7hu6Fovvu1fey7xaeLZ ^"Daidoji Aki"]
        HIRED [#Ie80baMavQo1xAi2reeR3R ^"Mercenary Shinobi"]
    }

    # This is a supplement to Winter's Embrace; the players use their existing
    # Winter Court characters, so there is no PARTY / pregen roster.
}
