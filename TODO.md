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


## 2026-10-01 — the 15 adventures re-converted verbatim, with their companions; decision log

Owner, 2026-10-01: "go with your recommendations" — recommendation 1 above (re-convert the 15 adventures
verbatim), then core's missing passages, the Beginner Game Rulebook, the page fills. This section is
recommendation 1, done to its gates. Workspace (local, not a repo): `~/Sortilege/Titterpig/Temp/l5r5e-books/`.
**Rebuild:** `cd` there; `P=~/Sortilege/Titterpig/Temp/vtm5e-conversion/pdfenv/bin/python`; per book
`./runall.sh <book>` (`ffg_extract.py` → `ffg_gen.py` → `qa.py`; `books.py` holds every book's config); then
`$P cast_add.py --write`, `python3 codex_fix.py <codex> --write --drop-unproven`, `python3 repin.py`. The 20 lore
files, the generated NPC blocks and the codex placements are GENERATED — fix the generator, never the file.

Decisions (method calls mine; content calls marked):
1. **Method — the Celestial Realms layout read, generalised** (`ffg_extract.py`: PyMuPDF fonts, positions, panels;
   no vision, no model; poppler's text layer the second reader). Proven per book by `qa.py`, then scaled.
2. **Whole lore regenerated per book in book order** (keeps each file's name, title and Source line): read-aloud as
   `> `, boxes and margin notes as titled block quotes, tables as Markdown tables, a stat block as its name,
   description and abilities (its numbers are the cast's — the CR shape). The old files said of themselves that the
   GM text was "summarized"; nothing printed is now left out (gates below).
3. **Companions added as lore** (the product is the booklet and its PDFs): Highwayman, Wedding and Winter's Embrace
   handouts (`*-handouts.lore`; Winter's = its calendar + character list), the Beginner Game's *Read This First* and
   its seven character folios (merged in book order, `make_merged.py`).
4. **Pages: every content page; the front cover, credits, contents and the back cover's blurb out** (the CR rule).
   *My error, caught and fixed:* the first ranges assumed the credits close every booklet; in nine they sit on pdf 2,
   so each book's last content page was left out (Highwayman pdf 19, Winter's Embrace pdf 31 "Romancing Yoritomo",
   Mask, Sins, Imperfect Land, Wheel, Blood and Dark Tides' last pages; Wedding pdf 30). `qa.py` check 0 now fails on
   any page left out that is none of those (proven: Highwayman's old range fails it). A credits block set under the
   last content (a display-size "Credits" over the names) is cut from that line down.
5. **The recall gate no longer counts a codex quote or an arc note as the text being kept** — Winter's Embrace's lost
   page passed through its codex's old FROM quote. Recall is against the book's lore, cast and pregens only.
6. **New `qa.py` check 6, doubled text**: a phrase repeated back to back that the book prints once (Sins'
   "Ichirō, Bandit Leader , Bandit Leader", from a shadow text layer, had passed checks 1–5). The book's own slip
   stays ("The character with the with the lowest result", Sins pdf 19, as printed).
7. **Extractor fixes, each A/B'd over all 20 books (the differing lines reviewed, every difference a fix):** a second
   text layer repeating lines in pieces (Deathly Turns: 170 QA failures → 0); a line's height from its ink, not a
   blank glyph (Dark Tides' merged table rows); an epigraph's dash-led attribution ends its paragraph; overlapping
   pieces of one heading joined ("Lady M"+"Mazoku"); same-baseline pieces of a table cell one line; advantage-grid
   labels dropped whole (they had survived as bare "Haughty:" lines in 7 books; the cast holds them); per-role column
   edges (read-aloud no longer split at every line-end full stop — Blood's "I am Kitsu Yayoi…").
8. **6 printed stat blocks the casts lacked, generated** (`cast_add.py`): Emerald Champion's Terrified Merchants,
   Rampaging Boar, Jealous Emerald Magistrates; Wedding's Bandits, Bandit Leader; Wheel's Insectoid Oni. Type from
   the block's MINION/ADVERSARY label; the Beginner-style Emerald blocks print none, so a group name is a Minion (the
   cast file's own rule). Values checked against the line dumps. A name another file already defines takes the
   corpus's "Name (Book)" — "Bandits (Wedding at Kyotei Castle)" (Emerald's cast and Fields of Victory both define
   "Bandits"; the synthesist resolves by name, so it would have shadowed one).
9. **Codex, all 15** (`codex_fix.py`): every FROM quote must be the book's words; an old quote that is not is
   re-taken from a sentence of the book naming both ends (95 re-quoted), and an entity is placed under the heading
   holding its quotes, in the companion lore when they stand only there (a handout's people). **45 FROM quotes no
   sentence of the book supports are dropped, their relationships kept** (spec §25: FROM is "the verbatim source
   phrase", optional; the standing verbatim rules forbid a paraphrase there). The 45, each with its old quote:
   `Temp/l5r5e-books/codex-unproven-dropped.txt` — for the owner's audit; any can be restored. A slug the summaries
   padded maps to the book's heading it contains ("the-prisoners" → "prisoners").
10. **Coverage inventory read as printed**: an outline title the page prints otherwise takes the page's wording
    ("Part Five" → "Part 5", Mask; "Part Two" → "Part 2", Knotted Tails); Word's "_GoBack" bookmark is no unit;
    Wheel's outline entry "Fu-Lang Fortress (map)" marks pdf 22–23, printed "Fu Leng's Fortress" and holding no map;
    a back cover's display lines are no headings (Deathly Turns pdf 28).
11. **Two arc comments** pointed at the handouts' old home; corrected (highwayman.arc, wedding-kyotei.arc). Arcs
    reference lore only in comments — nothing structural to re-point.
12. **Stat-block names read by eye** where `statblocks.py` cannot reach them (`books.py` `statblock_names`): Topaz
    pdf 31 the Ruffian; Emerald pdf 19 Kitsuki Kāgi, pdf 34 Kitsuki Tomo; Sins pdf 17 Reju Toshio's second half;
    Cresting pdf 9 Banji's second half. All five are in their casts.

Gates (2026-10-01, final output):
- `qa.py`, all 20 lore files: 0 failures, 0 recall misses, 0 lines lost (checks 0 pages, 1 order, 2 verbatim,
  3 recall, 4 split, 5 line recall, 6 doubled). Proven by planting (`plant_test.py highwayman`): a misspelling, a
  dropped word, swapped words, a split paragraph, a lost paragraph — 5/5 caught, file restored byte for byte;
  check 6 caught both of Sins' old doubled headings; check 0 caught Highwayman's old range.
- `statblocks.py`: 15/15 books, every printed block has its NPC DEF.
- coverage (`l5r_audit.py` → `coverageAudit.ts`): 16/16 PASS, exit 0 (the 15 + `beginner-game`).
- sentence probe, before → after: Topaz 94% → 6%; Emerald Champion 92% → 6%; Winter's Embrace 86% → 8%; Mask 94% →
  5%; Sins 90% → 8%; Wedding 65% → 9%; Imperfect Land 85% → 10%; Highwayman 85% → 7%; Knotted Tails 88% → 6%;
  Cresting Waves 90% → 7%; Scroll or Blade 82% → 10%; Wheel 86% → 7%; Blood 89% → 7%; Dark Tides 45% → 7%; Deathly
  Turns 81% → 10%; Beginner Game companions (new) 14%. The one page ≥80% left in six books is each back cover.
  Celestial Realms complete scores 5–9%: the method's floor.
- validator 164 files 0/0 (was 92 coherence warnings, the codex slugs); §5d 2,361 sites 0 errors 0 hashless
  (+6, the new NPCs); constructs 382 guidance 0 errors; structure PASS; synthesist (built first) 1,468 entities
  (HEAD 1,462: +6), implicitly overridden 41 (unchanged), 0 missing parents.
- VERSION one patch above HEAD on every touched file, 0.5.0 on new ones; watermark 0 in the diff.
- doublecheck D1: not applicable — it has no inventory for the adventures (manifests exist for the sourcebooks only).

Open — for the owner:
- [ ] **The filled character sheets** (Highwayman, Wedding "All Character Sheets", Five Winds DLC01): the
  characters are already in the `*-pregens.actor` files (rings, skills, ninjō/giri, advantages, gear,
  relationships). What the sheets print beyond them is (a) the sheet template — stance summary, conflict-turn
  summary, "Using Void Points", the permission line — and (b) each character's technique pages, the core's
  techniques abridged by FFG with the character's numbers filled in ("your Earth Ring (3)"). Measured with
  `sheet_recall.py`: 485/1,154, 241/759, 254/700 segments not in the corpus, of which 324, 189, 177 are the
  repeated template. *Recommendation:* exclude both as reprints of core text, with that reason in the manifests;
  the alternative is a verbatim lore per sheet set (~25k words, nearly all duplicate). Not converted.
- [ ] Blank forms (Expanded Character/Campaign Sheet, the army sheet): recommend excluding as blank forms.
- [ ] The master codex leaves lore unpinned (pre-existing: path-of-waves ×3, blood-of-the-lioness, wheel-of-judgment,
  core ×3, five-winds gifts-of-world; now also the five companion lores). Pin all, or keep the pin set curated?
- [ ] Downstream: the L5R5e VTT, Portents & Fortunes and The Bushi Oni build from these lore files — rebuild.

Recommendation 2 (core's missing passages) — DONE 2026-10-01, below. Recommendations 3–4 open.

## 2026-10-01 — core's missing passages filled; the extractor refined (adventures re-generated); decision log

Workspace as above. **Rebuild core's fill:** `$P ffg_extract.py core; $P ffg_fill.py core; $P qa.py core`.
`l5r5e-0.5-core-passages.lore` is GENERATED.

Decisions:
1. **Core's curated files are not rewritten; one new lore holds what they lack** (`ffg_fill.py`): every printed
   paragraph, box or table any of whose sentences (24+ letters) is in none of core's files, whole, under the book's
   heading chain; then every printed line still missing, its node taken, until none is; and every book heading the
   corpus names nowhere (no lore heading, no DEF), so the book's structure is in the corpus with its rules left in
   the .ttrpg. Pages: pdf 5 (the opening fiction) to 333 (the reading list); pdf 1–2 the stamp's blank pages, 3 the
   credits, 4 the contents, 334–337 the index (settled policy).
2. **Extractor changes, each A/B'd over all 20 adventure lores, every difference reviewed** (snapshots in the
   workspace): bulleted lists printed with their bullet on a line of its own now render as lists (they had been
   dropped — Imperfect Land's "Naigen … Iwa …" read as one run); a bold label opens an entry after a line ending in
   plain type or a finished label entry, never inside an open bracket (stat lines, "Gear (equipped)" / "Gear
   (other)", "Starting Techniques:"); a one-line entry that stops short before a sentence at its own edge ends
   ("Status: 25" / "It is possible…"); pieces of one line joined by centre line and icons kept ("Earth (op): This
   effect…", core pdf 200; Deathly Turns' "Starting Outfit:" with its value); a bare icon joins no text to its right
   (a curriculum's (ritual) stays in its cell); a table's two-line labels whole ("MOMENTUM POINTS NEEDED", "Explosive
   Success"); a column's edge where its lines share it (a value centred in its row stays in its column); a text
   column running out of a panel is not the panel's (core pdf 61's school panels); a panel read in bands where
   headings span both columns (core pdf 24; Topaz pdf 10 now reads section by section); text painted over by a later
   fill is not read (core pdf 66's stale curriculum copy, decided by glyph origin); vertical labels read as one
   ("毘沙門 B I S H A M O N"); the chapter label "CHAPTER 8" apart from its title; a glossary's term and definition
   one entry; a reading list's columns and hanging entries; Deathly Turns' font maps "–2"…"–5" to "Ŏ"+a control
   code — decoded as printed (read off the page by eye).
3. **Reviewed QA exemptions** (`books.py` `qa_exempt`, each with its reason; check 2 gained the hook): the Seven
   Fortunes' vertical names (pdftotext reads kanji apart from romaji); core pdf 24's last line (pdftotext prepends the
   dice key's glyphs); pdf 98's three body lines (pdftotext joins them to Table 2–2 beside them); two glossary terms
   pdftotext reads apart from their definitions; Deathly Turns' five decoded curriculum cells. Chapter 5's running
   head, set in odd letter-spacing, is furniture. Check 4 no longer reads a list entry or a line after a table row
   as a broken sentence.
4. **Not carried:** core pdf 24's dice key — large symbols set beside each step of Kat's play, repeating the symbols
   her text already names (art, not text).
5. **Coverage inventory:** core pdf 326's MINION block is the Cat (the read took the Bear's grid digits "4 3"; the
   outline lists Cat; `core-npcs.ttrpg` defines it).
6. Sins of Regret's codex: one quote re-taken (Genzo → Reju) — the old quote ran across two roster entries the old
   reading had merged.

Gates (2026-10-01, final output):
- `qa.py core`: 0 failures, 0 recall misses (18,070 printed lines), 0 lost; planted defects 5/5 caught
  (`plant_test.py core`), file restored byte for byte. All 20 adventure lores still 0/0/0 on the final `qa.py`.
- coverage: core 787/787 PASS, exit 0 (was 751/787); the 16 adventure manifests still PASS.
- sentence probe, core: 2,277 of 7,849 sentences missing (29%) → 1,167 (15%). A sample of 25 of the 1,167: 20 have
  their first or last 30 letters in core's files; the other 5 are curriculum grid rows and icon lines the probe's
  words cannot match. `qa.py`'s line recall finds no printed line missing.
- validator 164 files 0/0; §5d 2,361 sites 0 errors; constructs 382 guidance 0 errors; structure PASS; synthesist
  1,468 entities (unchanged), overrides 41, 0 missing parents. VERSION one patch above HEAD per file; watermark 0.

(Recommendations 3–4 done 2026-10-02 — see below.) Was: STOPPED HERE (recommendations 3–4) — to resume run:
`cd ~/Sortilege/Titterpig/Temp/l5r5e-books`, add `beginner-rulebook` to `books.py` (`Beginner Game/Rulebook.pdf`,
no corpus files: a whole-book lore, `ffg_gen`), then `./runall.sh beginner-rulebook`; then the page fills — Path of
Waves, Five Winds, Courts of Stone, Writ, Mantis — each as core's: a `books.py` entry with `prefix`, `ffg_extract.py`,
`ffg_fill.py`, `qa.py` to 0/0/0, then `l5r_audit.py <book>`.

## 2026-10-02 — Beginner Game Rulebook converted; the five page fills; extractor and QA refined; decision log

Workspace `~/Sortilege/Titterpig/Temp/l5r5e-books` (not a repo). **Rebuild a page fill:** `./fill.sh <book>`
(extract, fill, QA); the Beginner Rulebook: `./runall.sh beginner-rulebook`; casts: `collect_blocks.py`, then
`cast_add.py --book=<book> --write`. Generated, never hand-edited: every `*-passages.lore`, the Beginner Rulebook's lore,
`l5r5e-0.5-beginner-rulebook-cast.ttrpg`, `l5r5e-0.5-path-of-waves-cast.ttrpg`.

Decisions:
1. **Beginner Game Rulebook** (owner, "go with your recommendations": recommendation 3): converted whole into
   `l5r5e-0.5-beginner-rulebook.lore` (pdf 2–50; pdf 49 the index, out), and its 14 chapter-5 NPC profiles into a new
   `l5r5e-0.5-beginner-rulebook-cast.ttrpg`. A name another file defines takes "Name (Beginner Game Rulebook)" (Ashigaru,
   Experienced Bandit). The peasant prints "NPC ABILITY: NONE": no ability DEF, a comment. The Ogre's block runs on to
   the top of the page's right column (pdf 48), its weapons and three abilities there: the collector now reads the same
   page's next column before the next page's. The outline's two file-name bookmarks ("Binder1.pdf", "Beginner Game
   Rulebook Interior") are excluded with the reason (no page prints them).
2. **The five page fills** (recommendation 4), each as core's: a `*-passages.lore` of every printed paragraph, box or
   table whose sentence the curated files lack, under the book's headings. Ranges: Path of Waves pdf 5–252, Five Winds
   5–177, Courts of Stone 5–145, Writ 5–145, Mantis 3–11 (covers, credits, contents, index out). Courts pdf 145 is
   content (chapter 3's end and "The Court Sheet" section) — first misread as the blank form, corrected by eye.
3. **Path of Waves' text layer is broken** in 29 of its Type0 fonts (a font's ToUnicode lists 9 of the glyphs it draws:
   "“Thank you.”" read "º/h>n\x8e"). Read instead from `merged/path-of-waves-repaired.pdf` (`repair_tounicode.py`):
   each font's map completed from the same typeface's other subsets in the book and from seven agreeing FFG PDFs
   (core, Five Winds, Courts, Writ, Emerald Empire, Shadowlands, Celestial Realms; any donor typeface disagreeing on a
   shared glyph refused — Fields of Victory and Legacies of War are another build), six glyphs read by eye (pdf 17, 98,
   175, 182, 211). Proof: 0 unknown glyphs left; 587 of the 609 repaired spans of 25+ letters verbatim in the curated
   corpus (the other 22 are prose the corpus lacks). Before the repair the fill "took" 858 nodes; after, 565.
4. **Path of Waves cast:** four printed stat blocks had no NPC entity (Michi, the Monk; Seppun Sora; Otomo Kazuko; Seppun
   Ishima) → new `l5r5e-0.5-path-of-waves-cast.ttrpg` (Otomo Kazuko verified field by field against pdf 162). The other
   books' blocks all have one (the finder now folds macrons — the curated files spell "Asako Raiku" — and keys a cast
   name's lead; four unreadable names and the Ifrit named by eye in `books.py`). A cast name another file defines —
   as a caret DEF, an ACTOR or a TEMPLATE — takes "Name (Book)": core's ACTOR "Peasant" had been shadowed by the
   Beginner Rulebook's peasant (caught by the synthesist's implicit-override count, 41 → 42); now "Peasant (Beginner Game
   Rulebook)", and Scholarly Shugenja, Seasoned Courtier and Kitsune likewise.
5. **Extractor changes, A/B'd over all 21 generated lores and core, every diff reviewed:** a technique's rank set on its
   name's baseline joins the name ("Osano-wo’s Boast (Mantis) Rank 3"; core's 170 bare "Rank N" headings now name their
   technique); two stat blocks' ability titles side by side are not a table (core's DIRTY TRICKS / STRIKING AS FIRE); a
   curriculum's choice lines are rows of their own (TYPE tables only — a Deathly Turns row of wrapped cells was cut by
   the first version and is whole again); a table's lines start under or left of its last label (Path of Waves pdf 83's
   box was read into its TYPE column; as a side effect six adventures' tables now sit under their captions — Topaz,
   Winter's, Emerald, Scroll, Deathly Turns, the Beginner Rulebook — content identical); the buyer-stamp filter matches
   the stamp's own form (the buyer's full name, then "(Order" and its number), not a word of it — Path of Waves pdf 222's "A vibrant peacock is depicted on the
   side" had been dropped; Path of Waves' mantra icon is "(mantra)", as its curated files type it.
6. **QA changes:** a block read in two runs must break where the layer breaks a line (a dropped or swapped word breaks
   mid-line) — prose blocks only; pdftotext's glued runs ("Sociable WandererWhile most") count when each part is held;
   a joined rank title is in the layer when both pieces are; the planted-defect test plants into a paragraph holding a
   printed line no other file holds (a fill paragraph can be held line by line elsewhere, and losing it loses nothing).
   Each reviewed exemption is in `books.py` with its reason (Writ pdf 85, Courts pdf 7, Five Winds pdf 81, Path of Waves
   pdf 248, the Beginner Rulebook's pdf 6 mid-line).
7. **Coverage outline artefacts, each recorded in `l5r_audit.py` with its reason:** Path of Waves' outline spells two
   questions with typos (read as printed, pdf 32 and 44); Courts of Stone's first bookmark names its cover file;
   Five Winds' character-sheet outline names five field values, each held as a value in `-pregens.actor` (excluded with
   where it is held).
8. **Not changed:** the seed boxes' Hook / Rising Action / Climax steps are one paragraph in every fill (text and order
   right, the paragraph breaks not kept); core's Glory table's two merged rows (a cell spanning two rows) stay as before.

Gates (2026-10-02, final output):
- `qa.py`: 0 failures / 0 recall misses / 0 lines lost on all 21 generated lores, core and the five fills.
- planted defects: 20 of 20 caught (Writ, Path of Waves, the Beginner Rulebook, core), each lore restored byte for byte.
- coverage: Path of Waves 306/306, Five Winds 219/219, Courts 185/185, Writ 138/138, Mantis 48/48, Beginner Rulebook
  116/116, core 787/787 — all exit 0. Sentence probe: the pages still ≥80% are credits pages, back covers and one Five
  Winds character-sheet page (the open character-sheet decision).
- statblocks: every printed block has an NPC entity in Path of Waves, Five Winds, Courts, Writ, the Beginner Rulebook.
- validator 166 files 0/0; §5d 2,379 sites 0 errors; structure PASS; synthesist 1,486 entities (+18, the two casts),
  implicit overrides 41 (unchanged), 0 missing parents. VERSION one patch above HEAD per modified file; watermark 0.

Open for the owner (unchanged): character sheets and blank forms; the seed boxes' step paragraphs (8 above) if wanted.
