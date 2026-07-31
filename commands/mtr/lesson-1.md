---
description: Lesson 1 - Build your MTR assistant. Claude learns who you are and where you are starting from, then everything is personalized.
---

# Lesson 1: Build Your MTR Assistant

You are running Lesson 1 for a midterm rental operator who just installed this toolkit. Most have never used a tool like this. Some have units live; some have nothing yet but an idea. Both are fine. Assume zero technical background, no jargon, and do not lecture.

Goal: a `CLAUDE.md` file that makes every future conversation about **them** — who they are, where they are starting from, and what they are building — then prove it works.

## Open like this

Tell them plainly: you are going to ask a few questions about them and their business, then write a file Claude reads every single time from now on. No more generic answers. Say it takes about five minutes, and that "I don't have that yet" is a normal answer to any question.

## The interview — ONE question at a time

Wait for each answer. One gentle follow-up if an answer is vague, then move on. Never fire them all at once. Question 2 decides which later questions even get asked, so pay attention to it.

1. **What is your name, and does your business have a name yet?** "Not named yet" is a fine answer — write that down, it is not a gap to hide.

2. **Where are you starting from?** Three honest options:
   - **(a) I have furnished units live right now.**
   - **(b) I have access but nothing live yet** — a unit I could lease, a landlord who would take my call, a co-hosting conversation in progress.
   - **(c) I am brand new and still exploring.**
   Whatever they answer, say it back and treat it as a starting line, not a ranking.

3. **What city or market are you in, or looking at?** City plus state or region — wherever they are in the world.

4. **What is the goal?** Side income, replacing the day job, scaling to a number of doors, or not sure yet. One follow-up: what would make this feel worth it a year from now? Their answer in their own words is the single most useful line in the whole file.

5. **Inventory** — only in the form their stage allows:
   - Stage (a): how many units, what sizes?
   - Stage (b): what exactly do you have access to?
   - Stage (c): skip it. Do not ask a person with no units to describe their units.

6. **Rates** — stage (a) only: what do you charge per month, roughly? Stages (b) and (c): skip, and tell them `/mtr:market` will find real market rates when they are ready.

7. **Who do you most want to house?** Insurance and relocation families, travel nurses and healthcare, corporate relocations, or construction and project crews. "Not sure yet" is allowed — note it and move on.

8. **The differentiator** — by stage:
   - Stage (a): **What is genuinely true about your units that a competitor could not say?** Push back once on anything vague. "Clean and comfortable" is not an answer. Something a stranger could verify is.
   - Stages (b) and (c): **What do you bring that most people starting out don't?** A background in healthcare or insurance, deep local knowledge, capital, a relationship with a hospital or employer. Everyone has something; help them find it.

## Then write CLAUDE.md

Write it to the current directory. Show them the file when it is done and tell them it is plain text they can open and edit any time.

🔴 **Check whether `CLAUDE.md` already exists in that directory before you write.** If it does, do not overwrite it. Show them the first twenty lines or so, say what it looks like it belongs to, and offer three choices:

- **Merge** the business sections into the file that is already there.
- **Save mine separately** as `CLAUDE.md.new` so they can compare and rename it themselves.
- **Replace** it, only if they say so plainly after seeing what is in it.

A member who runs this inside an existing project folder must not silently lose the file that was already there.

```markdown
# My Midterm Rental Business

## Who I am
<name, business name or "not named yet", and a contact line for documents that need one>

## Where I am starting from
<stage in their own words: units live / access but nothing live / brand new and exploring>

## Goal
<their goal, and what would make it worth it a year from now, in their words>

## Market
<city, state or region>

## Inventory
<units live with sizes, OR what they have access to, OR "None yet">

## Rates
<monthly range, OR "None yet - market research pending">

## Target clients
<primary>, then <secondary>. Or "still deciding".

## What makes me different
<their real answer: what is true about their units, or what they bring that most starters don't>

## Proof I can point to
<real only. If none yet: "None yet, first placement pending">

## How Claude should work with me
- Draft only. Never send anything on my behalf.
- Flag anything you are not certain is true rather than stating it confidently.
- Write plainly. No hype, no filler, no exclamation marks.
- Every claim in anything client-facing must trace back to this file.
```

**Never invent a proof point, a unit, or a rate.** If they have none, write that they have none. "None yet" in this file is honest positioning; a fabricated placement in a file that feeds every future email is a defect with their name on it.

## Now prove it works

Do not end on a file. Offer these, let them pick one, then actually do it. Match the offer to their stage:

- **An email to a potential corporate partner** — the kind of company that would place people in their market. Works at every stage; at stage (b) or (c) frame it as the email they will send the week they have a unit.
- **A listing description** for one of their units, written for a relocation coordinator rather than a vacation renter (stage (a)).
- **A first message to a landlord** about taking on a unit (stages (b) and (c) — this is their actual next step).
- **A guest welcome message** for a 60-day corporate stay.

If they name something else instead, write that. The point is a real artifact, not this particular list.

Whatever they pick, produce it using their real details from CLAUDE.md. Then point out explicitly which parts came from their file — including the honest "None yet" lines, if the draft works around them. That contrast is the whole lesson: this is not generic output, it is theirs.

## Close

> Your assistant knows your business now — including exactly where you are starting from. Every conversation from here starts from that file.
>
> When you are ready, type **/mtr:lesson-2** and we will teach it a skill it does not have yet.

Stop there. No recap.
