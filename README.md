# MTR Operator Toolkit for Claude Code

A four-lesson course and four working commands for midterm rental operators — whether you run units today or are exploring your first one. Built by [Roadmap Lodging](https://www.roadmaplodging.com) and free for any operator to use.

**The course.** Four lessons, about 30 minutes, no coding.

```
/mtr:lesson-1   Build your MTR assistant, so nothing it writes is generic again
/mtr:lesson-2   Build your first skill, and teach it one job your way
/mtr:lesson-3   Deploy 3 agents that research your market live on the internet
/mtr:lesson-4   Build something real: a capability statement you can send today
```

**The tools, yours to keep.**

```
/mtr:start      Profile plus your first outreach email, the fast path
/mtr:outreach   Draft outreach for another target company
/mtr:market     Check whether a city can support 30 to 90 day furnished housing
/mtr:sop        Turn a process only you know how to do into one an assistant can follow
```

**Four gifts** land in `~/.claude/mtr-toolkit/gifts/`: 30 operator prompts, a skill builder, 5 agent workflows, and 10 business templates.

## Install

You need [Claude Code](https://code.claude.com/docs/en/overview) installed and signed in first.

**Mac / Linux / WSL**

```bash
curl -fsSL https://raw.githubusercontent.com/roadmaplodging/mtr-claude-toolkit/main/install.sh | bash
```

**Windows PowerShell**

```powershell
irm https://raw.githubusercontent.com/roadmaplodging/mtr-claude-toolkit/main/install.ps1 | iex
```

Then:

```bash
mkdir my-mtr-business && cd my-mtr-business
claude
```

and type `/mtr:lesson-1`.

## What gets installed

The installer writes **only** into these paths and touches nothing else in `~/.claude`:

```
~/.claude/commands/mtr/{lesson-1..4,start,outreach,market,sop}.md
~/.claude/skills/mtr-outreach/SKILL.md
~/.claude/skills/mtr-market-scout/SKILL.md
~/.claude/skills/mtr-guest-messages/SKILL.md
~/.claude/skills/mtr-sop-writer/SKILL.md
~/.claude/mtr-toolkit/gifts/*.md
```

If you would rather not pipe a script into your shell, that is a reasonable instinct. Clone the repo and copy those files yourself. It does the same thing.

## What it does not do

- It does not send anything. It drafts, you verify, you send.
- It does not invent proof. If you have no placements yet, it will say so rather than write you a testimonial.
- It does not give legal advice. Whether a 30-day stay creates a tenancy in your city is a question for local counsel.

## Uninstall

The skills are named explicitly on purpose. `rm -rf ~/.claude/skills/mtr-*` would delete any other skill of yours that happens to start with `mtr-`.

```bash
rm -rf ~/.claude/commands/mtr        ~/.claude/skills/mtr-outreach        ~/.claude/skills/mtr-market-scout        ~/.claude/skills/mtr-guest-messages        ~/.claude/skills/mtr-sop-writer        ~/.claude/mtr-toolkit
```

## Want to skip some of the hard work?

This toolkit helps you build everything yourself, and it always will be free. If you would rather start from systems that already exist — playbooks, e-signing, lead capture, bookkeeping, market analysis built for small furnished-rental operators — that is [Roadmap Lodging OS](https://www.roadmaplodging.com/os), the software we sell. It has a free trial. To be plain about it: the toolkit costs nothing and stands on its own; the OS is how we keep the lights on.

## Questions, bugs, ideas

Open an issue: <https://github.com/roadmaplodging/mtr-claude-toolkit/issues>

If you want other operators to compare notes with, the free community that produced this toolkit is at <https://www.skool.com/corporate-housing-community>.

## Licence

MIT. Use it, fork it, adapt it to your own business.
