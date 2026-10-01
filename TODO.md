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

- [x] **Celestial Realms** — all 12 printed adversaries are in the corpus (2026-10-01): the 8 that
  were absent are generated into `l5r5e-0.5-celestial-realms-npcs.ttrpg` from the book (see the
  2026-10-01 section below); Akodo Tadeo, Moshi Chiasa, Akodo Hinata and Baku were already there.

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

3. **An unmatched parenthesis in *Disciple of Secret Lore*** (found converting Portents & Fortunes' NPCs into its campaign layer, 2026-09-23). `core-npcs.ttrpg` (0.5.0), the Scholarly Shugenja's `#L5RN92yMAizxbiJi5gjN4U` reads *"Disciple of Secret Lore: Activation: (Choose 0–5 additional invocations (see page 189) and 0–3 additional rituals (see page 212) that this shugenja can perform. …"* — three opening parentheses, two closing; the one before *Choose* is never closed. The Portents site's copy of the line, taken from 0.4, reads *"Activation: Choose 0–5 …"* without it. The campaign layer carries 0.5 as printed. *Recommendation:* check the core (p. 314, the Scholarly Shugenja profile — its `Source Page`) and remove the `(` or close it where the book does (a VERSION patch bump).

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

## 2026-09-23 — rules out of comments, into data, in the book's words — DONE

**Found** (Portents & Fortunes' M4 audit): the rules behind the stances and the standard effects of
distinctions, passions, adversities and anxieties were **comments** — no build carried them. The
cause was corpus-wide: the first hand-written pass (0.1, Feb 2026) wrote ~1,100 rules as spec §12
"named rule placeholders" (`#hash: slug`, no text — "description lives in comments"), with a
*paraphrase* in the comments beside them, and every migration since carried them forward. At 0.5:
**980** text-less rules and **5,934** prose comment lines across 82 files.

**Fixed** (owner: "fix the corpus"): every text-less rule now carries the book's own text,
verbatim, or is removed where the book has no such rule or the text is already data in the same
place; every prose comment inside a definition is either replaced by data or kept only as a note
about the encoding, each keep recorded with its reason.

- **664** rules given the book's text (`#hash: slug "Label: text"`, paragraphs as `\n\n`),
  **316** removed (each with its reason — e.g. there is no default TN of 2, no "focus breaks
  initiative ties", no "melee requires range 0"; the book: pp. 22–24, 250, 265), **231** slugs
  renamed where they misstated the rule, **477** rules added for book content that lived only in
  comments (tables, lists, sidebars), **5** text-layer repairs (named, sourced); **4,359** comment
  lines dropped, **1,575** kept as encoding notes. Every changed file VERSION patch-bumped.
- **Proof.** Every text verified against the source's text layer (md, or the adventure PDFs via
  pdftotext; whitespace, typographic quotes, dashes and hyphens folded, the dice glyphs mapped,
  nothing else forgiven), each at its cited page; the verifier made to fail on a planted word
  change, a wrong page and an uncovered comment; the corpus-wide gate — 0 text-less rules, every
  remaining prose comment a recorded keep — **PASS, 0 files open**. Validator 164 files 0/0; §5d
  2,313 sites 0 hashless; 386 guidance 0 errors. sortilege-vtt-l5r5e builds from it: 4,666
  entities, 31,886 strings round-trip 0/0/0, shape 75 OK.
- **Tooling and ledger** (outside this repo, as the rest of the l5r5e audit):
  `~/Sortilege/Titterpig/Utilities/titterpig-audit/l5r5e/lift_rules/` — `lift.py`, `book.py`,
  `BRIEF.md`, every file's applied assignment and kept-comment ledger (`assign/applied/`).
- **Found along the way, not fixed** — 317 notes in that directory's `FOLLOWUPS.md`. The largest
  class: **data strings that paraphrase the book** (the check's STEPS and the dice symbols'
  definitions in core-base; 320 of 448 long strings in core-systems — condition effects, action
  ACTIVATION/EFFECTS, the severity table; technique Activation/Effect properties; most
  supplements' advantage EFFECTs). Also duplicated DEFs (a stale HERITAGE_TABLE in core-chargen,
  three NPCs in emerald-empire-npcs, the Writ of the Wilds NPCs), NPC values that disagree with
  their stat blocks, and kept comments citing wrong pages or 0.3 filenames.
- **Root cause, closed** (owner: "Please add"): spec §12 now requires a rule to carry the source's
  statement; the validator warns on a text-less one (titterpig-dsl `ecb1973`).

The buyer watermark the retailer stamps into the PDFs had reached one string here (the Sentiment
skill's guidance, p. 158) — removed in `a42bd48` as an explicit owner override of the verbatim
rule; the lift's sources strip it and its verifier rejects any text carrying it.

## 2026-09-23 — data strings in the book's words; the defects the lift found — DONE

Owner: "Please fix." Every string of 40+ characters in the corpus is now the book's own text, or a
recorded exemption with its reason. Tool and ledger: `titterpig-audit/l5r5e/lift_rules/mend.py`,
`MEND-BRIEF.md`, `mend/applied/`.

- **3,187** strings replaced with the book's text (technique Activation/Effects/opportunities,
  condition effects, action text, the severity and score tables, school and advantage abilities,
  NPC and adventure descriptions, the pregenerated characters from their own sheets); **359** value
  and name corrections found on the pages (stat blocks read a cell off, rings, TN modifiers,
  conflict ranks, swapped glory/status, the Umbrella's grip errata copied onto four other items);
  **944** lines of duplicated or stale definitions removed (a stale HERITAGE_TABLE, duplicate NPC
  files for Writ of the Wilds and Children of the Five Winds — the complete, book-checked stat
  blocks kept — invented Inversion examples, an invented seventh step of a check, paraphrased
  blocks that repeated verbatim rules); **3** text-layer repairs.
- **1,161** exemptions, each with its reason: composed stat lines built from a stat block's cells,
  the encoding's own structure (names, arc TONE/SETTING/THEMES fields), text-layer damage where
  the corpus is right, and 15 strings verified against another book (errata composites, the
  Deathly Turns PDF's p. 25).
- **Proof:** every replacement verified at its cited page; the verifier tightened on the way — a
  passage may now resume only at a text-layer line break (it had accepted fragments of unrelated
  table entries), numbers on a page are text unless they are its folio, and the dice glyphs of
  the adventure PDFs and Path of Waves' control characters are mapped. Corpus-wide string gate
  **PASS, 0 files open**; rules-lift gate PASS; validator 164 files 0/0; §5d 2,291 sites 0
  hashless; 382 guidance 0 errors (the four gone are the copied grip errata).
- **Readings, not the page's words — for the owner:** Courts of Stone p. 93 prints an empty glyph
  box in *Victory Is the Greatest Honor* and *One with the Shadows*; they read (su) and (ring).
  Dark Tides keeps nine authored ON_FAILURE outcomes where the book states none (the Lost Writer
  arc's were deleted) — filler, recommended for removal. Remaining gaps a string fix cannot close
  (the duel's Unique Action, "Using <NPC>" sidebars, Reckless Lunge's second opportunity) are in
  FOLLOWUPS.md there.

## 2026-10-01 — Celestial Realms completed; decision log

Brief (owner): "missing most of Celestial Realms … fix it completely". Done to the coverage gate.
Workspace (local, not a repo): `~/Sortilege/Titterpig/Temp/l5r5e-cr-fix/`. **Rebuild:**
`P=~/Sortilege/Titterpig/Temp/vtm5e-conversion/pdfenv/bin/python; cd` there; `$P cr_extract.py && $P
qa_cr.py && $P cr_gen.py && $P qa_gen.py && python3 qa_codex.py && python3 cr_toc.py`. The CR lore,
the generated NPC block, the seeds frame and the master codex's CR pins are GENERATED — fix the
generator, never the file.

**Why it was missing (evidence):** the extraction always had chapter 1 (the doublecheck text layer
and `Temp/sources/l5r5e/celestial-realms-md/` both hold every page); the conversion lost it. 0.1
(Feb 2026) never had Asako Hisa or Politics of the Dead; the 2026-09-02 regeneration (3de7341, a
vision pass rerouted to Gemini after 92 of 144 windows were refused) dropped Sanpuku Seidō and the
Lost Shrine, which 0.1–0.3 had. Doublecheck's inventory held 106 mechanical units, so D3 could not
see narrative gaps, and no coverage manifest existed.

Decisions (method calls mine; content calls marked):
1. **Method — a deterministic layout read of the PDF** (PyMuPDF fonts/positions/drawn panels; no
   vision, no model). Owner approved the layout read 2026-10-01. Wording proven against poppler's
   text layer, a second reader.
2. **The CR lore is regenerated whole, in book order**: introduction (new file), cosmology (ch. 1 to
   the Phoenix Clan), phoenix-clan, centipede-clan (ch. 2 to New Schools), character-options,
   power-of-worship (ch. 3, new file). The old lore was LLM output, out of order (Centipede text in
   phoenix-clan.lore, ch. 3 fiction in character-options.lore) and not verbatim: 53 of its 411
   blocks hold sentences the book does not print ("looks like himself" for the book's "themself",
   "a student" for "that student", glyph garbage). Nothing the book prints was lost: recall below.
3. **Placement:** headings at their printed tier; sidebars and margin notes as `> **Title**` block
   quotes where they sit, bulleted entries as `> -`; a stat block as its name, description and
   abilities (its numbers are the NPC DEF's — the corpus's existing mirror); seeds are the frame's
   and tables the mechanics', not repeated in the lore.
4. **8 NPCs generated** (Asako Hisa, The Forgotten Spirit, Shun, Akiara, Isawa Manami, Kyōrinrin
   of the Library, Asako Hikaru, Kaito Tsunade) in the shape of Tadeo/Chiasa/Hinata. Rings read by
   the grid's geometry (human 2-2-1 Earth, Air / Water, Fire / Void; creature 2-3 Earth, Air /
   Water, Void, Fire), proven on the 4 already-correct blocks and checked by eye on all 8 renders.
   TN modifiers in the corpus's form ("Fire +2, Earth -2"); weapon text as printed (en dashes).
5. **Existing NPCs untouched** (scope: their divergences are the out-of-scope D1 set). The parser
   reads the book differently from the corpus in three places: Tadeo's *Devoted Sermon* is two
   paragraphs, Chiasa's Righteous Sunlight prints "Range 1–2" (corpus "1-2") and the book's curly
   quotes are straightened.
6. **Seeds:** the frame regenerated in its existing format ("Hook … Rising Action … Climax …", the
   one CR entry byte-identical); the introduction's legend as the frame DESCRIPTION + RULES
   (Shadowlands' shape); the margin ornaments 一 二 三 dropped; `SACRED TIMBER` now as printed
   ("Sacred Timber"). The book prints two different seeds titled *Before the Gates of Heaven*
   (pages 17, 40): the first keeps the title, the second is `… (page 40)`.
7. **Icon notation**, the corpus's majority form: (op) (su) (ex) (st) (ring) (skill), rings by name,
   technique types (invocation) (kata) (ritual) (shuji) (inversion).
8. **Line-end hyphens** decided by this book's own words, then the other L5R books', then the
   dictionary; two are genuinely undecidable from the text (*front-line*, *ink-makers*: kept).
9. **Codex:** 8 entities repointed to where their text now is (Amaterasu Seidō, Eleven Daughters,
   Moshi Azami, Light of the Lady Sun Dōjō → centipede-clan.lore; Isawa Yasu, Kaito Shin →
   introduction.lore; Isawa Chizue → power-of-worship.lore; Shrine to Lord Shiba → the-sanctuary).
   3 FROM quotes failed before and still do (not caused here): Elemental River's is an elided "…"
   quote; Emma-Ō's Estate's and Court of Emma-Ō's sit under the Meido heading, not their own.
10. **Coverage manifest** `titterpig-mastra/coverage/l5r5e-celestial-realms.manifest.json`; its
    toc.txt/units.json are built from the extraction by `cr_toc.py` (Sidebar is strict-prose).
    Front matter and covers (pdf 1–4, 146) are structural and not inventoried.
11. **Doublecheck:** 83 of 144 vision windows were cached EMPTY while `inventory.meta.json` said
    144/144 read. Filled from the text layer (`text_window_fallback.ts`, owner rule: no paid
    vision), coverage note stating why; the pre-fill cache is kept in the workspace,
    `doublecheck-before-fill/`.

Gates (2026-10-01, final output):
- `qa_cr.py` order 0 / 8,958 same-column joins; precision 4,073/4,073; recall 9 lines (Table 2–1
  cells, in the mechanics).
- `qa_gen.py`: verbatim 2,182/2,182 blocks the book's character for character; split paragraphs 0;
  numbers 152/152 printed; recall 8,537 lines, 15 not in the CR files — all in existing mechanics
  entities (below). Each check watched failing on planted defects (a misspelling, a dropped word,
  a swapped word, Honor 93, Scholar 6; the split check found 130 on the first build).
- validator 164 files 0/0; §5d 2,355 sites 0 errors 0 hashless; constructs 382 guidance 0 errors;
  synthesist resolves 1,462 entities (HEAD 1,454: +8), 0 missing parents, overrides 41 (unchanged);
  `--merge` writes both artifacts with all 8 NPCs.
- `coverageAudit.ts` 550/550, PASS, exit 0 (against HEAD's CR files: 204 uncovered, exit 1).
- sentence probe: 2,369 of 3,832 sentences not in the corpus (62%, 67 pages ≥80%) → 335 (9%, 2
  pages: the covers). The 335 are the probe's own artifacts (running heads glued to sentences,
  two-column interleave, stat grids, table cells).
- generator idempotent (two reruns, every output byte-identical); watermark 0.

Open — for the owner (not done here):
- [ ] **Doublecheck D1 cannot see the 8 new NPCs.** A planted paraphrase and a wrong Endurance in
  them were NOT reported, before and after the window fill: text-layer units carry no names, and
  `runChecks` stays in slice mode (art-only pages have no units), where D1 skips any entity with no
  named unit. The substitute proofs are qa_gen checks 1 and 3 and the renders. Fix belongs in
  doublecheck (name text-layer statblock units, or leave slice mode once every window is read).
- [ ] **Doublecheck now reports 89 errors** (was 26 before the window fill): D1 19 (was 20; the
  out-of-scope existing-entity set), D5 5 (unchanged), D3 65. All 65 D3 are text-layer unit
  artifacts, none missing content: 40 are fragments whose every word is in the corpus (bullet
  glyphs "$$", the drop-capped "rst Court"), 23 stat-block grid labels ("45 GLORY 45 STATUS"),
  2 column interleaves. Needs a doublecheck change (or owner-signed dispositions), not a corpus fix.
- [ ] **Doublecheck D6 scoping:** 141 lore warnings, a page-scoping artifact (a section is placed by
  its heading's first printing in the inventory: Sanpuku Seidō's "Approaching the Shrine" is judged
  against pp. 39–40, the Hantei shrine's).
- [ ] **Existing-entity divergences the recall found** (the out-of-scope D1 set): the school tables
  drop "(Mastery Ability, Action)" — the *Action* tag is lost for Experimental Concoction, Shadow
  Assassin and Master of Beasts; Agasha rank 4 prints "Rank 1–4 Ranged Combat Kata" (corpus "Ranged
  Kata"); Table 2–1's Sacrifice and Spirit of the Phoenix rows lose their printed sentences ("Roll
  a ten-sided die again and add the resulting heirloom to your starting items …") to SUB_TABLE rows;
  Baku's derived attributes (above).

## 2026-10-01 — every other L5R5e book audited (coverage + probe); no book converted

Owner brief step 6: audit each book the same way, report real gaps with evidence, convert nothing
without sign-off. Tool: `~/Sortilege/Titterpig/Temp/l5r5e-audit/l5r_audit.py` (a coverage manifest per
book in `titterpig-mastra/coverage/l5r5e-<book>.manifest.json`, the inventory read off the book's PDF:
its bookmarks, its ADVERSARY/MINION labels, its Table captions; credits/contents excluded per the
settled policy) and `analyze.py` (a stricter absent test than the probe: a sentence is absent when
under 60% of its 5-word windows are anywhere in the corpus — the probe's own key also fails on
running heads and column interleave). Pilot: on Celestial Realms the method reports 72 uncovered
units against the old corpus and 0 against the new, so it sees real gaps; the complete Celestial
Realms still scores **5% absent**, which is this method's noise floor (covers, tables, stat grids).
Sidebars are not enumerated generically. Results in `report.json` / `gaps.json` there.

| book | corpus files | coverage covered/units | probe missing | absent (stricter) | absent pages |
|---|---:|---:|---:|---:|---:|
| celestial-realms | 10 | 245/245 | 333/3832 (9%) | 176 (5%) | 2 |
| core | 22 | 751/787 | 2277/7849 (29%) | 1492 (19%) | 18 |
| beginner-rulebook | 0 | 1/116 | 966/1285 (75%) | 873 (68%) | 30 |
| children-of-five-winds | 13 | 203/219 | 657/4056 (16%) | 436 (11%) | 5 |
| courts-of-stone | 8 | 162/185 | 462/3622 (13%) | 305 (8%) | 2 |
| emerald-empire | 12 | 129/137 | 556/6543 (8%) | 333 (5%) | 4 |
| fields-of-victory | 10 | 130/150 | 475/3294 (14%) | 289 (9%) | 1 |
| legacies-of-war | 2 | 48/87 | 72/370 (19%) | 52 (14%) | 2 |
| path-of-waves | 14 | 286/305 | 1049/5793 (18%) | 664 (11%) | 4 |
| shadowlands | 11 | 232/236 | 490/3493 (14%) | 283 (8%) | 1 |
| writ-of-wilds | 11 | 126/138 | 363/3394 (11%) | 191 (6%) | 4 |
| errata-faq-2019 | 1 | 5/19 | 12/56 (21%) | 8 (14%) | 0 |
| errata-faq-2020 | 1 | 20/43 | 51/190 (27%) | 36 (19%) | 1 |
| gm-screen | 1 | 42/109 | 45/185 (24%) | 23 (12%) | 0 |
| gm-kit | 3 | 16/20 | 395/878 (45%) | 346 (39%) | 6 |
| mantis-clan | 2 | 42/48 | 101/192 (53%) | 80 (42%) | 2 |
| daidoji-shin | 1 | 4/12 | 9/16 (56%) | 9 (56%) | 0 |
| emerald-champion | 4 | 47/120 | 1091/1181 (92%) | 1063 (90%) | 35 |
| topaz-championship | 3 | 23/56 | 925/984 (94%) | 918 (93%) | 33 |
| winters-embrace | 3 | 44/151 | 886/1027 (86%) | 874 (85%) | 28 |
| mask-of-the-oni | 3 | 27/57 | 838/896 (94%) | 828 (92%) | 28 |
| sins-of-regret | 3 | 23/36 | 859/959 (90%) | 848 (88%) | 29 |
| wedding-kyotei | 4 | 13/16 | 432/666 (65%) | 407 (61%) | 12 |
| imperfect-land | 3 | 28/61 | 562/665 (85%) | 548 (82%) | 23 |
| highwayman | 4 | 31/45 | 467/551 (85%) | 455 (83%) | 15 |
| knotted-tails | 3 | 36/65 | 611/694 (88%) | 603 (87%) | 18 |
| cresting-waves | 3 | 9/13 | 560/625 (90%) | 555 (89%) | 17 |
| scroll-or-blade | 3 | 40/88 | 488/596 (82%) | 473 (79%) | 16 |
| wheel-of-judgment | 3 | 25/42 | 868/1004 (86%) | 860 (86%) | 28 |
| blood-of-the-lioness | 5 | 23/34 | 974/1097 (89%) | 952 (87%) | 27 |
| deathly-turns | 4 | 55/103 | 507/623 (81%) | 491 (79%) | 19 |

Findings, with evidence (each sample phrase grepped in 0.5/, 14 of 16 absent; the 2 found were
reordered text the page test also flags):

- **The adventures were summarized by design, not converted.** 13 adventure lore files declare it
  in their own header ("… is summarized faithfully — the full detail lives in the source PDF") and
  Wedding at Kyotei's says its GM text is summarized. 79–93% of their sentences are absent: The Topaz Championship 918 of 984, In the Palace of
  the Emerald Champion 1,063 of 1,181, Mask of the Oni 828 of 896, Sins of Regret 848 of 959 (the
  right PDF, `L5R11_Sins_of_Regret.pdf`; the old probe read an arbitrary file of the folder). Dark
  Tides (gm-kit) the same, 39%. The read-aloud boxes are kept; the GM text is not.
- **The Beginner Game Rulebook has no corpus files** (1 of 116 units covered, by name overlap).
- **Core: 1,492 sentences absent (19%), in specific places**: the opening fiction (pp. 5–6, "27th
  Day of the Month of Togashi, 1118"), the illustrative story under every advantage and disadvantage
  (pp. 105–128: "Ryuichi, a poor blacksmith", "Kakita Toshimoko crept silently…"), the sidebars
  *Tainted Characters in Rokugan* (p. 129), *Flirting with PCs* (p. 135), *When to Apply Advantages
  and Disadvantages to Checks* (p. 138), the worked example on p. 24 ("Kat wants to have her
  character Sakura leap…"), and *Scenes* (p. 248); 36 units uncovered, most of them the GM chapter's
  headings (Goals of the Game, Awarding XP, Concession, How to Start a Campaign, Managing Players).
- **Path of Waves 11%**: Hirosaka's economy (p. 151 "Commodities are produced"), the educational
  works list (p. 206), the Trinkets and Name Tables (pp. 220–222). **Children of the Five Winds
  11%**: the Lost Writer's stat page (p. 177), the conflict-mode reference (p. 6). **Courts of Stone
  8%**: *Safety Signals* (p. 123), NPC guidance (p. 126). **Writ of the Wilds**: "How does Society
  React…" (p. 125). **Mantis Clan 42%**: its opening fiction (p. 3, "the Shimakage had crept up on
  the plodding merchant ship"). Emerald Empire, Fields of Victory and Shadowlands sit near the floor.
- Errata 2019/2020, GM Screen, Legacies of War, Daidoji Shin: small books whose uncovered units are
  mostly front matter, screen labels and advertising (their headings come from the font read, not
  bookmarks); the 2020 errata's three tables (1–1 to 1–3) are not in the corpus.

Recommendation (owner to decide; nothing converted):
1. **Re-convert the 15 adventures verbatim** (the 14 summarized + Dark Tides), the largest gap and a
   breach of the verbatim rule. They are 30-page FFG booklets in the Celestial Realms layout; the
   `l5r5e-cr-fix` extractor is the starting point. Trade-off: the `.arc` scene structure is built on
   the summaries and must be re-pointed; the VTT's 16 arcs rebuild after.
2. **Core's missing passages** next: it is the base every other book leans on.
3. **Beginner Game Rulebook**: convert, or record it as superseded by core (owner call: it restates
   core rules in a teaching form).
4. Path of Waves, Five Winds, Courts of Stone, Writ, Mantis: page-level fills from the evidence above.

