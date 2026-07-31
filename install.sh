#!/usr/bin/env bash
# MTR Operator Toolkit for Claude Code
# Installs 4 slash commands and 3 skills into ~/.claude
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

if [ -z "${SRC}" ] || [ ! -d "${SRC}/commands/mtr" ] || [ ! -d "${SRC}/skills" ]; then
  echo "ERROR: the download looks incomplete. Try again in a minute."
  exit 1
fi

# --- install --------------------------------------------------------------
# Only ever writes inside commands/mtr/ and skills/mtr-*/ so nothing
# you already have in ~/.claude is touched.
mkdir -p "${CLAUDE_DIR}/commands/mtr" "${CLAUDE_DIR}/skills"

CMD_COUNT=0
for f in "${SRC}/commands/mtr/"*.md; do
  [ -e "$f" ] || continue
  cp "$f" "${CLAUDE_DIR}/commands/mtr/"
  CMD_COUNT=$((CMD_COUNT + 1))
done

SKILL_COUNT=0
for d in "${SRC}/skills/"mtr-*/; do
  [ -d "$d" ] || continue
  name="$(basename "$d")"
  mkdir -p "${CLAUDE_DIR}/skills/${name}"
  cp "${d}SKILL.md" "${CLAUDE_DIR}/skills/${name}/SKILL.md"
  SKILL_COUNT=$((SKILL_COUNT + 1))
done

if [ "${CMD_COUNT}" -eq 0 ] || [ "${SKILL_COUNT}" -eq 0 ]; then
  echo "ERROR: nothing was installed. Please report this in the community."
  exit 1
fi

# --- done -----------------------------------------------------------------
echo ""
echo "Installed ${CMD_COUNT} commands and ${SKILL_COUNT} skills to ~/.claude"
echo ""
echo "  /mtr:start      set up your profile, then draft your first outreach email"
echo "  /mtr:outreach   draft outreach for another company"
echo "  /mtr:market     check whether a city can support midterm rentals"
echo "  /mtr:sop        turn a process in your head into one your VA can follow"
echo ""
echo "Next:"
echo "  1. Make a folder for your business and cd into it"
echo "  2. Type:  claude"
echo "  3. Type:  /mtr:start"
echo ""
echo "Nothing else in ~/.claude was modified."
echo ""
