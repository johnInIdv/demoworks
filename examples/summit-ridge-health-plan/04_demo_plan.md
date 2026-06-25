# Stage 04 — Demo Plan: Summit Ridge Health Plan

**Escalated from:** `03_opportunity_mapping.md`
**Planned by:** Daniel Reyes (SE)
**Date:** 2026-06-19
**Meeting:** Demo call — target week of 2026-06-29, video, ~45 min. **Legal to be in the room**
(Karen: *"Legal will want to hear exactly that sentence"*).

> Escalated opportunities only. The demo recreates the customer's pain on their own kind of
> material, then resolves it. State every gate out loud during the demo.

---

## What we're demoing

- **Lead pattern:** Pattern 6 — Record-vs-medical-necessity-criteria checklist.
- **Capability shown:** Atlas Skill (medical-necessity checklist) backed by the Determination
  Library, run on Summit Ridge's own de-identified spine packet.
- **Supporting pattern(s) referenced:** Pattern 3 (Caseboard one-page file brief, shown live in
  the same flow); Pattern 4 (prior-determination comparison — described as the single-user-gated
  next phase, not demoed live).

---

## The storyline

1. **Recreate the pain.** Open the de-identified spine packet on screen — the ~130-page
   *"one big fax or a PDF dump."* Narrate their own day: *"the first hour on a big file is just
   orientation."* Then name the number out loud: two reviewers, same file, same criteria, and
   *"seventeen percent — one in six complex cases — came to different answers,"* much of it
   *"a disagreement about what was in the file,"* not medicine. This is the moment they recognize
   their own workflow, not a generic one.
2. **Apply the capability — start with the file brief (Pattern 3 / Caseboard).** Upload the
   *consolidated* spine file to a Caseboard and ask Atlas for a one-page reviewer brief: onset
   date, conservative-therapy history and duration, imaging findings — each cited to a page.
   Land Dr. Hale's own line back to him: this is the hour of orientation, done in seconds.
3. **Apply the lead capability — run the medical-necessity Skill (Pattern 6).** Run the spine
   medical-necessity checklist Skill built against Summit Ridge's written criteria. Atlas walks
   each criterion: met / not-met / not-documented, each with a citation to the page in the record.
   Pause deliberately on a *not-documented* criterion — e.g., conservative-therapy duration —
   and show how the citation lets the reviewer verify in one click. This is the consistency fix:
   *"every reviewer starting from the same read."*
4. **Show the result.** The structured, cited checklist is the artifact every reviewer would
   start from. Tie it explicitly back to the 17% variance and the six-week / ~180-case appeals
   backlog: a consistent structured starting point is the lever against both.
5. **Land the gates.** State each honest gate out loud (see below) — criteria elicitation is the
   real build lift; the Determination Library needs a curator; Caseboard is single-user; and,
   said plainly with legal present, **the output is an analytical aid, not a coverage
   determination.**

---

## Assets needed (hand-off to stage 05)

- [ ] **Consolidated claim file** — Summit Ridge's de-identified spine packet consolidated into
  one clean text file (`05_assets/claim-file-consolidated.md`), not the raw fax dump (better
  retrieval). Flag any handwritten progress-note pages where OCR may be uneven.
- [ ] **Medical-necessity Atlas Skill** — the spine checklist Skill definition
  (`05_assets/medical-necessity-checklist-SKILL.md`), built against Summit Ridge's written spine
  criteria, emitting met / not-met / not-documented per criterion with citations.
- [ ] **Saved prompts** — the exact prompts used for the Caseboard file brief and the Skill run
  (`05_assets/prompts.md`), so the demo is repeatable.

---

## Gates to state out loud

- **Analytical aid, not a determination** — stated at step 1 (set expectation up front, legal in
  the room) and restated at step 5: *"the output of this is an analytical aid. It is not a
  coverage determination... a human reviewer still makes the call."*
- **Criteria elicitation is the real build lift** — stated when the Skill is introduced at
  step 3: the technology isn't the hard part; structuring your *"ugly,"* hedging policy into clean
  positions is, and it needs a curator (Dr. Hale volunteered).
- **Determination Library needs a curator/governance owner** — stated alongside the criteria
  gate at step 3: the library doesn't populate itself and drifts if nobody owns it.
- **Caseboard is single-user today** — stated at step 2 when the file brief is shown: one
  reviewer's board, not a shared team board (roadmap, not shipped); "every reviewer gets this,"
  not "one shared board." Same gate covers Pattern 4 — note there is no shared precedent board yet.
- **Consolidation + uneven OCR** — stated briefly at step 2: retrieval is better on a
  consolidated text file; handwriting/fax OCR is uneven, no clean-extraction promise sight unseen.

---

## Success criteria for the meeting

- Karen and Dr. Hale confirm the demoed workflow is genuinely theirs (the spine case, the
  orientation hour, the 17% variance) — not a generic approximation.
- Legal hears and accepts the "analytical aid, not a determination" framing.
- Dr. Hale (or a named medical director) is formally committed as the criteria / Determination
  Library curator.
- Customer agrees to a scoped Pattern 6 Skill build for the spine category as phase 1, with
  Caseboard file-brief (Pattern 3) as an early-value add-on.

---

## Open questions to resolve before the demo

- Will Summit Ridge deliver the de-identified spine packet **and** the written spine
  medical-necessity policy in time to build against real criteria? (Dr. Hale committed to both;
  confirm receipt.)
- What is the true page count and condition of the delivered packet — how much handwritten
  progress-note content will stress OCR?
- Confirm the criteria curator (Dr. Hale indicated himself) and that he has authority to
  arbitrate the policy contradictions during conversion.
- Which spine criteria are the highest-disagreement ones? Demoing a known-contentious criterion
  as the *not-documented* example makes the variance fix land harder.
