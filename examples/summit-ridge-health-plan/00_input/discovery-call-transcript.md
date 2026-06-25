# Discovery Call — Summit Ridge Health Plan

**Date:** 2026-06-17
**Format:** Video call, 42 minutes
**Recording/transcription:** Auto-transcribed, lightly cleaned for readability.

**Attendees:**
- **Daniel Reyes** — Sales Engineer, Veridian Health ("Veridian rep")
- **Karen Whitfield** — Director of Utilization Review, Summit Ridge Health Plan
- **Dr. Elias Hale** — Senior Clinical Reviewer (Medical Director, UR), Summit Ridge Health Plan

**Context:** Summit Ridge is a regional health plan (commercial + Medicare Advantage,
roughly 240,000 covered lives across three states). Intro came through a webinar Karen
attended. This is a first discovery call. No NDA in place; nothing PHI-real was shared.

---

**Daniel Reyes:** Thanks both of you for making the time. I know mid-month is brutal on a
UR team, so I'll keep us honest on the clock. I'd love to just understand how your prior-auth
and appeals work actually runs day to day, where the pinch points are, and then I can tell
you honestly whether we're a fit or not. I'd rather tell you we're not a fit than waste your
quarter. Sound okay?

**Karen Whitfield:** That's a refreshing opener. Yes. Where do you want me to start?

**Daniel Reyes:** Start wherever the pain is loudest. What keeps you up?

**Karen Whitfield:** Honestly? Volume and the backlog it creates. We run prior authorization
for the commercial and MA lines. We're seeing somewhere around 3,200 prior-auth requests a
month right now, and that's up maybe fifteen percent year over year. The team is twelve
clinical reviewers plus Elias and one other medical director who take the escalations and
the complex cases.

**Daniel Reyes:** Twelve reviewers for 3,200 a month. So a couple hundred per reviewer per
month.

**Karen Whitfield:** Roughly. But the average doesn't tell you the story, because the files
aren't equal. A straightforward imaging auth, fine. But the ones that hurt are the inpatient
and the specialty pharmacy and the spinal surgery cases, where the packet that comes in from
the provider is — Elias, what's a typical one?

**Dr. Elias Hale:** For a spinal fusion or a complex inpatient stay, the clinical packet is
routinely a hundred to a hundred and fifty pages. Provider progress notes, imaging reports,
the conservative-therapy history, PT notes, the H&P, sometimes a prior denial if it's a
resubmission. And it's not organized. It comes in as one big fax or a PDF dump, and the
clinically relevant facts are scattered across it.

**Daniel Reyes:** So before you can even review it, you have to read it just to know what's
in it.

**Dr. Elias Hale:** Exactly. I tell new reviewers the first hour on a big file is just
orientation. You're hunting for: when did the symptoms start, what conservative treatment did
they try and for how long, what did imaging actually show. That's the spine criteria right
there — but it's buried in a hundred and forty pages.

**Daniel Reyes:** How long does a complex file take a reviewer end to end?

**Dr. Elias Hale:** A genuinely complex one? Three to four hours. Some of that is reading,
some is checking it against our medical-necessity criteria, some is documenting the rationale.

**Karen Whitfield:** And we have written criteria for all of this. That's the part that
frustrates me. We license the standard criteria sets, and we've layered our own coverage
policy on top — Summit Ridge has its own medical policy documents for the high-volume
categories. So in theory it's a checklist. The record either meets the criteria or it
doesn't.

**Daniel Reyes:** In theory.

**Karen Whitfield:** In theory. In practice, two reviewers will read the same file and reach
two different determinations. We actually measured this last quarter because legal was nervous
about it. We pulled a sample of complex cases and had a second reviewer blind-review them, and
the determinations disagreed on — what was it, Elias — about one in six?

**Dr. Elias Hale:** Seventeen percent. One in six complex cases, two qualified reviewers
looking at the same record and the same criteria, came to different answers. Sometimes it's a
judgment call, fine. But a lot of it was just — one reviewer found the conservative-therapy
documentation on page ninety and the other one missed it. It wasn't a disagreement about
medicine. It was a disagreement about what was in the file.

**Daniel Reyes:** That's a striking number. And I imagine that variance shows up downstream.

**Karen Whitfield:** It shows up in appeals. That's the backlog that's actually killing us.
When a determination feels arbitrary to a provider, they appeal. We're carrying — as of last
week — about a six-week appeals backlog. We have roughly 180 open appeals in the queue and
we're clearing them slower than they come in. Some of those are statutory clocks, so the
backlog isn't just annoying, it's a compliance exposure.

**Daniel Reyes:** Six weeks. And when an appeal lands, what does the reviewer do?

**Dr. Elias Hale:** They pull the original file, the determination rationale, the provider's
appeal letter, and any new records the provider sent with the appeal. And then they
essentially re-do the medical-necessity review, except now they're also trying to reconstruct
what the first reviewer was thinking. Half the appeals work is archaeology.

**Karen Whitfield:** And here's the question I can never answer fast. A reviewer comes to me
and says, "How did we decide this kind of case before? We've definitely seen this fact
pattern." And I know we have. But I can't point them to it. The determinations live in the
claims system as outcomes, not as reasoning you can search. So everybody's re-deriving the
wheel, and that's part of why two people land in different places.

**Daniel Reyes:** Let me make sure I'm hearing the shape of this right. A complex file is a
hundred-plus pages, unorganized. A reviewer spends the first hour just orienting. They check
the record against your written medical-necessity criteria — which you have, in policy
documents. Two reviewers reach different determinations about one in six times, and a lot of
that is "what's actually in the file," not medicine. That variance drives appeals. You've got
a six-week, ~180-case appeals backlog with statutory clocks on some of it. And nobody can
quickly answer "how did we decide this before." Did I get that right?

**Karen Whitfield:** That's depressingly accurate, yes.

**Dr. Elias Hale:** I'd add one thing. The newer reviewers are slower and more variable than
the senior ones, and onboarding takes months precisely because so much of the skill is
"knowing where to look and what our policy actually requires." If I could give a new reviewer
the same structured starting point a senior reviewer builds in their head, that alone would
help.

**Daniel Reyes:** Okay. I want to be careful here, because I could oversell you and I'd rather
not. Let me tell you what I think maps to what you've described, and the honest limits on
each. The single biggest thing I heard is: you have written criteria, and you're checking a
hundred-page record against those criteria by hand, and the result varies by reviewer. That's
the one I'd build for first. We can configure what we call an Atlas Skill — a medical-necessity
checklist that takes a claim file and goes criterion by criterion: met, not met, or not
documented, each one with a citation back to the page in the record. So every reviewer starts
from the same structured read of the same file.

**Karen Whitfield:** That's exactly the consistency problem. Every reviewer starting from the
same read.

**Daniel Reyes:** Right. And here's the honest part, because this is where these projects
actually live or die. The technology isn't the hard part. The hard part is getting your
criteria into a structured form the Skill can check against. You said you have policy
documents — those are long, they hedge, sometimes they contradict each other. Turning the
spine policy, say, into clean "here's the criterion, here's what meets it, here's the
fallback" — that's real work, and it needs someone on your side who owns it. We have a piece
for that, the Determination Library, but I won't pretend it populates itself. Someone has to
curate it.

**Karen Whitfield:** That's fair. We'd probably put that on Elias or one of the medical
directors anyway, because they're the ones who know what the policy actually means.

**Dr. Elias Hale:** I'd want to own that, honestly. If we're encoding how we decide, I don't
want that done by someone who isn't clinical.

**Daniel Reyes:** That's the right instinct, and frankly it's a green flag for me. One more
thing I have to say out loud, and I'll say it every time we talk: the output of this is an
analytical aid. It is not a coverage determination. The checklist gives your reviewer a
structured, cited starting point — "criterion three looks not-documented, here's why" — but a
human reviewer still makes the call. In a regulated setting it has to be that way, and we
build it that way on purpose. Nothing we produce becomes the determination of record.

**Karen Whitfield:** Good. Legal will want to hear exactly that sentence, so say it again on
the next call with them in the room.

**Daniel Reyes:** I will, gladly. Now, two more things you mentioned that I want to name but
not over-promise on. First, the "it takes an hour just to understand what's in the file"
problem. We have a piece called Caseboard — you load the claim file in and you can ask it
questions across the whole thing, get a one-page reviewer brief with citations, in seconds
instead of an hour. That's available today, more or less out of the box.

**Dr. Elias Hale:** That alone would change my morning.

**Daniel Reyes:** It would. The honest gate on it: today a Caseboard is single-user. It's one
reviewer's board, not a shared team board you all work out of. Shared boards are on the
roadmap but they're not shipped, so I'm not going to sell you a shared queue that doesn't
exist yet. The realistic story is "every reviewer gets this on their own files," not "one
board for the whole team." And one practical note — it works best if the file is consolidated
into a single clean text file rather than the raw fax dump, because the retrieval is a lot
better. And OCR on handwritten progress notes is uneven, so I'd never promise you clean
extraction of a doctor's handwriting sight unseen.

**Karen Whitfield:** Most of our packets are typed or fax-of-typed, but there's handwriting
in the progress notes sometimes. Good to know.

**Daniel Reyes:** Second thing — the "how did we decide this before" question. Same Caseboard
capability can compare a new submission against a prior file and tell you what's consistent
and what diverges. So you could pull up how a similar case was handled. Same single-user gate
applies, and there's no shared, team-wide precedent board yet — that's the honest limit. For a
canonical "what's our position on this criterion," that's really what the Determination Library
is for, once it's built.

**Karen Whitfield:** So the through-line is: get our criteria structured, run the checklist
against the file, and the precedent and the file-summary stuff rides on top of that.

**Daniel Reyes:** That's how I'd sequence it, yes. The checklist against your written criteria
is the lead. The file-summary and the precedent-comparison are real and valuable but I'd treat
them as supporting, and I'd be upfront that the precedent piece is single-user today.

**Karen Whitfield:** Okay. What would it take for you to show us this on something that looks
like our actual work? Not a generic slide deck. I've seen forty generic slide decks.

**Daniel Reyes:** That's exactly what I'd want to do, and it's how we work. If you can get me
one de-identified complex file — a spine case would be perfect given how much you've talked
about it — and your written spine medical-necessity criteria, even in their messy policy-doc
form, I'll build the checklist Skill against your criteria and run it on your file. You'd see,
on your own kind of case, the criterion-by-criterion read with citations. And I'll state the
"analytical aid, not a determination" line right there in the demo.

**Dr. Elias Hale:** I can get you a de-identified spine packet and the policy. The policy is
ugly, I'll warn you.

**Daniel Reyes:** Ugly policy is the normal starting point. That's the work. If it were clean,
you wouldn't have a variance problem.

**Karen Whitfield:** Alright. Daniel, this was more useful than I expected. Send me the next
steps and what you need from us, and let's get legal on the demo call.

**Daniel Reyes:** Will do. I'll write up what I heard and send a short preview before we meet,
so you can sanity-check that I actually understood your workflow before I burn your team's time
on a demo. Thanks both.

**Karen Whitfield:** Thank you.

**Dr. Elias Hale:** Thanks.

*[End of call — 42:11]*
