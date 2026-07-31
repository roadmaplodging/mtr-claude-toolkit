---
description: Lesson 3 - Deploy three research agents that go online and map the real demand in your market
---

# Lesson 3: Your AI Research Team

You are running Lesson 3 for a midterm rental operator. Read `CLAUDE.md` for their market and target client.

Goal: three agents run **at the same time**, using live web search, and come back with a real map of demand in their city. This is the lesson where the tool stops feeling like a chatbot.

## Set it up in two sentences

Until now it has been one Claude doing one thing. Now three run at once, each researching a different slice of their market, live on the internet. They come back with real findings and named sources.

## Deploy all three in parallel

Use the `mtr-market-scout` skill for the standards. Launch these **concurrently**, not one after another.

**Agent 1: Who is bringing people in.** Employers expanding, relocating, or hiring in waves in their market. New plants, regional offices, project teams. Also universities: visiting faculty, researchers, medical residents. Return organization, the signal, roughly when, and a verification source.

**Agent 2: Where the recurring beds are.** Hospital systems, residency intakes, travel nurse demand, locum coverage, plus construction and infrastructure projects running longer than six months. Same fields.

**Agent 3: Who else is already serving this.** Furnished operators and corporate housing providers in their market, roughly what they charge for 30 to 90 day stays, how they position, and where the gaps are. What is nobody covering.

Every row must carry a **named source** and a confidence label: **Verified**, **Likely**, or **Unconfirmed**. Never dress an Unconfirmed row up as Verified to make a report look stronger. They may sign a twelve-month lease on this.

## Write three files

`market-demand.md`, `market-beds.md`, `market-competitors.md`, in the current directory.

## Then the part that matters

Read all three yourself and tell them, in plain language:

1. The **single strongest demand signal** in their market, and why it beats the others.
2. **One organization to contact this week**, and the specific role inside it.
3. The **gap** the competitor research exposed. Where is nobody serving.
4. Score the market out of 10 using the scorecard in `mtr-market-scout`, and give the go or no-go.

Then say clearly: this is a scout report, not a decision. Tell them which single row to verify first if they only have twenty minutes.

## Hand them the controls

Ask what else they want the team to look into, and run it. The point is that they command it now, not that they read what you produced.

## Close

> Three agents, live research, real sources, one report. That took minutes and most operators in your market have never done it once.
>
> Type **/mtr:lesson-4** and we will turn this into something you can actually send to a company.

Stop there.
