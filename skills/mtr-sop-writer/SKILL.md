---
name: mtr-sop-writer
description: Turn a rental operator's undocumented process into an SOP a virtual assistant can follow. Use when an operator wants to delegate, document, or systemize something - turnovers, landlord onboarding, maintenance calls, lead intake, move-in day - or says they cannot take time off because only they know how to do it.
---

# SOP writer for rental operators

The interrogation method below is how we document our own operation. It is the doctrine; who the SOP is written for comes from the operator's profile.

## Adapt to this operator first

Read `CLAUDE.md` (or `mtr-profile.md`) if it exists. Two things change the output:

- **Who executes.** An operator with a VA writes for the VA. A solo operator writes for their own future self at 11 PM — same rigor, but the escalation list can say "use judgment" where a delegated SOP cannot.
- **Stage.** An operator with no live units yet documents forward: the process as they intend to run it, marked as untested, with a note to revise after the first real run. That is a plan, not an SOP, and the file should say which it is.

## The real problem

The operator is the bottleneck and they know it. What they usually do not know is that the process in their head has a pile of unwritten decisions in it, and every one is a place an assistant will guess wrong.

The value here is not tidy formatting. It is **finding the ambiguities.**

## How to run it

**Step 1. Let them ramble.** Ask them to describe the process out loud, in whatever order it arrives. Dictating from a phone in the car is ideal. Tell them explicitly not to organize it. Organizing is your job and it is the easy half.

**Step 2. Interrogate before you write.** This is the step that matters and the step everyone skips.

Read back what they said and hunt for:

- **Unstated conditions.** "Then I text the cleaner." Always? What if it is a same-day turn? What if the cleaner does not reply?
- **Invisible judgment.** "I check if the unit looks fine." What is fine? What specifically would make them not release the unit?
- **Missing thresholds.** "If it is a big repair I call someone." Big at what dollar amount?
- **Named tools they never mentioned.** Which app, which login, whose account.
- **Handoffs.** Who is told, and how do they know it is their turn?

Ask about every one. Do not write the final SOP until they are answered. If they say "I'll just handle that one myself", that is a legitimate answer, and it belongs in the escalation list rather than the steps.

**Step 3. Write it.**

```
# SOP: <process>
Owner: <who runs this>          Last updated: <date>

## Before you start
- Access needed (logins, keys, codes)
- Supplies needed

## Steps
1. <action> — <who> — <timing>
2. ...

## Stop and call me if
- <the judgment calls that were NOT delegated>

## Done means
- <the observable condition that ends this process>
```

**"Done means" is not optional.** A process without a definition of finished produces a VA who thinks they are done and an operator who thinks they are not.

**Step 4. Tell them to test it before delegating.** Run the process once against the written version themselves. Reality always disagrees with the first draft in two or three places. Fix those, then hand it over.

## What a good step looks like

Bad: "Clean the unit."
Good: "3. Confirm cleaner completed the checklist and uploaded 6 photos to the shared folder. Cleaner. Within 4 hours of checkout."

Every step names an action, a person, and a timing. If any of the three is missing, the step is not finished.

## Sizing

An SOP longer than about fifteen steps is usually two SOPs. Offer to split it. A VA follows a fifteen-step document; they skim a forty-step one, which is worse than having none because everyone now believes the process is documented.

## What not to do

- Do not invent steps the operator did not describe, even obvious ones. If something important seems missing, **ask** rather than filling the gap. An invented step in a document their VA will follow is a defect with their name on it.
- Do not soften the escalation list. The whole point is that some decisions were deliberately not delegated.
