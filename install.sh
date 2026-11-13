#!/usr/bin/env bash
# MTR Operator Toolkit for Claude Code
# Installs 8 slash commands, 4 skills and 4 gift files into ~/.claude
# Mac / Linux / WSL. For Windows PowerShell use install.ps1
set -euo pipefail

REPO="roadmaplodging/mtr-claude-toolkit"
BRANCH="main"
CLAUDE_DIR="${HOME}/.claude"
TMP="$(mktemp -d)"
trap 'rm -rf "${TMP}"' EXIT

echo ""
echo "MTR Operator Toolkit"
echo "===================="
echo ""

# --- checks ---------------------------------------------------------------
if ! command -v curl >/dev/null 2>&1; then
  echo "ERROR: curl is not installed. Install curl and run this again."
  exit 1
fi
if ! command -v tar >/dev/null 2>&1; then
  echo "ERROR: tar is not installed. Install tar and run this again."
  exit 1
fi

# --- download -------------------------------------------------------------
echo "Downloading..."
if ! curl -fsSL "https://codeload.github.com/${REPO}/tar.gz/refs/heads/${BRANCH}" -o "${TMP}/toolkit.tar.gz"; then
  echo "ERROR: could not download the toolkit."
  echo "Check your internet connection, then try again."
  exit 1
fi

tar -xzf "${TMP}/toolkit.tar.gz" -C "${TMP}"
SRC="$(find "${TMP}" -maxdepth 1 -type d -name 'mtr-claude-toolkit-*' | head -n 1)"

if [ -z "${SRC}" ] || [ ! -d "${SRC}/commands/mtr" ] || [ ! -d "${SRC}/skills" ] || [ ! -d "${SRC}/gifts" ]; then
  echo "ERROR: the download looks incomplete. Try again in a minute."
  exit 1
fi

# --- install --------------------------------------------------------------
# Only ever writes inside commands/mtr/, skills/mtr-<toolkit skill>/ and mtr-toolkit/gifts/.
# If you have EDITED one of the toolkit's installed files, your version is copied beside it
# as <file>.bak-<date> before the new copy lands, so an update never silently discards your
# changes. The backup name does not end in .md, so Claude Code does not load it.
mkdir -p "${CLAUDE_DIR}/commands/mtr" "${CLAUDE_DIR}/skills"

BACKUP_COUNT=0
STAMP="$(date +%Y%m%d-%H%M%S)"
install_file() {
  # $1 = new file, $2 = destination path
  if [ -f "$2" ] && ! cmp -s "$1" "$2"; then
    cp "$2" "$2.bak-${STAMP}"
    BACKUP_COUNT=$((BACKUP_COUNT + 1))
  fi
  cp "$1" "$2"
}

CMD_COUNT=0
for f in "${SRC}/commands/mtr/"*.md; do
  [ -e "$f" ] || continue
  install_file "$f" "${CLAUDE_DIR}/commands/mtr/$(basename "$f")"
  CMD_COUNT=$((CMD_COUNT + 1))
done

SKILL_COUNT=0
for d in "${SRC}/skills/"mtr-*/; do
  [ -d "$d" ] || continue
  name="$(basename "$d")"
  mkdir -p "${CLAUDE_DIR}/skills/${name}"
  install_file "${d}SKILL.md" "${CLAUDE_DIR}/skills/${name}/SKILL.md"
  SKILL_COUNT=$((SKILL_COUNT + 1))
done

GIFT_COUNT=0
mkdir -p "${CLAUDE_DIR}/mtr-toolkit/gifts"
for f in "${SRC}/gifts/"*.md; do
  [ -e "$f" ] || continue
  install_file "$f" "${CLAUDE_DIR}/mtr-toolkit/gifts/$(basename "$f")"
  GIFT_COUNT=$((GIFT_COUNT + 1))
done

if [ "${BACKUP_COUNT}" -gt 0 ]; then
  echo "Backed up ${BACKUP_COUNT} file(s) you had edited as <file>.bak-${STAMP} before updating."
fi

if [ "${CMD_COUNT}" -eq 0 ] || [ "${SKILL_COUNT}" -eq 0 ]; then
  echo "ERROR: nothing was installed."
  echo "Open an issue at https://github.com/roadmaplodging/mtr-claude-toolkit/issues"
  echo "or post in the free community: https://www.skool.com/corporate-housing-community"
  exit 1
fi

# --- done -----------------------------------------------------------------
echo ""
echo "Installed ${CMD_COUNT} commands, ${SKILL_COUNT} skills and ${GIFT_COUNT} gifts to ~/.claude"
echo ""
echo "  THE COURSE"
echo "  /mtr:lesson-1   build your MTR assistant"
echo "  /mtr:lesson-2   build your first skill"
echo "  /mtr:lesson-3   deploy 3 research agents on your market"
echo "  /mtr:lesson-4   build something real you can send a company"
echo ""
echo "  THE TOOLS (yours to keep)"
echo "  /mtr:start      profile + your first outreach email, the fast path"
echo "  /mtr:outreach   draft outreach for another company"
echo "  /mtr:market     check whether a city can support midterm rentals"
echo "  /mtr:sop        turn a process in your head into one your VA can follow"
echo ""
echo "  GIFTS  ~/.claude/mtr-toolkit/gifts/"
echo ""
echo "Next:"
echo "  1. Make a folder for your business and cd into it"
echo "  2. Type:  claude"
echo "  3. Type:  /mtr:lesson-1"
echo ""
echo "Nothing else in ~/.claude was modified."
echo ""
