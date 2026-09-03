# L5R 5E — Sins of Regret (.arc)
# Structure of "Sins of Regret: An Adventure in the Forgotten Heart of the
# Empire" (FFG). GM narrative and read-aloud text live in
# l5r5e-0.4-sins-of-regret.lore; the cast NPCs in
# l5r5e-0.4-sins-of-regret-cast.ttrpg. Designed for rōnin PCs of rank 2+, it uses
# the players' own characters — there are no pregens.

ARC "sins-of-regret" EXTENDS "l5r5e" {
    NAME "Sins of Regret"
    SUBTITLE "An Adventure in the Forgotten Heart of the Empire"
    VERSION "0.4.1"
    SPEC_VERSION "0.4"
    SYSTEM "l5r5e"
    SOURCE "Sins of Regret (Fantasy Flight Games, 2020 — product L5R11)"
    LEAD_WRITER "Tim Cox and Lisa Farrell"
    DESCRIPTION "An adventure for the Legend of the Five Rings Roleplaying Game, designed for rōnin PCs of rank 2 or higher, that tests their commitment to Bushidō amid a looming conflict between an unjust lord and desperate peasants. Tied to Path of Waves' Twin Blessings Village, it can be a return visit exposing the changes wrought by a new daimyō, Reju Jikai."

    THEMES ["The free will of the lordless rōnin", "Bushidō against an unjust lord", "Sins that fester into elemental and spiritual imbalance", "Regret and the chance for redemption", "The powerless against the powerful"]

    TONE "A slow-burning tragedy of a failing lord and a suffering village, building to a mass battle whose sides the PCs choose"
    PLAYER_COUNT "Designed for rōnin PCs of rank 2+ (with tips for lorded samurai); uses the players' own characters — no pregens"
    SUMMARY "In the remote Twin Blessings Village, an elemental imbalance has ruined the rice crop and the river, while the unjust daimyō Reju Jikai — who neither governs nor upholds Bushidō — leaves the villagers to starve and fear. The PCs, moved by duty (or opportunity), take up the villagers' cause and travel to Closed Shell Castle, where they must earn Jikai's trust or find a way to remove him. Behind it all, the steward Otomo Nobu and the shugenja Reju Toshio have deliberately worsened the imbalance and the spiritual rot — a murdered woman's kyōkotsu haunts the well, and paranoid shachihoko guard the roof — while a rival lord's army under Otomo Kazumi gathers. In the Final Conflict, Jikai either defeats his enemies or falls, and the PCs' choices determine the fate of everyone under his rule."

    # ─────────────────────────────────────────────
    # PART STRUCTURE
    # ─────────────────────────────────────────────
    PARTS {
        PART 1 "Part One: Twin Blessings Village" {
            SCENES ["On the Road (Naoki)", "The Village", "The Way Station", "Village Problems", "Collecting Taxes", "A Plea for Help"]
            DESCRIPTION "The PCs reach Twin Blessings Village (the pilgrim Naoki may accompany them) and witness the ruin of an elemental imbalance and an unjust lord: a changed river, dead crops, fearful villagers, hidden caches, a burnt way station where the bushi Rin murdered travellers, and Ichirō's rebel bandits in the forest Hermitage. When the magistrate Reju Tsugumasa arrives early to collect the tax the village cannot pay, the PCs must choose whether and how to intercede."
        }
        PART 2 "Part Two: Closed Shell Castle" {
            SCENES ["Journey to the Castle (Michi)", "Meeting the Daimyō", "Serving the Daimyō", "Uncovering the Conspiracy", "The Well & the Kyōkotsu", "The Rooftop & the Shachihoko"]
            DESCRIPTION "The road to Closed Shell Castle passes the monk Michi and crosses imbalanced terrain. Inside, the PCs seek an audience with the exhausted, embittered daimyō Reju Jikai — who withholds his trust until they earn his good opinion. Exploring the castle they may reconcile Jikai with his wife Seppun Azusa, recover the lost arrows, quiet the roof's paranoid shachihoko, lay to rest the kyōkotsu of murdered Otomo Nahoko in the well, and uncover the steward Otomo Nobu and shugenja Reju Toshio's plot to worsen the imbalance and seize the castle."
        }
        PART 3 "Part Three: The Final Conflict" {
            SCENES ["Running the Battle", "A Traitor at the Gates", "The Enemy Within", "Out for Themselves"]
            DESCRIPTION "Jikai's enemies move against him. The climactic mass battle reflects the PCs' choices — the possible armies are Osamu's well-trained bushi under Commander Otomo Kazumi, Ichirō's Bandit Band, Natsumi's Village Mob, and Jikai's Army. Traitors within (Nobu, Michi, or the corrupt mercenaries) may open the gates. The PCs fight for or against Jikai, or pursue their own ends amid the chaos; in the end Jikai defeats his enemies or falls."
        }
        PART 4 "Conclusion & Rewards" {
            DESCRIPTION "The outcome depends on the PCs' decisions: helping Jikai keep his seat may see them sworn into his service (rōnin no longer, +2 glory); saving the village — by replacing or reforming the daimyō, or resolving the elemental imbalance — earns +3 or more honor and glory and a lasting legend. Further adventures continue in the downloadable Cresting Waves."
        }
    }

    # ─────────────────────────────────────────────
    # LOCATIONS
    # ─────────────────────────────────────────────
    LOCATIONS {
        ^"Twin Blessings Village" DEF {
            TYPE "Village"
            DESCRIPTION "A remote rural village introduced in Path of Waves, far from any major holding and under the neglectful rule of the daimyō Reju Jikai. Suffers a ruinous elemental imbalance — a changed river, dead crops, no fish — plus a burnt way station, hidden weapon caches, and a forest Hermitage now held by Ichirō's rebel bandits."
            NPCS [^"Ichirō (Sins of Regret)", ^"Reju Tsugumasa", ^"Michi"]
        }
        ^"Closed Shell Castle" DEF {
            TYPE "Castle"
            DESCRIPTION "The daimyō Reju Jikai's cold, unhappy castle, of troubled origins. Its nightingale floor sings all night, its roof carries paranoid shachihoko, its dead Water-Flower Garden and moaning well hide the castle's sins, and its steward and shugenja conspire against its lord. Reached by an imbalanced-terrain road from Twin Blessings Village."
            NPCS [^"Reju Jikai", ^"Seppun Azusa", ^"Reju Ume", ^"Reju Toshio", ^"Otomo Nobu", ^"Kyōkotsu", ^"Shachihoko"]
        }
    }

    # ─────────────────────────────────────────────
    # CAST (resolve to l5r5e-0.4-sins-of-regret-cast.ttrpg)
    # ─────────────────────────────────────────────
    KEY_NPCS {
        VILLAGE [^"Ichirō (Sins of Regret)", ^"Reju Tsugumasa", ^"Michi"]
        REJU [^"Reju Jikai", ^"Seppun Azusa", ^"Reju Ume", ^"Reju Toshio"]
        SCHEMERS [^"Otomo Nobu", ^"Otomo Kazumi"]
        SPIRITS [^"Kyōkotsu", ^"Shachihoko"]
    }

    # An adventure for the players' own rōnin characters, so there is no PARTY /
    # pregen roster.
}
