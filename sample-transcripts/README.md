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

Pitchcraft is set up so that **pasting a transcript is the only action needed** — the root
`CLAUDE.md` tells Claude Code to run the pipeline automatically when it receives a transcript.

1. **Show the brief.** Open `brief.md` — the real problem Pitchcraft solves.
2. **Show the folder.** Point out `identity.md`, `rules.md`, and especially
   `reference/solution-patterns.md` (the leverage). One line: "the method is general; the
   knowledge in `reference/` is what makes it product-specific."
3. **Start Claude Code in this folder** so it auto-reads `CLAUDE.md`:
   ```
   cd /path/to/pitchcraft
   claude
   ```
4. **Paste the transcript.** Open `sample-transcripts/harbor-point-appeals-intake.md`, copy its
   whole contents, and paste it into Claude Code. That's it — Claude recognizes a transcript,
   creates `examples/harbor-point/`, and runs the six stages, announcing each one. (If you'd
   rather pause between stages, add "stop at each stage" to your paste.)
5. **Show the payoff.** Open the generated `examples/harbor-point/06_preview/preview.html` in a
   browser — the tailored one-page memo, on a customer the system had never seen before.

> Tip: the strongest beat is stopping on **stage 03 (opportunity mapping)** — that's where you
> can show Pitchcraft reasoning to *Pattern 1 (intake & triage)*, a different lead than Summit
> Ridge's Pattern 6.

## Note

All names, plans, and records in these transcripts are fictitious / synthetic. The demoed
product (Veridian+ with Atlas) is fictitious.
