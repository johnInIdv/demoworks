# Pitchcraft — Rules (the method)

This file is the methodology. It documents the six-stage pipeline that turns a transcript
into a tailored demo, the review gates between stages, the stop/continue decisions, and the
honesty rules that apply throughout.

The pipeline is **product-agnostic**. It tells you *what to do at each stage*; the
`reference/` files tell you *what to do it with*. Re-pointing Pitchcraft at a different
product means swapping `reference/`, not editing this file.

---

## The six-stage pipeline

Stages run in order. Most transcripts stop at stage 03. Only opportunities the user
escalates go on to stages 04–06.

### Stage 01 — Triage

- **Input.** A raw transcript (discovery, training, or support call) or an email thread,
  dropped in the example's `00_input/`.
- **Produce.** A fast classification: route to deep analysis, log the opportunity & stop,
  or no action. Record the signal heard and the routing reason. Keep it fast — this is a
  routing decision, not an analysis.
- **Draws on.** `reference/triage-criteria.md` — the signals worth deep analysis and the
  three routing outcomes.
- **Fills.** `reference/output-templates/01_triage.md`.
- **Stop/continue.** *Deep analysis* → continue to stage 02. *Log opportunity & stop* →
  record and stop. *No action* → classify and stop. When in doubt between deep analysis and
  log-only, log-only is the safe default — but if a decision-against-written-criteria signal
  is present, lean toward deep analysis.

### Stage 02 — Workflow extraction

- **Input.** A transcript that triage routed to deep analysis, plus the stage 01 output.
- **Produce.** A structured workflow profile: who does what, with which documents, in what
  sequence, where the pain is, and the volume/time cost attached to it. Pull direct quotes
  for the pain signals — later stages quote them back to the customer.
- **Draws on.** `reference/triage-criteria.md` (to confirm the signals hold up under a deep
  read) and the transcript itself. This stage is descriptive — it profiles, it does not yet
  recommend.
- **Fills.** `reference/output-templates/02_workflow_extraction.md`.
- **Stop/continue.** Continue to stage 03. If the deep read reveals the workflow is too thin
  to profile after all, downgrade to log-only and stop.

### Stage 03 — Opportunity mapping  *(HIGHEST-VALUE REVIEW GATE)*

- **Input.** The workflow profile from stage 02.
- **Produce.** Recommendations: for each, the matched pattern, the mapped capability, *why
  this transcript points there* (quoting the customer's own pain signal), the build type
  (out-of-the-box vs. custom build), and the honest gate. Expect one lead pattern and one or
  two supporting patterns.
- **Draws on.** `reference/solution-patterns.md` (the matching playbook) and
  `reference/product-capabilities.md` (to ground each recommendation in what the product
  actually does and its deployment realities).
- **Fills.** `reference/output-templates/03_opportunity_mapping.md`.
- **Stop/continue.** **This is the highest-value review gate — the human reviews and edits
  it before anything else happens.** Most transcripts stop here with a written
  recommendation. Continue to stage 04 **only** for opportunities the user explicitly
  escalates to "build full demo." A recommendation that ships without its gate is incomplete
  — do not pass this gate with a gate-stripped recommendation.

### Stage 04 — Demo planning  *(escalated opportunities only)*

- **Input.** An escalated stage 03 recommendation.
- **Produce.** A concrete demo plan: the lead pattern to demo, the storyline (recreate the
  customer's pain, then resolve it on their own kind of material), the assets needed, the
  exact moments where the gate is stated out loud, and the success criteria for the meeting.
- **Draws on.** `reference/solution-patterns.md` (the demo concept for each pattern) and
  `reference/product-capabilities.md` (what's demoable out-of-the-box vs. concept-only).
- **Fills.** `reference/output-templates/04_demo_plan.md`.
- **Stop/continue.** Continue to stage 05 once the plan is reviewed and approved.

### Stage 05 — Asset generation

- **Input.** The approved demo plan.
- **Produce.** The demo's working materials:
  - **Fake but realistic documents** — e.g., a consolidated claim file to upload as the
    Caseboard corpus. Consolidate into one clean text file (better retrieval) rather than
    many PDFs.
  - **A configured-workflow definition** — the Atlas Skill definition the demo runs (e.g., a
    medical-necessity checklist), written as a real, reusable Skill, not a mock.
  - **Saved prompts** — the exact prompts used in the demo, captured so the run is
    repeatable.
- **Draws on.** `reference/product-capabilities.md` (so assets respect what each building
  block actually does and its realities) and the demo plan.
- **Stop/continue.** Continue to stage 06.

### Stage 06 — Delivery package

- **Input.** The demo plan and generated assets.
- **Produce.** A sharable, self-contained HTML **brochure for the demo** — the rep sends it
  *before* the meeting to get the customer excited to attend. It is a brochure, not a memo:
  **less text, more visual**, skimmable in ~20 seconds. Frame everything around the customer's
  own problem and the outcome they'll see — so they immediately grasp that the demo solves
  *their* problem, rather than seeing a generic product they have to map to their pain. Lead
  with an outcome headline in their language; show their pain as a few punchy stats; show a
  before→after; show "what you'll see" as a small set of capability cards (each a pain solved
  on their own material) with a compact visual peek at the lead's output; keep the honest gate
  to one short block; close with a visual call-to-action for what to bring. **Visual theme: dark luxury —
  true-black canvas, gold (`#FFC000`) accent, uppercase display type, zero border-radius,
  depth via surface layering (no shadows); reserve gold for the CTA, section kickers, key stat
  numbers, and the single "moment that lands" highlight.** Inline CSS + inline SVG, no external
  assets, print-friendly, opens in any browser. (The skeleton in `output-templates/06_preview.html`
  already encodes this theme — build on it and just replace the content.)
- **Draws on.** The stage 03 recommendation and the stage 04 plan for content.
- **Fills.** `reference/output-templates/06_preview.html`.
- **Stop/continue.** Final stage. Hand the preview to the rep to send.

---

## Cross-cutting rules

These apply at every stage.

- **Stage outputs are review gates, not final outputs.** A human reads and edits each stage
  output before the next stage runs. Pitchcraft drafts; the rep decides.
- **Most transcripts stop at stage 03.** Triage filters hard, and a written recommendation
  is the common terminal output. Stages 04–06 run only for escalated opportunities. Don't
  build a full demo for every transcript.
- **Be honest about deployment realities.** Carry every recommendation's gate to the
  customer. Don't oversell single-user Caseboard as a shared team board. Don't imply an
  Atlas Skill is a one-click toggle — it's a real build lift whose true blocker is eliciting
  the customer's criteria. Don't imply the Determination Library populates itself — it needs
  conversion, review, and a curator. The gate is the trust signal, not a footnote.
- **Output is an analytical aid, never a coverage determination.** Nothing Pitchcraft
  produces decides what a human must decide. State this on every customer call, put it in
  the demo, and never let any artifact imply auto-adjudication.
- **Specific beats generic, always.** Quote the customer's words. Name their documents,
  volumes, and roles. If an output could have been written without reading the transcript,
  redo it.

---

## How to run this

1. Drop the transcript (or email) into the example's `00_input/`.
2. Run **stage 01 (triage)** → write `01_triage.md`. If it routes to log-only or no action,
   stop.
3. If routed to deep analysis, run **stage 02** → `02_workflow_extraction.md`.
4. Run **stage 03 (opportunity mapping)** → `03_opportunity_mapping.md`. Review and edit
   this carefully — it's the highest-value gate. Most transcripts stop here.
5. For an escalated opportunity only: run **stage 04** → `04_demo_plan.md`, **stage 05** →
   assets, and **stage 06** → `06_preview.html`.
6. Each stage fills the matching template in `reference/output-templates/`. Edit each output
   before running the next stage.
