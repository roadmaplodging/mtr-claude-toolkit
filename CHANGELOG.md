# Changelog

Re-run the installer to get the latest version. Your own files are never touched.

## 2026-11-12

- The lessons now do what the course videos show. Lesson 1 checks a distance, travel time, or place in your differentiator before writing it down. Lesson 2 invents a test case when you have no real one, finds the gap, fixes the skill, and runs it again. Lesson 3 checks your own differentiator against the research. Lesson 4 leaves a highlighted blank wherever a number is not in your files.
- `/mtr:outreach` now reads the `CLAUDE.md` that Lesson 1 writes. Before, it stopped unless you had run `/mtr:start`.
- The installer backs up any toolkit file you have edited (commands, skills, gifts) as `<file>.bak-<date>` before replacing it.
- Every skill opens with a short "write like a person" rule block, and the gift files carry a one-line version.
- Em dashes removed from the tools, skills, and gifts.

## 2026-07-31

- New skill: `mtr-guest-messages` — the guest lifecycle cadence for 30 to 90 day stays: day-3 settle-in, mid-stay checkpoint, the renewal conversation 14 days before checkout, and the honest review ask.
- Every skill now opens with an "Adapt to this operator first" section: it reads your `CLAUDE.md` or `mtr-profile.md` and adjusts to your stage, business model, market, and goals.
- Lesson 1 rebuilt as a branching interview: your name, where you are starting from (units live, access only, or brand new), your market, and your goal — before any business facts. Every question has an honest "not yet" path.
- `/mtr:start` now builds a full profile (timeline, hours per week, capital comfort, business model) and routes brand-new operators to `/mtr:market` before outreach.
- Lesson 1 guards against overwriting an existing `CLAUDE.md`: it shows you what is there and offers merge, save-beside, or replace.
- Examples are labeled as invented; unsourced statistics removed; US-specific items (W-9, COI) marked as such.
- Installer error messages now point at GitHub issues.
- Uninstall instructions name each skill explicitly instead of using a wildcard that could delete your own `mtr-*` skills.

## 2026-07-30

- Initial public release: 4 lessons, 4 tools, 3 skills, 4 gifts.
