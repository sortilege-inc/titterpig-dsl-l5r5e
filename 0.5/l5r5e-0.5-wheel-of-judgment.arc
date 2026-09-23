# L5R 5E — Wheel of Judgment (.arc)
# Structure of "Wheel of Judgment: An Adventure in the Underworld" (L5R13DLC01a,
# FFG) — a three-part adventure for characters who have died in the Mortal Realm.
# GM narrative and the verbatim boxed read-aloud text live in
# l5r5e-0.5-wheel-of-judgment.lore; the nine statblocks in
# l5r5e-0.5-wheel-of-judgment-cast.ttrpg. The adventure uses the players' own
# (deceased) characters — no pregens. The free supplement Deathly Turns provides
# additional underworld encounters (see l5r5e-0.5-deathly-turns.*).

ARC "wheel-of-judgment" EXTENDS "l5r5e" {
    NAME "Wheel of Judgment"
    VERSION "0.5.1"
    SPEC_VERSION "0.5"
    SYSTEM "l5r5e"
    SOURCE "Wheel of Judgment: An Adventure in the Underworld (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "Wheel of Judgment is an adventure for the Legend of the Five Rings Roleplaying Game, designed for characters who have met their end in the Mortal Realm. It offers players the opportunity to earn a second chance, return to Ningen-dō, and continue the lives they lost.\n\nThis adventure takes place in the underworld, including Meido, the Realm of Waiting; Jigoku, the Realm of Evil; and Gaki-dō, the Realm of Hungry Dead. PCs may witness disturbing sights in the Realm of Evil and face experiences unlike anything in Rokugan. Of course, the GM can tone down—or increase—the horror elements as appropriate for their players.\n\nAs the PCs learn, everyone and everything in Rokugan must eventually pass through the Realm of Waiting. Additional information about the underworld can be found in Celestial Realms, but that supplement is not necessary to play Wheel of Judgment."

    THEMES ["Death, judgment, and the chance of a second life", "The bureaucracy and corruption of the afterlife", "Walking (and passing) among the demons of Jigoku", "Illusion and truth — an unseen saboteur behind the chaos of Meido"]

    TONE "Spirit-realm horror and intrigue: an interminable queue in the Realm of Waiting, a perilous journey through the Realm of Evil disguised as oni, and a return that ends in a battle before the gates of the palace of Emma-Ō"
    PLAYER_COUNT "The players' own deceased characters (no pregens); in Part Two they are temporarily reincarnated as oni"
    SETTING "The underworld — Meido (the Realm of Waiting), Jigoku (the Realm of Evil), and Gaki-dō (the Realm of the Hungry Dead), around the many-tiered wheel-shaped palace of Emma-Ō"
    SUMMARY "In Part One, the PCs find themselves in a strange landscape. They soon come to the realization that they have died and are now awaiting judgment in Meido, the Realm of Waiting. Mazoku ask them to join a queue of souls, which includes the shades of other humans, as well as animals and other creatures. When the PCs' turn finally comes, they are informed that their papers are missing. Faced with waiting an eternity, the PCs might attempt to find these papers themselves, or take the matter up with a higher-ranking mazoku. Either option requires them to explore Meido while avoiding the mazoku guards who patrol it. Eventually, a mazoku offers them a deal: gather information in Jigoku, and earn a return to the Mortal Realm, memories intact. Some mazoku have fallen under the influence of an oni and are deliberately causing problems in Meido. He needs to know who is involved.\n\nPart Two has the PCs reincarnated in Jigoku, the Realm of Evil, as oni. The PCs must explore the realm to discover the demon behind the sabotage, and who its allies are. The PCs' journey takes them to the fortress of Fu Leng, but they must also visit an oni who bears the cipher, and talk their way past the lost Tenth Kami, Ryoshun, before they can return to the mazoku with any usable information.\n\nPart Three encompasses the PCs' return to Meido through Gaki-dō, giving them a glimpse of the horrors there. Returning to the Realm of Waiting as unwelcome oni, the PCs finally reveal the corrupt mazoku, but this draws the attention of the oni behind it all, which manifests in Meido for the final battle.\n\nOnce the oni is defeated, the PCs are taken before Emma-Ō to be rewarded and returned to Ningen-dō. How they have performed during the course of the adventure determines the details of their return."

    # ─────────────────────────────────────────────
    # ADVENTURE STRUCTURE (three parts)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part One: Meido, the Realm of Waiting" {
            SCENES ["Arrival (awakening dead in Meido)", "The Landscape of Meido", "The Guard (Minroki, Mazoku Guard)", "The Queue (the Deadened condition; Forest Troll; Reju Tabito)", "Exploring Meido", "Meido Dust", "Office 801 (a mazoku magistrate; the missing papers)", "Rikakima, Mazoku Magistrate", "Evidence of Sabotage", "Burakakin's Deal"]
            DESCRIPTION "In the first part of the adventure, the PCs awaken in Meido, the Realm of Waiting. After getting their bearings and coming to grips with their recent demise, the PCs learn that they face an interminable wait in queue. Whether they patiently wait or find a shortcut to the first gate, the PCs learn that the records of their life are missing, and they cannot be judged until these are found.\n\nIt is up to the PCs to find out what happened to their paperwork, and in their search, they may uncover evidence of sabotage and corrupt practices within the bureaucracy of Meido. Whether escorted by guards or in the course of their exploration, the PCs ultimately come to the office of a maō named Burakakin, who offers them a deal."

            # Realm rules for Meido are detailed in the .lore: the Deadened
            # condition and Meido Dust (a shade in Meido makes a TN 1 Meditation
            # check to resist the deadening atmosphere, the TN rising by 1 each
            # repeat); items are carried as ghostly echoes ("You Can Take It With
            # You").
        }

        PART 2 "Part Two: Jigoku, the Realm of Evil" {
            SCENES ["Reincarnation as Oni", "Oni and Reincarnation", "The Guide (Torikkusutā, the Trickster Oni)", "Exploring Jigoku (The River of Blood; Gaping Maw)", "Rooting Out Corruption", "The Fortress of Fu Leng", "The Repository of All Knowledge (the cipher on an oni's skin)", "The Archive (the coded list; the Phantasm watching)", "The Phantasmal Oni (revealed)"]
            DESCRIPTION "In Part Two, the PCs are reborn in Jigoku as oni in order to undertake their mission for Burakakin. The PCs are free to explore Jigoku, but must face its many dangers. The PCs should hear rumors of a potent Phantasmal Oni that claims to do Fu Leng's bidding. Ultimately, the PCs must find records of the Phantasm's subterfuge in the dread Fortress of Fu Leng. To make sense of these coded plans, they must also retrieve the cipher held by the Word-Hungry Oni, who dwells in the Repository of All Knowledge.\n\nWith the evidence in hand, the PCs must travel to the border between Jigoku and Meido, guarded by the Tenth Kami, Ryoshun. The PCs must either convince him of the truth of their mission or find another way back to Meido."

            # Realm rules for Jigoku are in the .lore: mahō is usable here; oni who
            # are injured but not destroyed may recover at the River of Blood;
            # unique oni without profiles use core-rulebook profiles (Guardian Oni,
            # Captain Oni, Insectoid Oni, Sinister Oni).
        }

        PART 3 "Part Three: Returning" {
            SCENES ["Gaki-dō, the Realm of the Hungry Dead", "The Gaki", "Ryoshun (the lost Tenth Kami)", "Phantasmal Interference", "Back to Meido — Revealing the Saboteurs", "Enter the Phantasm", "Battle Between the Realms", "Is This the End? (the Phantasm's final illusion)", "Final Judgment (the Palace of Emma-Ō)", "Return (to Ningen-dō)"]
            DESCRIPTION "In this part of the adventure, the PCs begin their journey through Gaki-dō and back to Meido. However, their demonic forms make the PCs natural enemies of the mazoku guards, so reaching Burakakin is difficult. The PCs might find themselves searching for, and even dealing with, some of the mazoku on the list of saboteurs in order to prove themselves and reach the relevant authorities. This part also includes the buildup to a final conflict against the Phantasmal Oni, advice for running that battle, and the adventure's conclusion."

            # Realm rules for Gaki-dō / the final battle are in the .lore: the TN of
            # invocation checks made in Gaki-dō increases by 1; an oni attacking a
            # shade (or a shade a demon) increases the check TN by 2, except for the
            # mazoku. If the PCs are defeated, Emma-Ō himself arrives and the
            # promises to the PCs are still honored.
        }
    }

    # ─────────────────────────────────────────────
    # CAST ROSTER (statblocks in the -cast file; narrative figures in the .lore/.codex)
    # ─────────────────────────────────────────────
    PARTY {
        NOTE "The players use their own deceased characters throughout; in Part Two they are temporarily reincarnated as oni. There are no pregens."
        CAST_FILE "l5r5e-0.5-wheel-of-judgment-cast.ttrpg"
        ADVERSARIES ["Mazoku Guard", "Mazoku Bureaucrat", "Trickster Oni", "Bladed Oni", "Word-Hungry Oni", "Word-Hungry Hand", "Scribe of Jigoku", "Gaki", "Phantasmal Oni"]
        PROFILE_NPCS ["Guardian Oni (Sinister Oni, core p.320)", "Captain Oni (Sinister Oni, core p.320)", "Insectoid Oni (Sinister Oni, core p.320)", "Forest Troll (core p.321)", "Reju Tabito (Seasoned Courtier, core p.313)"]
        NARRATIVE_NPCS ["Burakakin (the maō)", "Emma-Ō", "Fu Leng", "Ryoshun", "Minroki", "Rikakima", "Reju Tabito", "Akio", "Hirosi", "Kironobiri"]
    }
}
