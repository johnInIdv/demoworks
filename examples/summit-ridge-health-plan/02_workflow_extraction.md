# Stage 02 — Workflow Profile: Summit Ridge Health Plan

**Transcript:** `00_input/discovery-call-transcript.md`
**Profiled by:** Daniel Reyes (SE)
**Date:** 2026-06-18

This is a descriptive profile, not a recommendation. It captures the utilization-review
workflow as Karen Whitfield and Dr. Elias Hale described it, so stage 03 can map it.

---

## Customer snapshot

- **Organization:** Summit Ridge Health Plan — regional payer, commercial + Medicare Advantage,
  ~240,000 covered lives across three states.
- **Team in scope:** Utilization Review (prior authorization + appeals). ~3,200 prior-auth
  requests/month, up ~15% YoY. Twelve clinical reviewers plus two medical directors.
- **Roles named:**
  - **Karen Whitfield — Director of Utilization Review.** Owns the team and the backlog; can't
    quickly answer "how did we decide this kind of case before?"
  - **Dr. Elias Hale — Senior Clinical Reviewer / Medical Director (UR).** Takes escalations
    and complex cases; trains new reviewers; likely owner of criteria/Determination-Library
    curation ("I'd want to own that, honestly").
  - **Clinical reviewers (12).** Perform the per-file medical-necessity review against criteria.

---

## The workflow, step by step

1. **Intake of the clinical packet.** Provider submits a prior-auth request with a clinical
   packet — *"one big fax or a PDF dump"* — for complex categories (inpatient, specialty
   pharmacy, spinal surgery). Complex packets run *"a hundred to a hundred and fifty pages."*
2. **Orientation / read-to-understand.** Before reviewing, the reviewer reads the file just to
   find the clinically relevant facts, which are *"scattered across it."* *"The first hour on a
   big file is just orientation."* The reviewer hunts for onset date, conservative-therapy
   history and duration, and what imaging showed.
3. **Medical-necessity review against written criteria.** The reviewer checks the record against
   Summit Ridge's medical-necessity criteria — licensed standard criteria sets plus Summit
   Ridge's own layered medical policy documents. *"In theory it's a checklist. The record either
   meets the criteria or it doesn't."*
4. **Determination + rationale.** The reviewer reaches a determination and documents the
   rationale. Complex files run *"three to four hours"* end to end (reading + checking + writing).
5. **Appeal handling (downstream).** When a provider appeals, a reviewer pulls the original
   file, the determination rationale, the appeal letter, and any new records, and re-does the
   medical-necessity review while reconstructing the first reviewer's reasoning. *"Half the
   appeals work is archaeology."*

---

## Documents in play

| Document type | Who produces it | Who consumes it | Format / condition |
|---|---|---|---|
| Clinical packet (complex prior-auth) | Provider | Clinical reviewer | 100–150 pp; fax/PDF dump; unorganized; mostly typed/fax-of-typed, some handwritten progress notes |
| Provider progress notes, H&P, imaging reports, PT/conservative-therapy notes | Provider | Clinical reviewer | Embedded within the packet; facts scattered |
| Summit Ridge medical-necessity criteria | Summit Ridge (licensed sets + own policy) | Clinical reviewer | Written policy docs; *"long, they hedge, sometimes they contradict each other"* |
| Determination + rationale | Clinical reviewer | Appeals reviewer; claims system | Stored in claims system as outcomes, *"not as reasoning you can search"* |
| Appeal packet | Provider | Appeals reviewer | Appeal letter + original file + new records |

---

## Where the pain is

- **Pain:** Long, unorganized packets force a read-to-orient before review can start —
  *"the first hour on a big file is just orientation"* — **cost:** ~1 hour/complex file just to
  understand it; complex files 3–4 hrs end to end.
- **Pain:** Manual record-vs-written-criteria check produces inconsistent determinations —
  *"two reviewers will read the same file and reach two different determinations"* — **cost:**
  measured 17% disagreement rate on complex cases ("one in six"), much of it
  document-comprehension (*"a disagreement about what was in the file"*), not medicine.
- **Pain:** Variance drives an appeals backlog with compliance exposure — *"about a six-week
  appeals backlog... roughly 180 open appeals... some of those are statutory clocks"* —
  **cost:** ~6 weeks / ~180 open appeals, clearing slower than they arrive.
- **Pain:** No searchable institutional memory of past reasoning — *"How did we decide this
  kind of case before?... I can't point them to it... everybody's re-deriving the wheel"* —
  **cost:** repeated re-derivation; contributes to variance.
- **Pain:** Onboarding is slow because the skill is "where to look + what policy requires" —
  *"onboarding takes months"* — **cost:** months to ramp; new reviewers slower and more variable.

---

## Decisions made against written criteria

Yes — this is the core of the workflow and the strongest signal. Reviewers measure the clinical
record against Summit Ridge's **written medical-necessity criteria** for high-volume categories
(spine/spinal fusion called out specifically). The criteria source is two-part: licensed
standard criteria sets plus Summit Ridge's own layered **medical policy documents**. Karen frames
it explicitly as a checklist that should be deterministic — *"the record either meets the
criteria or it doesn't"* — but in practice the criteria are *"long, they hedge, sometimes they
contradict each other,"* and the check is done by hand against a buried record, producing the
measured 17% variance. Written criteria + a record-vs-criteria check + measured variance is the
exact fingerprint that points at an encodeable workflow.

---

## Pain-signal shortlist (hand-off to stage 03)

- [ ] *"In theory it's a checklist. The record either meets the criteria or it doesn't."* +
  *"Seventeen percent. One in six complex cases... came to different answers."* (criteria check +
  variance)
- [ ] *"the first hour on a big file is just orientation"* / *"a hundred to a hundred and fifty
  pages... one big fax or a PDF dump"* (messy long-file intake)
- [ ] *"How did we decide this kind of case before?... I can't point them to it."*
  (prior-determination search / precedent)
