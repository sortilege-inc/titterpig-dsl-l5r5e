# L5R 5E — Wheel of Judgment (.arc)
# Structure of "Wheel of Judgment: An Adventure in the Underworld" (L5R13DLC01a,
# FFG) — a three-part adventure for characters who have died in the Mortal Realm.
# GM narrative and the verbatim boxed read-aloud text live in
# l5r5e-0.4-wheel-of-judgment.lore; the nine statblocks in
# l5r5e-0.4-wheel-of-judgment-cast.ttrpg. The adventure uses the players' own
# (deceased) characters — no pregens. The free supplement Deathly Turns provides
# additional underworld encounters (see l5r5e-0.4-deathly-turns.*).

ARC "wheel-of-judgment" EXTENDS "l5r5e" {
    NAME "Wheel of Judgment"
    VERSION "0.4"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Wheel of Judgment: An Adventure in the Underworld (Fantasy Flight Games)"
    LEAD_WRITER "Fantasy Flight Games"
    DESCRIPTION "An adventure for characters who have met their end in the Mortal Realm, offering them a chance to earn a second chance and return to Ningen-dō. It takes place across the underworld — Meido (the Realm of Waiting), Jigoku (the Realm of Evil), and Gaki-dō (the Realm of the Hungry Dead). Additional information on the underworld can be found in Celestial Realms, though it is not required to play."

    THEMES ["Death, judgment, and the chance of a second life", "The bureaucracy and corruption of the afterlife", "Walking (and passing) among the demons of Jigoku", "Illusion and truth — an unseen saboteur behind the chaos of Meido"]

    TONE "Spirit-realm horror and intrigue: an interminable queue in the Realm of Waiting, a perilous journey through the Realm of Evil disguised as oni, and a return that ends in a battle before the gates of the palace of Emma-Ō"
    PLAYER_COUNT "The players' own deceased characters (no pregens); in Part Two they are temporarily reincarnated as oni"
    SETTING "The underworld — Meido (the Realm of Waiting), Jigoku (the Realm of Evil), and Gaki-dō (the Realm of the Hungry Dead), around the many-tiered wheel-shaped palace of Emma-Ō"
    SUMMARY "Having died in another adventure, the PCs awaken in Meido to find that the records of their lives are missing and they cannot be judged until the paperwork is found. Investigating the mazoku bureaucracy — meeting the guard Minroki and the bribe-taking magistrate Rikakima — they uncover evidence of sabotage and come at last to the office of a maō named Burakakin, who reincarnates them as oni and sends them into Jigoku to discover who is sabotaging Meido. Guided (and tricked) by the Trickster Oni Torikkusutā, they journey through the Realm of Evil to the Fortress of Fu Leng, recover a coded list of compromised mazoku from the Archive and the cipher to read it, and learn that the saboteur is the illusion-demon the Phantasmal Oni. Returning through Gaki-dō — parleying past the lost Tenth Kami, Ryoshun — they reveal the corrupt mazoku, only to draw the Phantasm, which manifests in Meido for a final battle. With the Phantasm defeated, the PCs are taken before Emma-Ō, who — unable to make a proper accounting of their karma — returns them to Ningen-dō, their conduct in the underworld shaping the details of their return."

    # ─────────────────────────────────────────────
    # ADVENTURE STRUCTURE (three parts)
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part One: Meido, the Realm of Waiting" {
            SCENES ["Arrival (awakening dead in Meido)", "The Landscape of Meido", "The Guard (Minroki, Mazoku Guard)", "The Queue (the Deadened condition; Forest Troll; Reju Tabito)", "Exploring Meido", "Meido Dust", "Office 801 (a mazoku magistrate; the missing papers)", "Rikakima, Mazoku Magistrate", "Evidence of Sabotage", "Burakakin's Deal"]
            DESCRIPTION "The PCs awaken in Meido, the Realm of Waiting, dressed and equipped as at death and facing an interminable queue toward the palace of Emma-Ō. Learning that the records of their lives are missing, they investigate the mazoku bureaucracy — the guard Minroki, the office-bound magistrates, the bribe-taking Rikakima — and uncover evidence of sabotage and corruption. Their search leads to the office of the maō Burakakin, who offers them a deal: he will restore their chance at judgment if they discover who is sabotaging Meido from within Jigoku."

            # Realm rules for Meido are detailed in the .lore: the Deadened
            # condition and Meido Dust (a shade in Meido makes a TN 1 Meditation
            # check to resist the deadening atmosphere, the TN rising by 1 each
            # repeat); items are carried as ghostly echoes ("You Can Take It With
            # You").
        }

        PART 2 "Part Two: Jigoku, the Realm of Evil" {
            SCENES ["Reincarnation as Oni", "Oni and Reincarnation", "The Guide (Torikkusutā, the Trickster Oni)", "Exploring Jigoku (The River of Blood; Gaping Maw)", "Rooting Out Corruption", "The Fortress of Fu Leng", "The Repository of All Knowledge (the cipher on an oni's skin)", "The Archive (the coded list; the Phantasm watching)", "The Phantasmal Oni (revealed)"]
            DESCRIPTION "Burakakin reincarnates the PCs as oni (they must leave everything behind) and sends them into Jigoku. Guided and secretly tricked by the Trickster Oni Torikkusutā, they explore the Realm of Evil — the River of Blood, the Gaping Maw — and root out corruption by seeking the Fortress of Fu Leng. There they recover a coded list of compromised mazoku from the Archive (watched invisibly by the Phantasm) and the cipher to read it from an oni in the Repository of All Knowledge, learning that the saboteur is the illusion-demon the Phantasmal Oni — which sees most other oni as rivals or enemies."

            # Realm rules for Jigoku are in the .lore: mahō is usable here; oni who
            # are injured but not destroyed may recover at the River of Blood;
            # unique oni without profiles use core-rulebook profiles (Guardian Oni,
            # Captain Oni, Insectoid Oni, Sinister Oni).
        }

        PART 3 "Part Three: Returning" {
            SCENES ["Gaki-dō, the Realm of the Hungry Dead", "The Gaki", "Ryoshun (the lost Tenth Kami)", "Phantasmal Interference", "Back to Meido — Revealing the Saboteurs", "Enter the Phantasm", "Battle Between the Realms", "Is This the End? (the Phantasm's final illusion)", "Final Judgment (the Palace of Emma-Ō)", "Return (to Ningen-dō)"]
            DESCRIPTION "The PCs journey home through Gaki-dō, the Realm of the Hungry Dead, fending off starving gaki and parleying past the lost Tenth Kami, Ryoshun, to reach Meido — pursued by the Phantasm, which follows them in. Reaching Burakakin to reveal the compromised mazoku, they trigger the Phantasm's manifestation: it and the hidden oni of Meido attack, and a final skirmish, the Battle Between the Realms, decides the realm's fate. Even in death the Phantasm attempts one last illusion of victory. With it defeated, Burakakin takes the PCs before Emma-Ō, who — finding no proper accounting of their karma possible — returns them to Ningen-dō, the details of their return shaped by how they conducted themselves in the underworld."

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
        CAST_FILE "l5r5e-0.4-wheel-of-judgment-cast.ttrpg"
        ADVERSARIES ["Mazoku Guard", "Mazoku Bureaucrat", "Trickster Oni", "Bladed Oni", "Word-Hungry Oni", "Word-Hungry Hand", "Scribe of Jigoku", "Gaki", "Phantasmal Oni"]
        PROFILE_NPCS ["Guardian Oni (Sinister Oni, core p.320)", "Captain Oni (Sinister Oni, core p.320)", "Insectoid Oni (Sinister Oni, core p.320)", "Forest Troll (core p.321)", "Reju Tabito (Seasoned Courtier, core p.313)"]
        NARRATIVE_NPCS ["Burakakin (the maō)", "Emma-Ō", "Fu Leng", "Ryoshun", "Minroki", "Rikakima", "Reju Tabito", "Akio", "Hirosi", "Kironobiri"]
    }
}
