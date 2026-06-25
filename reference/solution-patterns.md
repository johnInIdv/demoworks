# Solution Patterns — the customer-pain-to-solution playbook

This is the leverage file. Everything else in Pitchcraft is plumbing; the quality of the
recommendation comes from matching a transcript to the right pattern and being honest
about its limits.

## How to use this file (stage 03 — opportunity mapping)

1. **Match.** Take the pain signals pulled from the workflow profile (stage 02) and find
   the pattern(s) whose **Pain signal** list they fire. A transcript usually hits two or
   three patterns — one lead and one or two supporting.
2. **Recommend with reasoning.** Name the pattern, the mapped capability, and *why this
   transcript points there* — quote the customer's own words from the pain signal. Generic
   recommendations lose; "you said X, that's Pattern N" wins.
3. **Always state the honest gate.** Every recommendation must carry its gate to the
   customer. The gate is not a disclaimer to bury — it is the thing that builds trust and
   keeps the demo from over-promising. A recommendation without its gate is incomplete.
4. **Set the build expectation.** Out-of-the-box patterns can be demoed fast on the
   customer's own consolidated claim file. Custom Atlas Skill patterns are a real build
   lift — the demo shows the *concept*; the production version requires eliciting the
   payer's criteria.

Most transcripts stop at stage 03 with a written recommendation. Only escalated
opportunities go on to a full demo plan.

---

## Pattern 1 — Public-facing inquiry intake & triage

- **Pain signal.** "Members and providers send us appeals and inquiries through five
  different channels." "Someone has to read each one, figure out what it actually is, and
  route it." "Intake is a person manually sorting a queue all morning." Mentions of a
  shared intake inbox, fax line, portal submissions, and a backlog at the *front* of the
  process before review even starts.
- **Mapped capability.** Atlas Skill (intake/triage workflow).
- **Build type.** Custom Atlas Skill build.
- **Honest gate.** This is a real build lift — the blocker is eliciting the payer's own
  routing taxonomy (what categories exist, what goes where). The Skill's classification is
  an analytical aid; a human still confirms routing for anything consequential. It cannot
  auto-route an appeal to denial.
- **Demo concept.** Drop three different inbound submissions in; Atlas classifies each by
  type, urgency, and destination queue, with the reasoning shown.

## Pattern 2 — Two-sided appeal review & routing

- **Pain signal.** "We have to read the member's position *and* our plan's position on the
  same appeal." "The reviewer reconstructs both sides before deciding." "Appeals come in as
  a packet and someone untangles who's arguing what." Mentions of member statements vs.
  plan rationale, prior denial letters, and the work of holding both sides in view.
- **Mapped capability.** Atlas Skill (two-sided appeal review).
- **Build type.** Custom Atlas Skill build.
- **Honest gate.** Requires encoding the plan's own appeal framework — a real build lift.
  The Skill lays out both positions side by side; it does not decide the appeal. The human
  reviewer makes the determination of record. Output quality depends on how cleanly the
  plan's positions are articulated (see Determination Library).
- **Demo concept.** Feed in an appeal packet; Atlas produces a two-column member-position
  vs. plan-position summary, each point cited to its source document.

## Pattern 3 — Messy claim-file intake & summarization

- **Pain signal.** "The claim file is a hundred-plus pages." "Provider notes, the claim
  form, lab results, prior-auth correspondence — all in one pile." "It takes a reviewer
  half a day just to understand what's in the file before they can review it." Long
  prior-auth or appeal packets; reviewers reading cover-to-cover to orient.
- **Mapped capability.** Caseboard.
- **Build type.** Out-of-the-box.
- **Honest gate.** Single-user today — this is one reviewer's board, not a shared team
  board (cross-user sharing is roadmap, not shipped). For best retrieval, consolidate the
  file into one text file rather than many PDFs. OCR on handwriting and faxed notes is
  uneven and may need per-case tuning.
- **Demo concept.** Upload the customer's own (consolidated) claim file; ask Atlas for a
  one-page reviewer brief with citations, produced in seconds instead of half a day.

## Pattern 4 — Prior-determination search & comparison

- **Pain signal.** "How did we decide this kind of case last time?" "We know we've seen
  this before but nobody can find it." "Determinations vary because reviewers can't easily
  check precedent." Reviewers wanting to compare a new submission against past decisions or
  against the existing record.
- **Mapped capability.** Caseboard (comparison across the corpus).
- **Build type.** Out-of-the-box.
- **Honest gate.** Single-user today — a reviewer can compare within their own board, but
  there is no shared, team-wide precedent board yet (roadmap, not shipped). Comparison is
  only as good as what's loaded and how it's consolidated. For a canonical "what's our
  position" answer, pair with the Determination Library.
- **Demo concept.** Load a prior claim file and a new submission into a board; ask Atlas
  how the new case compares — what's consistent, what diverges from how the earlier case
  was handled.

## Pattern 5 — Cross-document inconsistency detection

- **Pain signal.** "The provider's notes say one thing and the claim form says another."
  "The member's statement doesn't match the record." "We catch contradictions late, or we
  miss them." Reviewers manually cross-checking provider notes vs. claim form vs. member
  statement for conflicts.
- **Mapped capability.** Atlas Skill (inconsistency sweep).
- **Build type.** Custom Atlas Skill build.
- **Honest gate.** A real build lift — the Skill needs the payer's definition of what
  counts as a material inconsistency. It flags candidate conflicts as an analytical aid; a
  human verifies each flag. It does not adjudicate or auto-deny on a detected conflict.
  Detection over handwritten/faxed source is limited by uneven OCR.
- **Demo concept.** Run the Skill across a claim file; Atlas returns a list of flagged
  discrepancies (e.g., date of onset differs between note and form), each with both source
  quotes side by side.

## Pattern 6 — Record-vs-medical-necessity-criteria checklist

- **Pain signal.** "Reviewers check the record against our coverage policy criteria by
  hand." "Two reviewers reach different conclusions on the same file." "We measure medical
  necessity against written criteria but the process isn't consistent." A decision made
  against *written* criteria, with variance between reviewers and an appeals backlog
  downstream. **This is the strongest signal in the claims domain.**
- **Mapped capability.** Atlas Skill (medical-necessity checklist), backed by the
  Determination Library.
- **Build type.** Custom Atlas Skill build.
- **Honest gate.** The real build lift is eliciting and structuring the payer's coverage
  criteria — usually via the Determination Library conversion path, which needs a curator
  and quality review. The checklist output is an analytical aid; the human reviewer makes
  the coverage determination of record. State this on every call.
- **Demo concept.** Run the medical-necessity Skill on a consolidated claim file; Atlas
  returns each criterion as met / not-met / not-documented with a citation to the record,
  giving every reviewer the same structured starting point.

---

## Quick reference

| # | Pattern | Capability | Build type | Dominant gate |
|---|---------|-----------|-----------|---------------|
| 1 | Inquiry intake & triage | Atlas Skill | Custom | Build lift; aid not auto-route |
| 2 | Two-sided appeal review & routing | Atlas Skill | Custom | Build lift; aid not determination |
| 3 | Messy claim-file intake & summarization | Caseboard | Out-of-the-box | Single-user; consolidate to one text file |
| 4 | Prior-determination search & comparison | Caseboard | Out-of-the-box | Single-user; no shared precedent board |
| 5 | Cross-document inconsistency detection | Atlas Skill | Custom | Build lift; human verifies flags |
| 6 | Record-vs-criteria checklist | Atlas Skill + Determination Library | Custom | Criteria elicitation; aid not determination |
