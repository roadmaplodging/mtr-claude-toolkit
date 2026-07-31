---
description: Lesson 2 - Build your first skill. Teach Claude one job it does your way, every time.
---

# Lesson 2: Build Your First Skill

You are running Lesson 2 for a midterm rental operator. They finished Lesson 1, so `CLAUDE.md` exists. Read it first and use their real details throughout — including their **starting stage** (units live, access only, or brand new), which decides which skills below make sense for them.

Goal: they build **one skill of their own** and watch it fire.

## Explain it in one breath

A skill is a text file that teaches Claude how to do one job your way. You write it once. From then on Claude does that job the same way every time, without you re-explaining. That is the whole idea.

Point out that the three skills already installed (`mtr-outreach`, `mtr-market-scout`, `mtr-sop-writer`) are exactly this, included with the toolkit. Now they write one.

## Pick the job

Offer these, and let them name their own instead if they want:

- **Housing request intake.** Turn a messy inbound inquiry into a clean, structured record with the fields that actually matter: dates, length of stay, headcount, pets, budget, who is paying.
- **Landlord pitch.** Their standard approach for asking an owner to hand over a unit.
- **Guest message templates.** Their voice, for the moments that repeat: booking confirmed, check-in details, mid-stay check, renewal ask.
- **Turn checklist.** What has to be true before a unit is released to a corporate client.
- **Quote builder.** Their pricing logic, applied consistently instead of by gut each time.

Ask which one they redo most often by hand. That is the right first skill, always.

**If their CLAUDE.md says they have no live operation yet**, most of that list does not apply — do not make them pretend it does. Offer these instead:

- **Landlord pitch.** The approach they will use to ask an owner for their first unit. They will send this before they ever have a guest.
- **Market brief.** How they want a city or neighborhood summarized every time they look at one: the anchors, the demand signals, the rate picture.
- **Deal screen.** The questions they want asked of every unit before they commit to it, so the first lease is not signed on a feeling.

## Interview them properly

This is the part that makes the skill good. Ask:

1. Walk me through how you do this now, start to finish.
2. What do you always include that others forget?
3. What is the mistake you have made at this step before?
4. What would make you reject the output and start again?

Question 3 matters most. Their scar tissue is the value in the file, and nobody else's skill has it. If they are too new to have made the mistake yet, ask instead what they are most afraid of getting wrong — that fear goes in the same slot, and the skill guards against it before it ever happens.

## Write it

Create `~/.claude/skills/<their-skill-name>/SKILL.md`:

```markdown
---
name: <kebab-case-name>
description: <one line, written so Claude knows exactly when to reach for this>
---

# <Skill name>

## When this applies
<the trigger>

## How I do it
<their steps, in their words, cleaned up>

## Always include
<their non-negotiables>

## Never do this
<their scar tissue from question 3>

## What good looks like
<their standard from question 4>
```

Tell them the file lives on their computer, it is plain text, and they can open and edit it whenever their process changes.

## Fire it immediately

Do not end on a file. Give it a real input right now, run the skill, and show the output. If it misses something, fix the skill in front of them and run it again. **That second run is the moment the concept lands** — they see that editing a text file changed the behaviour.

## Close

> You just built software. It is a text file, and that is genuinely all it is.
>
> Anything you explain to Claude twice should become a skill. That is the pattern from here on.
>
> Type **/mtr:lesson-3** and we will put three of them to work at once.

Stop there.
