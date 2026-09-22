---
name: tirefi.re — WIP
description: Amber-on-charcoal instrument panel for a satirical tech-incident catalogue.
colors:
  bg: "#12110f"
  surface: "#191713"
  surface-hi: "#211e19"
  border: "#2e2a24"
  border-hi: "#46403a"
  text: "#e4ded4"
  text-bright: "#f5f1ea"
  text-dim: "#b0a696"
  accent: "#ffa62b"
  accent-dim: "#c98420"
  ok: "#3fe06b"
  hot: "#ff7a5c"
  hot-deep: "#ff4d2e"
typography:
  headline:
    fontFamily: "'JetBrains Mono', 'Fira Code', 'Cascadia Code', 'Consolas', 'Monaco', 'Courier New', monospace"
    fontSize: "1.75rem"
    fontWeight: 700
    lineHeight: 1.2
  title:
    fontFamily: "{typography.headline.fontFamily}"
    fontSize: "1.25rem"
    fontWeight: 700
  body:
    fontFamily: "{typography.headline.fontFamily}"
    fontSize: "1rem"
    fontWeight: 400
    lineHeight: 1.5
  label:
    fontFamily: "{typography.headline.fontFamily}"
    fontSize: "0.75rem"
    letterSpacing: "0.08em"
    fontFeature: "tabular-nums slashed-zero"
  readout:
    fontFamily: "{typography.headline.fontFamily}"
    fontSize: "clamp(2.5rem, 12vw, 4.5rem)"
    fontWeight: 700
    lineHeight: 1
spacing:
  xs: "0.6rem"
  sm: "1rem"
  md: "1.25rem"
  lg: "1.75rem"
components:
  status-cell:
    backgroundColor: "transparent"
    textColor: "{colors.text-dim}"
    typography: "{typography.label}"
  memorial-card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.text}"
    padding: "1rem 1.15rem"
  memorial-card-hover:
    backgroundColor: "{colors.surface-hi}"
  readout:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.hot}"
    padding: "1.25rem 1.35rem"
---

# Design System: tirefi.re — WIP

## Overview

**Creative North Star: "The Incident Console"**

A dead-serious operations dashboard rendering the trivial and the absurd as if it were a live production outage. Every recurring tech annoyance in the catalogue (Active Directory, AWS, OpenStack, RVM...) gets treated with the visual gravity of a real severity-tracked incident: status strips, severity meters, tabular readouts, monospace throughout. The joke is entirely in the gap between the instrumentation and the subject matter — the system itself must never wink at the reader. No rounded corners, no soft shadows, no playful color: this is htop's aesthetic, not a marketing page's.

Dark by construction (`color-scheme: dark`), amber as the single primary accent with green reserved as a status/ok signal, never decorative. Confirmed visual rejection: no gradients or glow effects beyond the fire background scrim; a prior `text-shadow` glow on headings was removed outright during the original build as inconsistent with a flat instrument-panel surface.

**Key Characteristics:**
- Amber-on-charcoal, zero rounded corners, zero drop shadows
- Tabular numerals and monospace everywhere, including prose
- Column-grid tables with row indices and inline severity meters
- Status strip / breadcrumb chrome that classic mode strips out entirely

## Colors

A near-black warm charcoal base with a single amber primary and green reserved strictly for "OK/success" signal — not used decoratively.

### Primary
- **Signal Amber** (`#ffa62b`, 9.60:1 on `--bg`): links, active/selected state, the sole brand accent. Used sparingly — headings, links, and the severity-3 meter cell.

### Secondary
- **Status Green** (`#3fe06b`, 10.80:1 on `--bg`): "OK" / "Green" build-status signal only. Never used for links, headings, or decoration.
- **Alert Coral** (`#ff7a5c`, 7.32:1 on `--bg`): "hot"/danger text — the halted-clock readout value, danger states.
- **Deep Ember** (`#ff4d2e`, 5.68:1 — bars and rules only, below the 7:1 text floor): severity-4/5 meter fill and rule accents where it never carries text.

### Neutral
- **Void** (`#12110f`): page background.
- **Panel** (`#191713`): card/table-row surface, one step up from Void.
- **Panel Hi** (`#211e19`): hover/active surface state.
- **Line** (`#2e2a24`): default border/divider.
- **Line Hi** (`#46403a`): emphasized border (hover, active row).
- **Ash** (`#e4ded4`, 14.1:1): primary body text.
- **Ash Bright** (`#f5f1ea`): headings, high-emphasis text.
- **Ash Dim** (`#b0a696`, 7.81:1): secondary/meta text — the floor for any text-bearing neutral.

### Named Rules
**The 7:1 Rule.** Every color used for text meets WCAG AAA (7:1 body / 4.5:1 large). `--hot-deep` (5.68:1) is reserved for bars and rules and must never carry text — this exception is documented inline in the CSS.

## Typography

**Body/Display/Label Font:** `'JetBrains Mono'` (self-hosted, subset woff2), falling back through `'Fira Code'`, `'Cascadia Code'`, `'Consolas'`, `'Monaco'`, `'Courier New'`, `monospace`.

**Character:** One face for everything, including prose — the monospace grid is the point, not a code-block exception. `font-variant-numeric: tabular-nums slashed-zero` is set globally so incident-style numbers (uptime, severities, counts) never jitter or misread 0/O.

### Hierarchy
- **Readout** (700, `clamp(2.5rem, 12vw, 4.5rem)`, line-height 1): the halted-clock big numbers on `/trumpdays/` and `/president/`. Color `--hot`.
- **Headline** (700, 1.75rem, line-height 1.2; 1.35rem under 640px): `.page-header h1` and similar section titles.
- **Title** (700, 1.25rem): `.site-title` in the header.
- **Body** (400, 0.9–1rem, line-height 1.5–1.7): default prose (`.main-content-area` runs 0.9rem/1.7 for longer-form reading).
- **Label** (400, 0.75–0.95rem, letter-spacing 0.08em where uppercase): status strip cells, column headers, breadcrumb, nav links, and search-overlay chrome. This is a range, not a single step — nav (0.8rem), search input (0.95rem), search result meta (0.82rem), and empty-state copy (0.85rem) are legitimate distinct instances of the same role, not drift.

### Named Rules
**The Label Range Rule.** Label-role text can land anywhere in 0.75–0.95rem depending on local chrome density (nav vs. search overlay vs. status strip). Don't chase every literal onto one exact value — the range itself is the documented system.

**The 12px Floor Rule.** No text renders below a 12px (0.75rem) equivalent. Instrument-panel labels want to go smaller; don't — it was a real defect (`tiny-text`, values down to 0.65rem) caught and fixed during the original build.

## Layout

Single-column console layout capped by the theme's existing container width, with an inset `.container.console` panel (`rgba(18,17,15,0.94)` background, 1px side borders) that keeps the animated fire background confined to the page margins rather than running behind text.

Shared four-column grid (`.col-head`, `.filter-item a`): `grid-template-columns: 3.5ch 20ch 6rem 1fr; gap: 1.25rem;` — row index, name, severity meter, description. Reused identically between the visible column header and every data row so they stay pixel-aligned.

**Breakpoints:** 760px (list density adjustments), 640px (mobile: status strip goes `nowrap` + horizontal scroll, minor cells hidden; fire background collapses from a fixed full-page layer into a static 150px masthead band below the header, full opacity, no text overlay).

### Named Rules
**The Margin Fire Rule.** The animated fire background must stay in page margins (or become a contained masthead band on mobile) and never sit directly behind body text without a scrim — a legibility defect fixed in the original build.

## Elevation & Depth

Flat by construction — no box-shadow anywhere in the stylesheet. Depth and hierarchy come entirely from tonal layering (`--bg` → `--surface` → `--surface-hi`) and 1px borders (`--border` / `--border-hi`), never shadow.

### Named Rules
**The Flat Console Rule.** Don't introduce `box-shadow` or blur-based glow. Hierarchy is tonal-step + border only, consistent with the instrument-panel brief.

## Shapes

Zero border-radius anywhere in the system — every corner is square. Borders are always 1px solid, drawn from the neutral scale (`--border` at rest, `--border-hi` on hover/active/emphasis). The severity meter (`.sev`) is the one distinctive silhouette: a horizontal 8px bar built from stacked `::before`/`::after` gradients, discretely clipped into 5 cells via `clip-path: inset()` rather than a continuous fill — cells are either on or off, never partial, to read like a hardware LED bar rather than a progress bar.

## Components

### Status Strip
- **Style:** flex row, `border-top: 1px solid var(--border)`, 0.75rem uppercase label + value pairs (Topics / Uptime / Incidents / Status / Build).
- **Mobile:** `nowrap` + horizontal scroll; `.is-minor` cells (Topics, Uptime) hidden below 640px to keep Incidents/Status/Build visible without scrolling.

### Severity Meter (signature component)
- **Shape:** 8px-tall horizontal bar, 5 discrete cells, `clip-path: inset()` drives the fill count from a `--n` custom property (1–5).
- **Color:** cells 1–2 `--text-dim`, cell 3 `--accent`, cells 4–5 `--hot-deep`. Track color `--border-hi`.
- **Accessibility:** carries `role="img"` and `aria-label="Severity N of 5"` since the visual meter conveys no text.

### Topic Table / Filter List
- **Shape:** square corners, 1px `--border` row dividers, no shadow.
- **Row:** `.col-head` grid repeated per `.filter-item a` — index (`.idx`, zero-padded 2-digit), name, severity meter, description.
- **Hover/active:** background steps to `--surface-hi`; filter animation uses `cubic-bezier(0.22,1,0.36,1)` (ease-out-quint) — the original overshoot easing (`cubic-bezier(0.34,1.56,0.64,1)`) was replaced as inconsistent with an instrument panel's no-bounce motion language.

### Readout (halted-clock display)
- **Style:** `--surface` background, no border (a bordered readout nested inside an already-bordered `.content-section` produced a double-frame defect, fixed by dropping the readout's own border), centered, large tabular-numeral value in `--hot`.

### Memorial Card
- **Style:** `--surface` background, 1px `--border`, `1rem 1.15rem` padding; hover steps to `--surface-hi`. Grid gap is `1rem` with per-card borders — a `gap:1px` shared-background trick was tried and rejected because it rendered a phantom filled cell on odd-numbered grids.

### Links
- **Style:** amber (`--accent` via `--link`), no underline styling documented beyond default browser link treatment layered onto the accent color — added during the build after discovering prose links had no rule at all and rendered in default browser blue (2.4:1, a contrast failure).

## Do's and Don'ts

### Do:
- **Do** keep every text color at or above 7:1 (4.5:1 for large text) against its background — this is a hard product accessibility floor, not a suggestion.
- **Do** drive severity, count, and status displays from real data (`_data/topics.yml`), never hand-authored duplicates — a prior hand-written topic list silently drifted from the search index by 18 of 41 entries.
- **Do** keep corners square and surfaces flat; depth comes from the `--bg`/`--surface`/`--surface-hi` tonal steps and borders only.
- **Do** use `--hot-deep` only for bars/rules, never for text.

### Don't:
- **Don't** touch `classic/**`, the classic layouts, or classic CSS. Any new WIP chrome added to `_layouts/wip.html` needs a matching `html.classic-mode` override in the `=== CLASSIC MODE ===` block so classic rendering stays unaffected.
- **Don't** add box-shadow, drop-shadow glow, or bounce/overshoot easing — both were tried and removed as inconsistent with the flat, no-bounce instrument-panel language.
- **Don't** let the fire background sit directly behind readable text without a scrim/panel.
- **Don't** add third-party embeds (e.g. Twitter widgets) that render a visible broken/empty state when the network call fails; a broken widget slab was removed from 5 pages during the original build.
