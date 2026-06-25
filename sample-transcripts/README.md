# Sample transcripts — for live demos

These are fresh, unprocessed transcripts you can drop into Pitchcraft to demonstrate the
system generating a tailored demo from scratch. Unlike the worked example in
`examples/summit-ridge-health-plan/` (which is already run end-to-end), these have **no
pipeline outputs yet** — so a viewer sees the work happen live.

## Available samples

- **`harbor-point-appeals-intake.md`** — A regional Medicaid managed-care plan whose loudest
  pain is the *front door*: appeals, grievances, and inquiries arriving through five channels,
  manually classified by one coordinator, with regulatory clocks riding on the classification.
  Designed to map to a **different lead pattern than Summit Ridge** — this one leads to
  *Pattern 1 (public-facing inquiry intake & triage)*, with Caseboard (Pattern 3) supporting.
  Good for showing that Pitchcraft exercises judgment rather than repeating one answer.

## How to run it in a video (≈ the on-camera flow)

1. **Show the brief.** Open `brief.md` — the real problem Pitchcraft solves.
2. **Show the folder.** Point out `identity.md`, `rules.md`, and especially
   `reference/solution-patterns.md` (the leverage). One line: "the method is general; the
   knowledge in `reference/` is what makes it product-specific."
3. **Drop in the transcript.** Copy `sample-transcripts/harbor-point-appeals-intake.md` into a
   new working folder's input, e.g.:
   ```
   mkdir -p examples/harbor-point/00_input
   cp sample-transcripts/harbor-point-appeals-intake.md examples/harbor-point/00_input/discovery-call-transcript.md
   ```
4. **Run the pipeline.** In your AI assistant, with this folder loaded, paste a prompt like:

   > Load this Pitchcraft folder. Read `identity.md` and `rules.md`. Then run the pipeline in
   > `rules.md` on the transcript in `examples/harbor-point/00_input/`, using the knowledge in
   > `reference/`. Produce stages 01–04 as separate files, generate the stage-05 assets, and
   > build the stage-06 HTML preview. Stop at each stage so I can review.

5. **Show the payoff.** Open the generated `06_preview.html` in a browser — the tailored
   one-page memo, on a customer the system had never seen before.

## Note

All names, plans, and records in these transcripts are fictitious / synthetic. The demoed
product (Veridian+ with Atlas) is fictitious.
