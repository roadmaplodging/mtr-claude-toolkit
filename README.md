# MTR Operator Toolkit for Claude Code

Four commands that do real work in a midterm rental business. Built by [Roadmap Lodging](https://www.roadmaplodging.com) for the operators in our community.

```
/mtr:start      Set up your profile, then draft your first real B2B outreach email
/mtr:outreach   Draft outreach for another target company
/mtr:market     Check whether a city can support 30 to 90 day furnished housing
/mtr:sop        Turn a process only you know how to do into one your VA can follow
```

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

and type `/mtr:start`.

## What gets installed

The installer writes **only** into these paths and touches nothing else in `~/.claude`:

```
~/.claude/commands/mtr/{start,outreach,market,sop}.md
~/.claude/skills/mtr-outreach/SKILL.md
~/.claude/skills/mtr-market-scout/SKILL.md
~/.claude/skills/mtr-sop-writer/SKILL.md
```

If you would rather not pipe a script into your shell, that is a reasonable instinct. Clone the repo and copy those files yourself. It does the same thing.

## What it does not do

- It does not send anything. It drafts, you verify, you send.
- It does not invent proof. If you have no placements yet, it will say so rather than write you a testimonial.
- It does not give legal advice. Whether a 30-day stay creates a tenancy in your city is a question for local counsel.

## Uninstall

```bash
rm -rf ~/.claude/commands/mtr ~/.claude/skills/mtr-outreach ~/.claude/skills/mtr-market-scout ~/.claude/skills/mtr-sop-writer
```

## Community

Free operator community: <https://www.skool.com/corporate-housing-community>

## Licence

MIT. Use it, fork it, adapt it to your own business.
