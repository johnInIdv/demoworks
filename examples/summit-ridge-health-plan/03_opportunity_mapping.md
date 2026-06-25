# Stage 03 — Opportunity Map: Summit Ridge Health Plan

**Profiled from:** `02_workflow_extraction.md`
**Mapped by:** Daniel Reyes (SE)
**Date:** 2026-06-18

> **This is the highest-value review gate.** Review and edit before escalating anything.
> Every recommendation must carry its honest gate — a gate-stripped recommendation is
> incomplete. Most transcripts stop here with a written recommendation.

---

## Lead recommendation

- **Pattern:** Pattern 6 — Record-vs-medical-necessity-criteria checklist (from
  `solution-patterns.md`)
- **Mapped capability:** Atlas Skill (medical-necessity checklist), backed by the Determination
  Library.
- **Build type:** Custom build.
- **Why this transcript points here:** You said *"In theory it's a checklist. The record either
  meets the criteria or it doesn't"* — and then *"two reviewers will read the same file and reach
  two different determinations,"* measured at *"seventeen percent. One in six complex cases."*
  That is exactly the Pattern 6 fingerprint: a decision made against your *written* criteria,
  with variance between reviewers, and an appeals backlog downstream. Critically, Dr. Hale
  diagnosed the variance as document-comprehension, not medicine — *"It wasn't a disagreement
  about medicine. It was a disagreement about what was in the file"* — which is precisely what a
  criterion-by-criterion checklist with citations removes: it gives every reviewer the same
  structured read of the same record (met / not-met / not-documented, each cited to a page).
- **Honest gate:** The technology isn't the hard part — eliciting and structuring your written
  criteria is. Your spine policy is, in your own words, *"ugly"*; turning *"long, they hedge,
  sometimes they contradict each other"* policy docs into clean preferred/fallback positions is
  the Determination Library conversion path, and it needs a named curator (Dr. Hale volunteered —
  a green flag). And state it on every call, with legal in the room: **the checklist output is an
  analytical aid, not a coverage determination. A human reviewer still makes the call; nothing we
  produce becomes the determination of record.**
- **Demo concept:** Run the medical-necessity Skill on Summit Ridge's own de-identified spine
  packet; Atlas returns each spine criterion as met / not-met / not-documented with a citation to
  the page in the record — the same structured starting point for every reviewer.

---

## Supporting recommendation(s)

### Supporting — Pattern 3 — Messy claim-file intake & summarization

- **Mapped capability:** Caseboard.
- **Build type:** Out-of-the-box.
- **Why:** *"A hundred to a hundred and fifty pages... one big fax or a PDF dump,"* and *"the
  first hour on a big file is just orientation"* — long, unorganized packets that a reviewer must
  read just to understand. Dr. Hale's reaction (*"That alone would change my morning"*) confirms
  the pull. Caseboard turns that hour of orientation into a one-page cited reviewer brief in
  seconds.
- **Honest gate:** Single-user today — one reviewer's board, not a shared team board (shared
  boards are roadmap, not shipped); the team story is "every reviewer gets this on their own
  files," not "one board for the whole team." Retrieval is materially better if the packet is
  consolidated into one clean text file rather than the raw fax dump, and OCR on handwritten
  progress notes is uneven — no promise of clean handwriting extraction sight unseen.
- **Demo concept:** Upload the consolidated spine claim file; ask Atlas for a one-page reviewer
  brief with citations, produced in seconds instead of an hour.

### Supporting — Pattern 4 — Prior-determination search & comparison

- **Mapped capability:** Caseboard (comparison across the corpus); strengthened later by the
  Determination Library.
- **Build type:** Out-of-the-box.
- **Why:** *"How did we decide this kind of case before?... I can't point them to it...
  everybody's re-deriving the wheel."* Determinations live in the claims system *"as outcomes,
  not as reasoning you can search,"* which feeds the variance. Caseboard can compare a new
  submission against a prior file to surface what's consistent and what diverges.
- **Honest gate:** Single-user today — there is **no shared, team-wide precedent board yet**
  (roadmap, not shipped), and comparison is only as good as what's loaded and how it's
  consolidated. For a canonical "what's our position on this criterion," that's the Determination
  Library's job, once built — flag this as the genuine limit, do not sell a precedent board that
  doesn't exist.
- **Demo concept:** Load a prior spine file and a new submission into a board; ask Atlas how the
  new case compares — consistent vs. divergent from how the earlier case was handled.

---

## Patterns considered and not recommended

- **Pattern 2 (two-sided appeal review & routing)** nearly matched on the appeals backlog
  (*"half the appeals work is archaeology"*). Set aside as not the lead because the customer's
  framing is that appeals are a *downstream symptom of upstream determination variance* — fixing
  the prior-auth checklist (Pattern 6) attacks the root cause. Revisit Pattern 2 in a later
  phase if the appeals queue persists once variance is reduced.
- **Pattern 5 (cross-document inconsistency detection)** is plausible (provider notes vs. claim
  form) but the customer did not name internal-document contradictions as a pain; the pain was
  comprehension and criteria-matching, not contradiction-hunting. Not recommended now.

---

## Routing decision

**Recommendation:** Escalate to stage 04 (build full demo).

**If escalating — lead pattern to demo:** Pattern 6.
**Rationale:** This earns a full demo build because (1) it hits the strongest domain signal —
a written-criteria decision with measured variance and a quantified, compliance-exposed appeals
backlog; (2) the customer has already offered the exact raw material (a de-identified spine
packet + the written spine policy), so the demo can run on their own kind of case rather than a
generic one; and (3) a clinical owner for criteria curation (Dr. Hale) has already volunteered,
de-risking the one gate that usually kills these projects. Demo Pattern 6 as the lead and show
Pattern 3 (Caseboard file brief) inside the same flow as the supporting capability; reference
Pattern 4 as the next-phase, single-user-gated precedent capability.
