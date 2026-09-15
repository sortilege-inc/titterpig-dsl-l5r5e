# titterpig-dsl-l5r5e — TODO

## 2026-09-15 — §5d migration done; one spec gap left open

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

### Pre-existing, untouched

**24 files carry a `VERSION` whose first two digits do not match their
`SPEC_VERSION`** — mostly `VERSION "0.4"` with `SPEC_VERSION "0.5"`, and
`l5r5e-0.4-codex-schema.codex` says `VERSION "0.9"`. The owner rule (2026-07-27)
is that the first two digits track `SPEC_VERSION`. Flagged by the version
bumper, deliberately left alone.

Also unchanged: `stash@{1}` is Jordan's real `0.1/` edits to reconcile with
remote `cf78e5e`; `stash@{0}` is droppable whitespace noise. Neither popped.
