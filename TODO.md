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

## Recommended: sweep `core-npcs.ttrpg` rings against the printed grids

`0.4/l5r5e-0.4-core-npcs.ttrpg` (the 27 Chapter 8 stat blocks + the four core Manifest Kami) was
written **before the two-layout rule above was established**, under a brief that stated the creature
order `Earth, Void, Air, Fire, Water` as if it were universal. The agent that wrote it identified the
human/creature split independently and applied both orders — so the file is believed correct, and six
entries were spot-checked afterwards and agree with the semantic signatures in the section above
(Seasoned Courtier peaks at Air 4, Humble Peasant sits at Void 1, Ki-Rin at Void 5, while the kami and
Bushi Skeleton decode as creature blocks).

But it was **never verified entry-by-entry against the printed grids**, and the error class it could
have inherited is the same one that hit 126 of 193 entries elsewhere. Recommended, not urgent:

- Re-derive all 31 ring sets from the source grids (core rulebook pp. 311–330) and diff against the file.
- Classify each block by the `Honor/Glory/Status` test, not by whether it feels like a creature —
  Ki-Rin is a spirit but prints a **human** block.
- Do not use the derivation formulas to check the result (see the note above; these blocks are
  hand-authored, and only 3 of 31 satisfy `Endurance = (Earth+Fire)×2` at all).

Deferred by owner decision, 2026-07-25.

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

## 2026-09-15 — 0.5 MIGRATION COMPLETE

The corpus was **not** on 0.5. Only 74 of 164 files declared it — the 69 `.codex`
files (a 0.5-only construct) and the five core `.ttrpg` they depend on. Every
sourcebook, actor, arc and frame still said 0.4. All 164 now declare
`SPEC_VERSION "0.5"` with `VERSION` anchored to it.

**Construct adoption, measured:**

| construct | before | after |
|---|---:|---:|
| `GUIDANCE` (§22) | 93 blocks / 449 entries | unchanged — already adopted |
| `.codex` (§25) | 69 files | unchanged — already adopted |
| `REFERENCES` (§5c) | **1 block** | **41 blocks, 49 refs** |
| `HOOKS` (§23) | 0 | 0 — no candidates |
| `OPTIONAL` (§24) | 0 | 0 — no variant rules marked in the source |

`MENTIONS` was 0, so nothing needed renaming: in-prose references had simply
never been annotated here. `apply_references.py` generated 49; 16 came out
hashless because their target carried no anchor, so 14 were minted (§12). The
last two were `^"Mountain Song Temple"` — defined in **both** Writ of the Wilds
(the gazetteer entry) and The Imperfect Land (the adventure's own location, which
cites *Writ p76* as its source). Both anchored; the adventure's cast references
the adventure's.

**Checked and deliberately not moved:** 52 `.lore` files carry blockquote
sidebars — *The Year Scroll*, *The Doji Family Mon*, *Perception as Reality*.
Those are world-building; §22 `GUIDANCE` is prose **about mechanics**. They stay
in `.lore`.

**Migrated in place.** 49 files across the tree reference
`titterpig-dsl-l5r5e/0.4`, including live campaign tooling (Fragile Peace sheet
builders, Portents & Fortunes). The owner's rule is explicit that a filename's
version segment tracks the content line, not the header `VERSION`, so the
directory keeps its name and nothing downstream broke.

```
validator  164 files 0/0
constructs 386 guidance, 0 errors
references 49 refs, 0 errors, 0 hashless · §5d 2313 sites, 0 ambiguous
synthesist 1461 entities, 842 flattened, 0 missing parents, 0 cycles
```

### §5d reference resolution — done

Every by-name reference in this corpus now carries its `#hash` (DSL §5d,
DECISION-13). 685 filled mechanically, 44 resolved by owner ruling.

```
validator 164 files 0/0 · constructs 386 guidance 0 errors
references 2313 sites, 0 ambiguous, 0 hashless
synthesist 1461 entities, 842 flattened, 0 missing parents, 0 cycles
```

### What the rulings produced

- **11 anchors minted.** `core-traits`' five Rings and three Skills (`Air`,
  `Earth`, `Fire`, `Water`, `Void`, `Courtesy`, `Games`, `Theology`) were the
  primary definitions and carried none; also the Path of Waves `^"Umbrella"`,
  `core-systems`' `^"Compromised"` concept, and Celestial Realms'
  `^"Righteousness (Gi)"`.
- **Two Umbrellas, correctly separated.** The 2020 erratum's own note — *"the
  third Grip should read '2-hand (stab)' instead of '1-hand (stab)'"* — matches
  the **Path of Waves** weapon's `^"Grips"` string verbatim. The core-systems
  Umbrella is the mundane trade good: Rarity, Price, Description, no Grips. A
  positional rule would have bound this backwards.
- **Pregens reference, never redefine.** `wedding-kyotei-pregens.actor` inlined
  14 techniques `core-techniques` already defines. The convention is stated in
  `highwayman-pregens.actor`'s own header — *"Technique names are listed; their
  full text is the core rulebook's (reproduced on each sheet's reference page)"*
  — and the other four pregen files define none. Removed; each pregen keeps its
  `^"Techniques"` name list, school ability, distinctions and adversities.
- **A nested printed entry points at the top-level concept.** `^"Compromised"`
  and `^"Righteousness (Gi)"`. The other six Bushidō tenets already had a single
  anchored definition in `core-systems` and needed nothing.

### OPEN — how a `.codex` category can BE a game DEF

Owner's ruling was *"there are not two Titles"*, and §25 agrees: a category may
be a taxonomy node **or** an existing game DEF. **The spec does not say how.**

`l5r5e-0.4-codex-schema.codex` declares a `CATEGORIES` tree — `Person`, `Kami`,
`Deity`, `Faction`, `Organization`, **`School`**, `Place`, `Region`, … **`Title`**
— and two of those names are also game DEFs (`core-character.ttrpg:223`,
`core-systems.ttrpg:2866`).

Every *reference* now binds to the game DEF, so the gate is clean. But two DEFs
still carry each name. The obvious fix — giving the codex node the game DEF's
anchor — **the validator rejects**:

```
coherence ERROR L34  duplicate anchor #L5R252wX4yZ6aB8cD0eF2g
                     (codex-schema.codex:34, core-character.ttrpg:223)
```

§20 notes that recurrence-as-override is a pending validator change, but sharing
an anchor is not the right expression anyway. And the nodes are load-bearing:
`IS ^"School"` / `IS ^"Title"` appear across ten-plus `.codex` data files, and
the predicate vocabulary declares `holds-title { … RANGE ^"Title" }`. Deleting
them would break the lore graph.

**So this wants a construct, not an edit.** Reverted; nothing is broken today.

### Versions anchored to their spec — FIXED 2026-09-15

93 files carried a `VERSION` that did not anchor to their `SPEC_VERSION`. All
were in the live `0.4/` directory; no frozen directory was touched.

- **19 files declared `SPEC_VERSION "0.4.1"`** — not a DSL spec version; the spec
  knows only `0.4` and `0.5`. Their `VERSION` was already `0.4.x`, so the
  malformed field was `SPEC_VERSION`: truncated to `0.4`, VERSION untouched.
- **74 files declared `SPEC_VERSION "0.5"` with a VERSION from the 0.1-era**
  (`0.1` ×64, `0.1.1` ×3, `0.2`, and assorted `0.4.x`). Re-anchored to `0.5.0`
  per the migration rule.
- **`l5r5e-0.4-codex-schema.codex` was `VERSION "0.9.1"`** and is the one case
  where VERSION was doing a second job: it is the shared lore-graph ontology and
  **68 data codices pin its version**. Anchored to **`0.5.9`** (owner,
  2026-09-15) rather than `0.5.0`, so the schema's 9th revision survives and
  ordering still works. All 68 pins updated to `0.5.9` — including five stale
  ones (`0.1`, `0.2`, `0.3`, `0.7`, `0.8`) that were naming revisions of a file
  there is only one of.

**Still inconsistent, and a separate question:** `0.4/` now holds 74 files
declaring spec **0.5** and 71 declaring **0.4**. The directory name no longer
describes its contents. That is the 0.4 → 0.5 migration the atlas lists as
backlog, not a versioning defect.

Also unchanged: `stash@{1}` is Jordan's real `0.1/` edits to reconcile with
remote `cf78e5e`; `stash@{0}` is droppable whitespace noise. Neither popped.

## Found by the VTT build (sortilege-vtt-l5r5e, 2026-09-23) — reported, not patched

The VTT evaluates the corpus's own `FORMULA` strings for the derived attributes of a character
made in its creator (a printed stat block's values always win, per the note above). Two things it
turned up:

1. **RESOLVED 2026-09-23 (owner: "the rule should be round up anywhere that needs to be rounded, not round down").** `core-traits` `^"Vigilance"` FORMULA is now `"(Air + Water) / 2 (rounded up)"` (VERSION 0.5.1); it was the only conversion-written round-down. The four Path of Waves tiny-kami rules that print "half as much strife (rounded down)" are the book's own words (pp. 241–257) and stay verbatim. Validator 164 files 0/0; §5d 2,313 sites 0 hashless; 386 guidance 0 errors. The finding as first reported:
   **Vigilance's FORMULA adds a rounding the book does not print.**
   `l5r5e-0.5-core-traits.ttrpg` `^"Vigilance"` has `FORMULA "(Air + Water) / 2 (rounded down)"`
   (and the same words in its comment). The core rulebook, p. 41, prints only
   "Vigilance: Calculated based on your final ring values; (Air + Water) / 2."
   (`Temp/sources/l5r5e/core-md/…_pages_41-50.md`). Every pregen with an odd Air + Water prints
   the value **rounded up** — 11 of 11: Ahuja Mishti, Hiyabayashi Kenshin, Maki Haruko, Noboru,
   Bayushi Hibiki, Kitsu Kohaku, Utaku Azami, Yasuki Toru, Doji Ren, Shinjo Takuya, Togashi Yoshi.
   *Recommendation:* find the book's rounding rule (not located in the core md by a grep for
   "round up"/"rounded up") and correct the FORMULA to it; until then a created character's
   Vigilance is one lower than the pregens' convention whenever Air + Water is odd.
2. **RESOLVED 2026-09-23 (owner: "fix the Ninjo spelling in the pregens too").** All 33 `^"Ninjo"` in the five `*-pregens.actor` files (26 pregens, the six Blood of the Lioness personas and their type) are now `^"Ninjō"`; each file VERSION 0.5.1. Validator 164 files 0/0; §5d 2,313 sites 0 hashless; 386 guidance 0 errors. As first reported:
   **The pregens spell `^"Ninjo"`; the Samurai ACTOR declares `^"Ninjō"`.** 26 pregens across
   four `.actor` files (e.g. `highwayman-pregens.actor` `^"Ninjo" STRING …`), so a consumer that
   reads the sheet from the ACTOR finds no Ninjō on them (the VTT shows it under "Also on the
   sheet"). *Recommendation:* rename to `^"Ninjō"` in the pregens (a VERSION patch bump each).

## House rule: round up by default; round down only where the text says so

**Owner, 2026-09-23:** "Where it explicitly says rounded down, we should round down. Round up should
be the default unless otherwise specified." So:

- **A rounding the source leaves unstated rounds up.** Vigilance: the core (p. 41) prints only
  "(Air + Water) / 2", so `core-traits` `^"Vigilance"` FORMULA is `"(Air + Water) / 2 (rounded up)"`
  (0.5.1, now 0.5.2) — the conversion's added "(rounded down)" was the error.
- **A rounding the source states is kept as printed.** The Path of Waves tiny manifest kami
  (air, earth, fire, water) print "half as much strife (rounded down)" (PDF pp. 250–252; confirmed
  against the PDF's text layer 2026-09-23) and read so verbatim in `path-of-waves-systems.ttrpg` and
  `path-of-waves-chapter7-npcs.lore` (0.5.0). A brief change of these to "rounded up" (`57072fd`) was
  reverted.
- Every other rounding in the corpus is stated "rounded up" (Starting Void Points, out-of-curriculum
  XP, the core-systems composure note).
