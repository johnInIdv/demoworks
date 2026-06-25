# Product Capabilities — Veridian+ with Atlas

**Veridian+ with Atlas** is a claims-intelligence platform for healthcare claims and
utilization-review (UR) teams. **Veridian+** is the platform; **Atlas** is its
retrieval-augmented (RAG) assistant — it reads the documents the team actually works
with (claim files, prior-authorization packets, appeal submissions, coverage policies)
and answers questions grounded in those documents rather than from a general model's
memory. The job to be done is concrete: a reviewer is staring at a hundred-page claim
file and a coverage policy, and has to decide whether the record supports medical
necessity. Atlas reads both, surfaces what matters, and shows its work against the
source. Three building blocks make this real: **Caseboard** (the document corpus you
ask across), **Atlas Skills** (reusable, payer-configured workflows), and the
**Determination Library** (a criteria-level library of coverage positions).

This reference is written sales-engineer-to-sales-engineer. Where a capability has a
deployment reality that will bite on a real account, it is stated plainly and labeled
**verified** (we have shipped and seen it work) or **assumed** (reasonable but not yet
proven on this customer's data). Surface the gates *before* the customer hits them. The
honest version of this platform wins more deals than the marketing version.

---

## Caseboard — the claim-file corpus

**What it is.** Caseboard is the container you load a claim file into and then ask
across. You upload a claim file (the record, the provider notes, the prior-auth packet,
the appeal submission), and Atlas can answer questions over the whole thing, summarize
it, and compare a new submission against what's already in the board.

**What it does operationally.**

- Ingests a multi-document claim file and makes it queryable in natural language
  ("What's the documented date of onset?", "Has conservative therapy been tried, and for
  how long?").
- Summarizes long prior-auth and appeal packets into a reviewer-readable brief with
  citations back to the source page.
- Compares a new submission against the existing record to flag what's new, what's
  missing, and what conflicts.
- Holds the working corpus for a single case so a reviewer isn't re-uploading documents
  across a session.

**Deployment realities (honest framing).**

- **Single-user today (verified).** A Caseboard belongs to the reviewer who created it.
  Cross-user sharing — one board the whole UR team works out of — is on the roadmap, not
  shipped. This is the dominant gate for any "across the team" or "our whole queue" ask.
  Do not imply shared boards exist. The honest demo is one reviewer's workflow, made
  dramatically faster; the team story is "every reviewer gets this," not "one shared
  board."
- **Consolidate the claim file into one text file (verified).** Retrieval is materially
  better when a claim file is consolidated into a single text file rather than uploaded
  as many separate PDFs. Page-image PDFs retrieve worse than clean text. For demos and
  early production, plan to consolidate.
- **OCR for handwriting and faxed notes is uneven (verified).** Typed records are
  reliable; handwritten progress notes and degraded fax pages are not. Expect to tune per
  case, and never promise clean extraction of handwriting sight-unseen.

**Solution patterns it serves.** Pattern 3 (messy claim-file intake & summarization) and
Pattern 4 (prior-determination search & comparison). Both are out-of-the-box, both carry
the single-user gate.

---

## Atlas Skills — payer-configured workflows

**What it is.** An Atlas Skill is a reusable, configured workflow that encodes *this
payer's* way of doing a recurring task — a medical-necessity checklist, an appeal-intake
triage, an inconsistency sweep. Instead of a reviewer free-prompting every time, the
Skill runs the agreed steps against the agreed criteria and returns a structured result.

**What it does operationally.**

- Runs a defined sequence against a claim file (e.g., extract the criteria, check each
  one against the record, report met / not-met / not-documented with citations).
- Encodes the payer's own framework — their coverage criteria, their routing rules, their
  required fields — so output matches house standards rather than a generic template.
- Produces a consistent, structured artifact every reviewer can read the same way,
  which is the real lever against determination variance between reviewers.
- Is reusable across cases of the same type once built, so the build cost amortizes.

**Deployment realities (honest framing).**

- **A Skill is a real build lift (verified).** This is not a toggle. The actual blocker
  is almost never the technology — it's *eliciting the payer's criteria and framework* in
  enough detail to encode them. If the customer can't hand you their written criteria, the
  first deliverable is helping them articulate it. Scope the Skill build as real work and
  say so.
- **Output is an analytical aid, not a coverage determination (verified — state on every
  call).** In a regulated, adjudicative setting the human reviewer makes the call. The
  Skill's output supports the decision; it cannot *be* the determination of record. Say
  this on every customer call, put it in the demo, and never let a slide imply
  auto-adjudication. This framing protects the customer and is itself a trust signal.
- **Quality depends on criteria quality (assumed-to-verified per account).** A Skill is
  only as good as the framework it encodes. Vague or contradictory source criteria produce
  vague output. Part of the build is pushing the customer to firm up their own rules.

**Solution patterns it serves.** Pattern 1 (inquiry intake & triage), Pattern 2
(two-sided appeal review & routing), Pattern 5 (cross-document inconsistency detection),
and Pattern 6 (record-vs-medical-necessity-criteria checklist). All custom builds.

---

## Determination Library — coverage positions

**What it is.** The Determination Library is a criteria-level library of medical-necessity
and coverage positions, each with a **preferred** determination and a **fallback**. It is
the institutional memory of how the plan has decided a given kind of case — captured at
the criterion level so it can be applied consistently and pointed to when a reviewer or
an appeal asks "what's our position here?"

**What it does operationally.**

- Stores coverage positions as structured entries: the criterion, the preferred
  determination, the fallback determination, and the source policy it derives from.
- Gives reviewers a consistent reference so the same fact pattern doesn't get decided two
  different ways by two different people.
- Feeds Atlas Skills with the payer's own positions, so a medical-necessity checklist
  checks against *the plan's* library rather than a generic standard.
- Supports appeal defensibility — when a determination is challenged, the position and its
  policy source are already articulated.

**Deployment realities (honest framing).**

- **Entry path is conversion of existing policy documents (verified).** You don't start
  from a blank library. You start by converting the customer's existing coverage and
  policy documents into structured preferred/fallback positions. The customer already owns
  the raw material; the work is structuring it.
- **Conversion quality is the real deployment reality (verified).** The library is only as
  trustworthy as the conversion. Policy documents are long, hedged, and occasionally
  self-contradictory; turning them into clean preferred/fallback positions is careful work
  and the place where the project actually lives or dies. Budget for review of the
  converted positions, not just the conversion run.
- **It implies a curator / governance owner (verified).** A library that nobody owns
  drifts out of date as policies change. Successful deployments name a curator or
  governance owner responsible for keeping positions current. Raise this in scoping — it
  is an organizational commitment, not just a software setting.

**Solution patterns it serves.** Underpins Pattern 6 (it supplies the criteria the
checklist measures against) and strengthens Pattern 4 (prior-determination comparison) by
giving comparisons a canonical position to anchor on.
