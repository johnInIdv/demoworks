# Discovery Call — Harbor Point Health Plan

**Date:** 2026-06-23
**Format:** Video call, 38 minutes
**Recording/transcription:** Auto-transcribed, lightly cleaned for readability.

**Attendees:**
- **Daniel Reyes** — Sales Engineer, Veridian Health ("Veridian rep")
- **Priya Anand** — Manager, Appeals & Grievances, Harbor Point Health Plan
- **Tom Becker** — Senior Intake Coordinator, Appeals & Grievances, Harbor Point Health Plan

**Context:** Harbor Point is a regional health plan (Medicaid managed care + a small commercial
book, roughly 180,000 covered lives). Intro came through a referral. First discovery call. No
NDA in place; nothing PHI-real was shared.

---

**Daniel Reyes:** Thanks for the time, both of you. I'd like to just understand how appeals and
grievances actually move through your shop — where things come in, who touches them first, where
it backs up. And I'll be honest with you about where we fit and where we don't. Where should we
start?

**Priya Anand:** Start at the front door, because that's where it hurts. Everything that comes
into Appeals and Grievances lands in one of about five places. We have a fax line that still does
real volume — providers love fax. We have a PO box for mailed letters, mostly from members. We
have a member portal that generates a PDF. We get phone calls that our call center transcribes
into a ticket. And we get internal referrals from the claims team when they think something's a
dispute. All five of those funnel to intake.

**Daniel Reyes:** And intake is a person.

**Priya Anand:** Intake is Tom, and one other coordinator, and a part-timer when we can get one.

**Tom Becker:** It's mostly me. And the first problem is just figuring out what each thing *is*.
Somebody mails in a two-page handwritten letter that's half "my doctor is rude" — that's a
grievance — and half "you denied my MRI and I want it covered" — that's an appeal. Those go to
completely different workflows with different clocks. One letter, two different things, and I have
to split it.

**Daniel Reyes:** So before anything gets worked, someone has to classify it. Appeal versus
grievance versus —

**Priya Anand:** Versus a benefit inquiry, versus a claim-payment dispute, versus a provider
dispute, versus something that isn't ours at all and needs to go to another department. Six or
seven buckets. And the classification isn't academic — it sets the regulatory clock. An expedited
appeal is a 72-hour clock. A standard appeal is 30 days for pre-service, 60 for post-service. A
grievance is its own timeline. If Tom miscategorizes an expedited appeal as a standard one, we can
blow a 72-hour deadline without knowing it.

**Daniel Reyes:** And what's the volume coming through that front door?

**Tom Becker:** We're getting around 2,000 pieces a month across all five channels. Not all of
them are appeals — a lot are inquiries or misrouted — but I have to read each one to know that.
The provider faxes are the worst. A provider will send a thirty- or forty-page fax, and the actual
request — what they're appealing and why — is one paragraph somewhere in the middle. I'm flipping
through forty pages to find the ask.

**Daniel Reyes:** How long does it take you to clear a day's intake?

**Tom Becker:** On a normal day, the intake queue takes me most of the morning. On a Monday, after
the weekend's fax and mail piles up, it's the whole day, and I don't get to the actual appeals
work until Tuesday. We run a one-to-two-day lag just at the front door, before clinical or the
nurse reviewers even see it.

**Priya Anand:** And that lag is the dangerous part, because the clock starts when we *receive* it,
not when Tom gets to it. So a day of intake backlog is a day off every deadline behind it.

**Daniel Reyes:** Is the misclassification actually happening, or is it a fear?

**Priya Anand:** It happens. We had two expedited appeals last quarter that sat in the standard
queue because the urgency wasn't obvious from the cover page — the "I need this now, I'm in pain"
was on page three of the member's letter. We caught them, but late. Our compliance lead now does a
spot-audit of intake categorization every week, which is more manual work layered on top of the
manual work.

**Tom Becker:** And honestly, two coordinators classify a little differently. I might call
something a grievance that Maria would call a quality-of-care complaint that routes to a different
team. We don't have a tight written rulebook for the edge cases — a lot of it is "you learn it."

**Daniel Reyes:** That's useful, and it's actually really common. Let me reflect back what I'm
hearing and then tell you honestly what maps and what doesn't. The loudest thing is the front
door: five channels, 2,000 pieces a month, and a human reading every one just to classify it —
what kind of request it is, how urgent it is, where it routes — and the classification sets a
regulatory clock you can't afford to miss. And the classification rules partly live in people's
heads, not on paper. Did I get that right?

**Priya Anand:** That's exactly it.

**Daniel Reyes:** Okay. The thing I'd build for first is the intake classification itself. We can
configure what we call an Atlas Skill — you feed it an inbound piece, whatever channel it came
from, and it proposes a classification: this is an appeal, here's why, it looks expedited because
of this language on page three, here's the recommended queue and the clock that applies. With the
reasoning shown and a citation to the part of the document that drove it.

**Tom Becker:** The "it found the urgency on page three" part is what would save us. That's the
exact failure.

**Daniel Reyes:** Right. And here's the honest part, because this is where these projects live or
die. The hard part is not the technology. The hard part is pinning down *your* routing taxonomy —
the six or seven buckets, the edge cases, the exact rule for when a mixed letter is a grievance
versus an appeal versus both. You said yourselves that some of that lives in people's heads and
two coordinators do it differently. Before the Skill is reliable, we'd have to get that taxonomy
written down. That elicitation is the real work, and it needs someone on your side who owns it.

**Priya Anand:** That's fair. Frankly, writing that rulebook down is something we should have done
anyway for the compliance audits.

**Daniel Reyes:** It usually is. And one more thing I'll say every time we talk: the Skill's
classification is an analytical aid, not an automatic action. It proposes "this looks expedited,
here's why," but a human confirms the routing for anything that matters. It does not auto-file an
appeal or start a clock by itself. You stay in control of the categorization of record.

**Priya Anand:** Good, because compliance would never accept a black box auto-routing regulated
appeals.

**Daniel Reyes:** They shouldn't, and we don't build it that way. Now, the forty-page-fax problem
— "the ask is buried in the middle" — there's a piece for that too, called Caseboard. You load the
document in and ask it across the whole thing: what is this provider actually requesting, what
service, what date, what's the basis. It gives you the one-paragraph answer with a citation,
instead of you flipping forty pages.

**Tom Becker:** That alone would give me my mornings back.

**Daniel Reyes:** It might. The honest gate on Caseboard: today it's single-user — it's one
coordinator's board, not a shared team board the whole intake unit works out of. Shared boards are
on the roadmap, not shipped. And it works best on a clean consolidated file; OCR on handwritten
member letters is uneven, so I won't promise clean extraction of someone's handwriting sight
unseen. Given how much of your inbound is handwritten member mail, that's a real caveat for you
specifically.

**Priya Anand:** A lot of the member letters are handwritten, yes. The provider faxes are typed,
mostly.

**Daniel Reyes:** Then the realistic story is: Caseboard shines on the typed provider faxes today,
and the handwritten member mail is more hit-or-miss until the OCR side improves. I'd rather you
hear that now than be surprised in week two.

**Priya Anand:** I appreciate that. So the through-line is: get our classification taxonomy
written down, build the intake Skill against it, and use the document-reading piece to pull the ask
out of the long faxes.

**Daniel Reyes:** That's how I'd sequence it. The intake classification Skill is the lead — it
attacks the missed-deadline risk directly. The fax-reading is real and valuable but I'd treat it as
supporting, and I'd be upfront that it's strongest on typed documents and single-user today.

**Priya Anand:** What would it take to see this on something that looks like our actual intake? Not
a generic demo. I've sat through plenty of those.

**Daniel Reyes:** That's exactly how we work. If you can get me a handful of de-identified inbound
pieces — a couple of provider fax appeals, a mixed member letter, a benefit inquiry, ideally one
that's genuinely expedited — and whatever written categorization guidance you do have, even if
it's thin, I'll build the classification Skill against your buckets and run it on your real intake
mix. You'd see each piece classified, with the urgency call and the reasoning and the citation. And
I'll state the "analytical aid, not an automatic action" line right there in the demo.

**Priya Anand:** I can pull a de-identified sample set. The written guidance is thin, I'll warn
you.

**Daniel Reyes:** Thin written guidance is the normal starting point. Tightening it up is part of
the work — and it's the part that helps you with the compliance audits regardless of what you buy.

**Priya Anand:** Alright. Send me the next steps and what you need from us. This was more concrete
than I expected.

**Daniel Reyes:** Will do. I'll write up what I heard and send a short preview before we meet, so
you can confirm I actually understood your intake workflow before I spend your team's time on a
demo. Thanks both.

**Priya Anand:** Thank you.

**Tom Becker:** Thanks.

*[End of call — 38:24]*
