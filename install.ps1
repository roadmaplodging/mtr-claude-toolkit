# MTR Operator Toolkit for Claude Code
# Installs 4 slash commands and 3 skills into ~\.claude
# Windows PowerShell. For Mac / Linux / WSL use install.sh

$ErrorActionPreference = 'Stop'

$Repo      = 'roadmaplodging/mtr-claude-toolkit'
$Branch    = 'main'
$ClaudeDir = Join-Path $HOME '.claude'
$Tmp       = Join-Path ([System.IO.Path]::GetTempPath()) ("mtr-" + [guid]::NewGuid().ToString('N').Substring(0,8))

Write-Host ""
Write-Host "MTR Operator Toolkit"
Write-Host "===================="
Write-Host ""

try {
    New-Item -ItemType Directory -Path $Tmp -Force | Out-Null

    Write-Host "Downloading..."
    $zip = Join-Path $Tmp 'toolkit.zip'
    try {
        Invoke-WebRequest -Uri "https://codeload.github.com/$Repo/zip/refs/heads/$Branch" -OutFile $zip -UseBasicParsing
    } catch {
        Write-Host "ERROR: could not download the toolkit."
        Write-Host "Check your internet connection, then try again."
        exit 1
    }

    Expand-Archive -Path $zip -DestinationPath $Tmp -Force
    $src = Get-ChildItem -Path $Tmp -Directory | Where-Object { $_.Name -like 'mtr-claude-toolkit-*' } | Select-Object -First 1

    if ($null -eq $src -or -not (Test-Path (Join-Path $src.FullName 'commands\mtr')) -or -not (Test-Path (Join-Path $src.FullName 'skills')) -or -not (Test-Path (Join-Path $src.FullName 'gifts'))) {
        Write-Host "ERROR: the download looks incomplete. Try again in a minute."
        exit 1
    }

    # Only ever writes inside commands\mtr\ and skills\mtr-*\ so nothing
    # you already have in ~\.claude is touched.
    New-Item -ItemType Directory -Path (Join-Path $ClaudeDir 'commands\mtr') -Force | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $ClaudeDir 'skills') -Force | Out-Null

    $cmdCount = 0
    Get-ChildItem -Path (Join-Path $src.FullName 'commands\mtr') -Filter *.md | ForEach-Object {
        Copy-Item $_.FullName -Destination (Join-Path $ClaudeDir 'commands\mtr') -Force
        $cmdCount++
    }

    $skillCount = 0
    Get-ChildItem -Path (Join-Path $src.FullName 'skills') -Directory | Where-Object { $_.Name -like 'mtr-*' } | ForEach-Object {
        $dest = Join-Path $ClaudeDir ('skills\' + $_.Name)
        New-Item -ItemType Directory -Path $dest -Force | Out-Null
        Copy-Item (Join-Path $_.FullName 'SKILL.md') -Destination $dest -Force
        $skillCount++
    }

    $giftCount = 0
    New-Item -ItemType Directory -Path (Join-Path $ClaudeDir 'mtr-toolkit\gifts') -Force | Out-Null
    Get-ChildItem -Path (Join-Path $src.FullName 'gifts') -Filter *.md | ForEach-Object {
        Copy-Item $_.FullName -Destination (Join-Path $ClaudeDir 'mtr-toolkit\gifts') -Force
        $giftCount++
    }

    if ($cmdCount -eq 0 -or $skillCount -eq 0) {
        Write-Host "ERROR: nothing was installed. Please report this in the community."
        exit 1
    }

    Write-Host ""
    Write-Host "Installed $cmdCount commands, $skillCount skills and $giftCount gifts to ~\.claude"
    Write-Host ""
    Write-Host "  THE COURSE"
    Write-Host "  /mtr:lesson-1   build your MTR assistant"
    Write-Host "  /mtr:lesson-2   build your first skill"
    Write-Host "  /mtr:lesson-3   deploy 3 research agents on your market"
    Write-Host "  /mtr:lesson-4   build something real you can send a company"
    Write-Host ""
    Write-Host "  THE TOOLS (yours to keep)"
    Write-Host "  /mtr:start      profile + your first outreach email, the fast path"
    Write-Host "  /mtr:outreach   draft outreach for another company"
    Write-Host "  /mtr:market     check whether a city can support midterm rentals"
    Write-Host "  /mtr:sop        turn a process in your head into one your VA can follow"
    Write-Host ""
    Write-Host "  GIFTS  ~\.claude\mtr-toolkit\gifts\"
    Write-Host ""
    Write-Host "Next:"
    Write-Host "  1. Make a folder for your business and cd into it"
    Write-Host "  2. Type:  claude"
    Write-Host "  3. Type:  /mtr:lesson-1"
    Write-Host ""
    Write-Host "Nothing else in ~\.claude was modified."
    Write-Host ""
}
finally {
    if (Test-Path $Tmp) { Remove-Item -Recurse -Force $Tmp -ErrorAction SilentlyContinue }
}
