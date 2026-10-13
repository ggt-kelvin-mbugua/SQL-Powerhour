
param(
    [Parameter(Mandatory = $true)]
    [string]$RepoPath
)

$ErrorActionPreference = "Stop"
$Date = Get-Date -Format "yyyy-MM-dd"

function Invoke-Git {
    & git @args
    if ($LASTEXITCODE -ne 0) {
        throw "Git command failed."
    }
}

try {
    if (-not (Test-Path -LiteralPath $RepoPath -PathType Container)) {
        throw "Repository folder not found: $RepoPath"
    }

    Push-Location -LiteralPath $RepoPath

    if (-not (Test-Path ".git")) {
        throw "This is not a Git repository."
    }

    # Only run from a clean main branch.
    $status = & git status --porcelain
    if ($LASTEXITCODE -ne 0) { throw "Unable to check Git status." }
    if ($status) {
        throw "Commit or stash your existing changes first."
    }

    $current = (& git branch --show-current).Trim()
    if ($current -ne "main") {
        throw "Switch to main before running. Current branch: $current"
    }

    Invoke-Git fetch origin
    Invoke-Git pull --ff-only origin main

    $folder = "daily-practice/$Date"
    if (Test-Path -LiteralPath $folder) {
        throw "Practice folder already exists: $folder. No files were changed."
    }

    New-Item -ItemType Directory -Path $folder -Force |
        Out-Null

    for ($i = 1; $i -le 6; $i++) {
        $number = "{0:D2}" -f $i
        $file = Join-Path $folder "task-$number.sql.md"

        $content = @"
# SQL Practice — Task $number

- **Date:** $Date
- **Question Name:**
- **Link:**
- **Difficulty:** Easy / Medium / Hard

## Intuition

Explain how you interpreted the question and developed your approach.

## Solution

````sql
-- Write your SQL solution here

````

## Notes

- **Concepts learned:**
- **Improvements:**
"@

        Set-Content -LiteralPath $file -Value $content -Encoding utf8
    }

    Invoke-Git add $folder
    Invoke-Git commit -m "Add SQL practice tasks for $Date"
    Invoke-Git push origin main

    Write-Host "SUCCESS: Daily practice for $Date pushed to main." `
        -ForegroundColor Green
}
catch {
    Write-Error $_
    exit 1
}
finally {
    Pop-Location -ErrorAction SilentlyContinue
}
