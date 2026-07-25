# L5R 5e (edition `l5r5e`) — follow-up work

Surfaced while auditing every `^"Rings"` DEF in `0.4/` against the source PDFs' printed stat
blocks (see **Ring display order** below, which is now fixed corpus-wide). These are the defects
and gaps that audit turned up but did **not** fix.

## Ring display order — reference, do not re-break

L5R 5e prints adversary rings in a graphic, not a labelled list, and the layout differs by block
type. Reading the extracted text top-to-bottom, left-to-right:

| block type | how to tell | ring order |
|---|---|---|
| **creature** | no Honor/Glory/Status; `ENDURANCE COMPOSURE FOCUS VIGILANCE` only | Earth, **Void**, Air, Fire, Water |
| **human** | has Honor/Glory/Status; ring grid follows a `PERSONAL`/`SOCIETAL` header | Earth, Air, Water, Fire, **Void** |

Neither order is the canonical `Air, Earth, Fire, Water, Void`, and assuming it was is what broke
126 of 193 entries. The creature order is pinned by all 8 elemental kami (core rulebook pp. 322–323
and Path of Waves pp. 249–251) landing their namesake element in the expected slot. The human order
is pinned by **Daidoji Shin**, printed in both a one-number-per-line source
(`L5R-Daidoji-Shin-and-Kasami-letter.md`) and a 2-column grid (Children of the Five Winds p. 174)
that flatten identically, and cross-checked against `0.4/l5r5e-0.4-writ-of-wilds-gm-tools.ttrpg`
(9/9) and the Five Winds human blocks (18/18), which were already correct.

Derived attributes in printed stat blocks are **hand-authored, not formula-derived** — do not
"correct" Endurance/Composure/Focus/Vigilance to `(Earth+Fire)×2` etc., and do not use those
formulas to infer ring assignments. Base content stays as printed; errata live in the overlay files.

## Derived attributes transcribed off-by-one

Four NPCs read the ring graphic's digits as derived attributes, shifting the whole row. Values
below are what the book prints; the corpus figures are the current (wrong) ones.

- [ ] **Baku** — `0.4/l5r5e-0.4-celestial-realms-gm-tools.ttrpg:169`. Corpus has
  Endurance 22 / Composure 15 / Focus 12 / Vigilance 6; Celestial Realms p. 145 prints
  **15 / 12 / 6 / 4**. The `22` is the merged Fire+Water ring pair, not Endurance. (Rings were
  wrong too — five 4s against a printed `4,4,4,2,2` — and are already fixed.)

- [ ] **The Willow Kodama** — `0.4/l5r5e-0.4-emerald-empire-npcs.ttrpg:768`. Corpus has
  14 / 12 / 8 / 3; Emerald Empire p. 163 prints **12 / 8 / 3 / 3**. Same cause: `14` is the merged
  Fire+Water pair.

- [ ] **Boss Yaguro, Gang Leader** — `0.4/l5r5e-0.4-gm-kit-mechanics.ttrpg:182`. The GM Kit booklet
  interleaves the two columns as Honor, Endurance, Glory, Composure, Status, Focus → **Honor 22,
  Endurance 12, Glory 19, Composure 12, Status 9, Focus 5**. The corpus read them as three
  societal then three personal, giving Endurance 19 / Glory 12.

- [ ] **Lady Mazoku** — `0.4/l5r5e-0.4-shadowlands-npcs.ttrpg:1885`. Shadowlands p. 84 prints
  `60 14 / 07 16 / 65 9` → Honor **60**, Composure **16**, Glory **7**. Corpus has Honor 70,
  Composure 20, Glory 70.

Worth a sweep rather than four spot fixes: the same merged-digit misread that produced these is
what produced the ring errors, so other blocks' Honor/Glory/Status may carry it too. `Revenant`
(`shadowlands-npcs`) is **not** a case — its Composure is printed `∞` and the corpus correctly
omits the property.

## Profile with no printed source

- [ ] **`Tonbo Kuma`** — `0.4/l5r5e-0.4-children-of-five-winds-lost-writer.arc:104` carries a full
  profile (rings, Endurance 10 / Composure 12 / Focus 5 / Vigilance 3, Honor 55 / Glory 30 /
  Status 30, skills). Children of the Five Winds p. 174 gives Tonbo Kuma **prose only** — no
  `CONFLICT RANK` line, no stat block — even though p. 165 says "see profile on page 174". Either
  the numbers came from somewhere unrecorded, or they were invented. Decide whether to cite a
  source, replace it with a `FIAT`, or drop the mechanical properties and keep the cast entry.

## NPC stat block coverage

Measured as: printed stat blocks in the source markdown vs. corpus entities carrying a `^"Rings"`
DEF. **Re-measure before acting** — core and Path of Waves are partly in flight on another branch
(a new `0.4/l5r5e-0.4-core-npcs.ttrpg` and a `^"Reo, the Doshin"` entry were uncommitted in the
main checkout as of this audit).

| book | printed blocks | with rings | entity exists, no rings | absent |
|---|---:|---:|---:|---:|
| core | 31 | 0 | 9 | 22 |
| celestial-realms | 12 | 1 | 0 | 11 |
| path-of-waves | 56 | 40 | 2 | 14 |
| shadowlands | 46 | 34 | 7 | 5 |
| gm-kit | 9 | 2 | 7 | 0 |
| fields-of-victory | 11 | 10 | 0 | 1 |
| five-winds | 40 | 39 | 1 | 0 |
| courts-of-stone / emerald-empire / mantis / writ-of-the-wilds / daidoji-shin | 58 | 58 | 0 | 0 |

- [ ] **Celestial Realms is the largest untouched set** — 11 of 12 printed adversaries absent:
  Akodo Tadeo, Asako Hisa, The Forgotten Spirit, Shun, Akiara, Destined Shugenja, Kyōrinrin of the
  Library, Asako Hikaru, Apprehensive Courtier, Centipede Clan Champion, Headstrong Adept. Only
  `Baku` and the derived `Komainu` are modelled.

- [ ] **Path of Waves sample-village and named NPCs** — Setsuo, Hiroto, Reo, Michi, Otoha, Haru,
  Osamu, Kijimuna, Nekomata, Kami of the Hot Spring, Seppun Sora, Seppun Ishima, Otomo Kazuko,
  Yuuto. The systems file converted the generic city/village templates and the bestiary but not the
  adventure cast.

- [ ] **GM Kit** — 7 of 9 printed blocks (Boss Kizo, Boss Hana, Kasuga Yumiko, Gaku, Ruffian,
  Tortoise Samurai, Gaijin Smuggler/Sailor) exist as entities in
  `0.4/l5r5e-0.4-gm-kit-mechanics.ttrpg` / `gm-kit-dark-tides.arc` but carry no `^"Rings"` or
  derived attributes.

- [ ] **Shadowlands** — Gashadokuro, Onikage, Kyōrinrin, Fudoshi, Tsumunagi, Undead Horror and
  Goblin Accursed Priest exist as entities without profiles; the three unnamed "Powerful Oni"
  variants and the two Lesser Oni archetypes are absent.

- [ ] **Fields of Victory** — `Sumai Champion` absent.

## Verify after any of the above

```bash
cd "../titterpig-dsl" && python3 ttrpg_validator.py ../titterpig-dsl-l5r5e/0.4
```

Must stay 0 errors / 0 warnings.
