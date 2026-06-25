# Saved Demo Prompts — Summit Ridge Health Plan (Spine)

Captured so the demo run is repeatable. All prompts run inside a **Caseboard** loaded with
the consolidated demo file (`claim-file-consolidated.md`). Product names: Veridian+ with
Atlas, Caseboard, Atlas Skills, Determination Library. Run order follows the demo plan:
(1) file brief → (2) medical-necessity checklist Skill → (3) prior-determination comparison
(described as next-phase, single-user-gated).

---

## Prompt 1 — Caseboard one-page reviewer brief (Pattern 3)

**Title:** Spine file brief — orientation in seconds

**Prompt:**
```
You are Atlas, working over the claim file loaded in this Caseboard. Produce a ONE-PAGE
reviewer orientation brief for this lumbar-fusion prior-authorization. Use only what is in
the loaded file. For every fact, cite the page marker [page N] it came from. If something a
reviewer needs is not in the file, say "not found in file" rather than inferring it.

Structure the brief as:
- Member & request: age/sex, requested procedure and level, CPT and ICD-10 codes, setting.
- Symptom onset & duration: when symptoms started and how long documented.
- Conservative-therapy history: every modality tried (medications, physical therapy,
  injections) WITH its documented duration/dates. Assemble these even if they are on
  different pages. Flag any page where the duration is illegible or OCR-degraded.
- Imaging findings: key MRI / X-ray findings and whether they correlate with the symptoms.
- Neurological findings: documented deficits and laterality.
- Open gaps: anything a reviewer would need that the record does not clearly establish.

Keep it to one page. Cite every line.
```

**Demonstrates:** Caseboard turns the "first hour is just orientation" hour into a cited
one-page brief in seconds — and proves the consolidated-file retrieval advantage by pulling
the scattered conservative-therapy evidence (pages 14, 41–44, 90) into one place. Lands Dr.
Hale's own line: "that alone would change my morning."

---

## Prompt 2 — Invoke the medical-necessity checklist Atlas Skill (Pattern 6, LEAD)

**Title:** Run the lumbar-fusion medical-necessity checklist

**Prompt:**
```
Run the Atlas Skill "summit-ridge.spine.lumbar-fusion-mn-checklist" against the claim file
loaded in this Caseboard.

Check each Summit Ridge lumbar-fusion criterion in order. For each criterion return:
  Criterion | Status (MET / NOT MET / NOT DOCUMENTED) | Citation [page N] | Rationale.
Check each criterion against Summit Ridge's Determination Library lumbar-fusion positions
(preferred/fallback). Assemble evidence that is scattered across pages before scoring a
criterion; if the supporting page is illegible or OCR-degraded, score it NOT DOCUMENTED and
say which page is degraded.

Then give a summary: met X of 7, list the not-documented criteria as the reviewer's action
list, and restate that NOT DOCUMENTED means the record does not establish the criterion, not
that it is unmet.

End with the mandatory disclaimer that this output is an analytical aid, not a coverage
determination, and a human reviewer makes the call.
```

**Demonstrates:** The lead capability — the criterion-by-criterion met / not-met /
not-documented read with citations, the same structured starting point for every reviewer.
Pause on **criterion 5 (conservative-therapy duration → NOT DOCUMENTED)**: the page-90
injection and OCR-degraded page-43 PT duration are why one reviewer found it and another
missed it. The citation lets the reviewer verify in one click. This is the direct lever
against the 17% variance.

---

## Prompt 3 — Prior-determination comparison (Pattern 4, next-phase)

**Title:** How did we decide this kind of case before?

**Prompt:**
```
A prior de-identified spine determination file has also been loaded into this Caseboard
alongside the current submission. Compare the CURRENT lumbar-fusion submission against the
PRIOR file. For each medical-necessity criterion, report:
  - whether the current case is CONSISTENT with how the prior case was handled, or DIVERGENT;
  - the specific fact or criterion that drives any divergence;
  - a citation to the page in each file.
Call out where the prior file's documented reasoning would and would not apply here. Do not
state a recommended outcome — only consistent vs. divergent against the prior file.

Note: this is a comparison against a single loaded prior file in one reviewer's board. It is
not a canonical Summit Ridge position. The canonical "what is our position on this criterion"
is the job of the Determination Library, once built.
```

**Demonstrates:** Answers Karen's "I can't point them to it / everybody's re-deriving the
wheel" — surfacing reasoning, not just outcomes. Shown as the **next-phase** capability, not
run live as the lead. State the gate: Caseboard is single-user today; there is no shared,
team-wide precedent board yet; the canonical positions live in the Determination Library
once curated.

---

## Gate lines to say out loud during the run (reminder)

- After Prompt 2: "The output of this is an analytical aid. It is not a coverage
  determination. A human reviewer still makes the call." (Legal in the room — say it twice.)
- After Prompt 1: Caseboard is single-user today — "every reviewer gets this on their own
  files," not one shared board. Consolidated file retrieves better; handwriting/fax OCR is
  uneven.
- When introducing the Skill: criteria elicitation is the real build lift; the Determination
  Library needs a curator (Dr. Hale volunteered).
