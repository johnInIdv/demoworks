# Atlas Skill — Lumbar Fusion Medical-Necessity Checklist (Summit Ridge)

**Skill type:** Atlas Skill (payer-configured workflow)
**Skill ID:** `summit-ridge.spine.lumbar-fusion-mn-checklist`
**Version:** v0.1 (demo build — spine category, phase 1)
**Owner / curator:** Dr. Elias Hale, Medical Director, UR (criteria curator)
**Checks against:** Summit Ridge Determination Library — *Lumbar Fusion* positions
(preferred / fallback per criterion), derived from Summit Ridge's written spine
medical-necessity policy + licensed standard criteria set.

---

## Purpose

Given a single lumbar-fusion prior-authorization claim file, walk Summit Ridge's written
spine medical-necessity criteria **one criterion at a time** and return, for each:
**met / not met / not documented**, with a **citation to the page in the record** and a
short rationale. The goal is a consistent, structured starting point so two reviewers begin
from the same read of the same file — directly targeting the 17% inter-reviewer
determination variance, much of which Summit Ridge traced to "what was in the file," not
medicine.

This Skill does **not** decide the case. See the disclaimer at the bottom.

---

## Expected document inputs

Run against a **consolidated** claim file in a Caseboard (one clean text file retrieves far
better than a raw fax/PDF dump). The Skill expects to find, somewhere in the file:

- Prior-authorization request form (requested CPT/ICD-10, level, setting)
- History & Physical (H&P)
- Provider progress notes (typed and/or handwritten — OCR may be uneven)
- Imaging reports (MRI lumbar spine; flexion/extension X-ray if instability is claimed)
- Conservative-therapy history: medications, physical-therapy notes, injections — **with
  durations**
- Letter of medical necessity (if present)
- Coding / administrative summary

The Skill assembles evidence that may be **scattered across the packet** (e.g., medications
on one page, PT in the middle, injection near the back) before scoring a criterion. Buried
evidence that a human skim would miss is exactly what it is built to surface.

---

## Criteria checked (lumbar fusion)

Derived from a typical lumbar-fusion policy; each maps to a Determination Library position
with a preferred and a fallback. Scored independently, in order.

1. **Symptom duration.** Symptomatic low back / radicular pain documented for at least the
   policy-minimum duration (e.g., ≥ 6 months) attributable to the surgical level.
2. **Objective neurological findings.** Documented neurological deficit correlating to the
   level (e.g., motor weakness, reflex change, dermatomal sensory loss, positive nerve-root
   tension sign).
3. **Imaging–symptom correlation.** MRI (or CT) findings at the operative level that
   correlate with the documented symptoms and exam (e.g., stenosis / disc pathology /
   nerve-root impingement on the symptomatic side).
4. **Documented instability or appropriate fusion indication.** An accepted indication for
   *fusion specifically* (vs. decompression alone) — e.g., spondylolisthesis with
   demonstrated instability on flexion/extension imaging, or other policy-accepted fusion
   indication.
5. **Completion of conservative therapy for the minimum duration.** Documented failure of
   an adequate trial of conservative care for the policy-minimum **continuous** duration
   (e.g., ≥ 6 weeks of structured therapy such as PT, plus medications and/or injection),
   with durations stated. *This is the criterion most often scored "not documented" when
   evidence is scattered or duration is buried.*
6. **Absence of contraindications.** No documented active contraindication (e.g., **active**
   tobacco use, uncontrolled infection, untreated psychiatric or substance contraindication
   per policy). Former smoker who has quit is not a contraindication unless policy states
   otherwise.
7. **Surgical scope appropriateness.** Requested level(s) and setting match the documented
   pathology (e.g., single-level request matches single-level imaging findings; inpatient
   setting justified).

> **Curator note:** items 1, 4, and 5 carry the most Summit Ridge policy nuance (the
> "ugly" parts — hedged language, minimum-duration thresholds, what counts as
> "instability"). These are the highest-disagreement criteria and the ones whose
> preferred/fallback positions Dr. Hale must arbitrate during Determination Library
> conversion.

---

## Output format

For **each** criterion, the Skill returns a row:

```
Criterion: <name>
Status: MET | NOT MET | NOT DOCUMENTED
Citation: [page N] (and additional pages if evidence is assembled from several)
Rationale: <one to three sentences: what in the record drove the status,
            and against which Determination Library position it was checked>
```

Followed by a short **summary block**:

```
Criteria met: X of 7
Criteria not met: <list>
Criteria not documented: <list>     <-- the reviewer's action list
Note: NOT DOCUMENTED means the record does not, on the assembled evidence, establish the
      criterion — it is not a determination that the criterion is unmet. The reviewer
      verifies via the citation.
```

### Status definitions (state these in the demo)
- **MET** — the record affirmatively establishes the criterion; citation points to the page(s).
- **NOT MET** — the record affirmatively shows the criterion is *not* satisfied.
- **NOT DOCUMENTED** — the record does not contain sufficient evidence to establish the
  criterion (it may exist but be absent, illegible, or unlocatable). The one-click citation
  lets the reviewer confirm or refute fast — this is where the buried page-90 injection /
  page-43 OCR-degraded PT duration lives in the demo file.

---

## Expected result on the demo claim file (for run consistency)

| # | Criterion | Expected status | Citation |
|---|---|---|---|
| 1 | Symptom duration | MET | [page 4] H&P (~11 months) |
| 2 | Objective neurological findings | MET | [pages 7–8] exam; [page 64] |
| 3 | Imaging–symptom correlation | MET | [pages 23–24] MRI |
| 4 | Documented instability / fusion indication | MET | [page 28] flex/ext X-ray; [page 102] |
| 5 | Conservative therapy for minimum duration | **NOT DOCUMENTED** | [page 14], [pages 41–44 — OCR flag p.43], [page 90] scattered/illegible |
| 6 | Absence of contraindications | MET | [page 6] former smoker, quit 7 yrs |
| 7 | Surgical scope appropriateness | MET | [page 1] vs [pages 23–24] single-level |

The deliberate teaching moment is **criterion 5**: the conservative-therapy evidence exists
(medications p.14, PT pp.41–44, injection p.90) but is scattered and partly OCR-degraded
(p.43). The Skill surfaces it as NOT DOCUMENTED with the citations, and the reviewer
verifies in one click — turning a silent miss into a flagged, checkable item.

---

## Mandatory disclaimer (must appear with every run output)

> **This output is an analytical aid, not a coverage determination.** It is a structured,
> cited read of the record against Summit Ridge's medical-necessity criteria. It does not
> approve, deny, or adjudicate the request. A qualified human reviewer makes the
> determination. Nothing this Skill produces becomes the determination of record.

---

## Honest gates (for the SE / state in the demo)

- **Criteria elicitation is the real build lift.** This Skill is only as good as the
  Determination Library positions behind it. Converting Summit Ridge's "ugly," hedging,
  occasionally self-contradictory spine policy into clean preferred/fallback positions is
  the actual work — and needs a named clinical curator (Dr. Hale).
- **Determination Library needs a curator/governance owner.** Positions drift as policy
  changes; the library does not populate or maintain itself.
- **Runs in a single-user Caseboard today.** "Every reviewer gets this on their own file,"
  not one shared team board (shared boards are roadmap, not shipped).
- **Consolidation + OCR.** Built and tuned on a consolidated text file; handwritten/faxed
  pages (e.g., p.43, p.58 in the demo file) extract unevenly — no clean-handwriting promise
  sight unseen.
