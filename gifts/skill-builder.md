# The Skill Builder

A skill is a text file that teaches Claude to do one job your way, every time, without you re-explaining. This is how you write one.

Gift from Lesson 2 of the MTR Operator Toolkit.

---

## When something should become a skill

One test: **you have explained it to Claude twice.** That is the signal. Not "is this important", not "is this complicated". Just: did you type the same instructions again.

Good first skills for an operator, in rough order of payback:

| Skill | Why it pays |
|---|---|
| Housing request intake | You do it every inquiry and you always forget one field |
| Guest message templates | High volume, your voice, low judgment |
| Landlord pitch | Rare but high stakes, and you improvise it every time |
| Turn checklist | Delegatable the day it is written |
| Quote builder | Stops you pricing by mood |

No live operation yet? Start with the **landlord pitch**, a **market brief** (how you want any city summarized), or a **deal screen** (the questions every unit must answer before you commit). Those pay off before your first guest exists.

## The build prompt

Paste this and answer the questions.

> I want to build a Claude skill for [the job]. Interview me properly before you write anything. Ask me how I do it now start to finish, what I always include that others forget, the mistake I have made at this step before, and what would make me reject the output and start over. Ask follow-ups where my answer is vague. Then write the SKILL.md file to ~/.claude/skills/[name]/SKILL.md and run it once on a real example so I can see it work.

The interview is the part that matters. A skill written from a one-line description is a generic skill, and you already have a generic assistant.

## The shape of the file

```markdown
---
name: kebab-case-name
description: One line, written so Claude knows when to reach for this. Include the words you would actually say.
---

# Skill name

## When this applies
The trigger. Be specific.

## How I do it
Your steps, in your words.

## Always include
Your non-negotiables.

## Never do this
Your scar tissue. The mistakes you have already paid for.

## What good looks like
The standard you would accept.
```

## The rules that make skills good

**Write the "Never do this" section first.** It is the part only you can write. Everything else is recoverable from a decent prompt; your mistakes are not.

**Be specific to the point of discomfort.** "Respond professionally" is not a skill. "Answer within 4 hours, lead with the fix not the apology, never explain why it happened unless they ask" is a skill.

**One job per skill.** If yours has an "and" in the name, it is two skills.

**Edit it when reality disagrees.** The file is on your computer. Open it, change a line, save. That is the whole maintenance story.

**Keep it under about 200 lines.** Longer than that and you are writing a manual, which nobody reads, including Claude.

## Where they live

`~/.claude/skills/<name>/SKILL.md` on your machine. Plain text. Yours. Back them up like you would any business document, because after six months of this they are genuinely part of your operation.

## The honest limit

A skill makes Claude consistent. It does not make it right. Everything client-facing still gets your eyes before it goes out.
