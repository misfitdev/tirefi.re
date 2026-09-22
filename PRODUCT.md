# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Stack

Jekyll static site (github-pages gem), Ruby 3.3.0, Liquid templates, YAML data files. [Inferred: existing codebase, not asked.]

## Users

Self-identified "tire fire" enthusiasts and the site owner's peer network in tech/ops/SRE circles — people who read satirical postmortem-style writeups of recurring industry dumpster fires (AWS outages, enterprise Windows/AD pain, open-source drama, etc.) for entertainment. [Inferred from `.wip/topics.yml` content and tone, not confirmed with the user.]

## Product Purpose

A satirical/humor site cataloguing "tire fires" — recurring, absurd, or exhausting recurring disasters in tech (topics like Active Directory, AWS, OpenStack, RVM, Puppet). No functional/commercial purpose; entertainment and in-joke value only. [Inferred.]

## Positioning

Deadpan technical-incident-report tone applied to mundane/absurd topics rather than real incidents — the humor is the gap between the "instrument panel" severity framing and how trivial/petty the actual topic is. [Inferred.]

## Operating Context

Two coexisting front-end experiences on the same content:
- **WIP** (`.wip/**`, `_layouts/wip.html`) — the actively maintained surface, currently an amber/green "instrument panel" dark theme (severity meters, status strip, monospace).
- **Tire Fire Classic** (`classic/**`, classic layouts/CSS) — a legacy visual mode, explicitly preserved as-is. A `classic-mode` localStorage toggle switches the WIP layout into classic chrome/CSS instead of navigating to a separate site.

## Capabilities and Constraints

- Static site only, no backend, no auth, no user accounts.
- 41 topics driven from `_data/topics.yml`, rendered into both the WIP index table and the client-side search overlay.
- Deployed via GitHub Actions to GitHub Pages on push to `main`; PRs run lint + html-proofer only.
- **Hard constraint (explicit, standing): Tire Fire Classic must keep working exactly as shipped.** Do not restyle, restructure, or regress `classic/**`, classic layouts, or classic CSS under any design command. Verify classic mode (`localStorage.classicMode = "true"`) after any change that touches shared layout/CSS.
- This is a personal/toy project — low stakes, optimized for craft and fun over process rigor. [User: "This is a toy site. Nothing actually matters, except that we keep the classic site alive."]

## Brand Commitments

- Site name: tirefi.re. Twitter/X handle referenced in config: `tirefirebot` (site metadata only, not for design use).
- Existing landing art: `/tirefirebillow.gif` (animated tire fire), used on the classic-mode home view.

## Evidence on Hand

- `_data/topics.yml` — the 41 topic entries (name, description, tags, severity) are real content, not placeholder.
- No testimonials, customers, pricing, or case studies exist or apply; none should be fabricated.

## Product Principles

1. The joke is the artifact — deadpan technical framing (severity, uptime, incident tone) applied to trivial/absurd subject matter is the core bit; do not soften it into a generic dashboard.
2. WIP is the design surface; Classic is a preserved artifact, not a second surface to develop.
3. No real users, no real stakes — favor bold, distinctive craft over conservative/safe choices.
4. Content (`_data/topics.yml`, page copy) is real and factual to the site's own fiction; don't invent new topics or claims without evidence in the repo.

## Accessibility & Inclusion

WCAG AAA contrast target already adopted for WIP body text (>=7:1) in the prior redesign; carry this floor forward on any further WIP work. No other project-specific accessibility requirement was established.
