
param(
    [Parameter(Mandatory = $true)]
    [string]$RepoPath
)

$ErrorActionPreference = "Stop"
$Date = Get-Date -Format "yyyy-MM-dd"
$Branch = $Date

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

    # Do not overwrite an existing daily branch.
    & git show-ref --verify --quiet "refs/heads/$Branch"
    $localExists = ($LASTEXITCODE -eq 0)

    $remoteRefs = & git ls-remote --heads origin $Branch
    if ($LASTEXITCODE -gt 2) {
        throw "Unable to check remote branches."
    }
    $remoteExists = [bool]$remoteRefs

    if ($localExists -or $remoteExists) {
        throw "Branch $Branch already exists. No changes made."
    }

    Invoke-Git switch -c $Branch

    $folder = "daily-practice/$Date"
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
    Invoke-Git push -u origin $Branch

    Write-Host "SUCCESS: Branch $Branch created and pushed." `
        -ForegroundColor Green
}
catch {
    Write-Error $_
    exit 1
}
finally {
    Pop-Location -ErrorAction SilentlyContinue
}
