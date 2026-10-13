# SQL-Powerhour

Daily SQL practice, organized under `daily-practice\<yyyy-MM-dd>\` on the
`main` branch. Each day's folder contains six `.sql.md` files.

## Create a day's practice folder

The PowerShell script creates six task templates, commits them, and pushes
directly to `main`. Run it from a clean `main` branch in PowerShell:

```powershell
git switch main
git pull --ff-only origin main
.\DailySqlWorkFlow\Create-DailySqlPractice.ps1 -RepoPath (Get-Location).Path
```

The script will stop rather than overwrite an existing folder for that date.
If you already created the folder, add the files you want and push them
manually:

```powershell
git status
git add daily-practice/2026-10-13/
git commit -m "Add SQL practice for 2026-10-13"
git push origin main
```

Replace the date with the folder's date. Stage only the files you intend to
include; if there are unrelated changes, add individual file paths instead.
To verify, open the repository on GitHub, select `main`, and browse to the
dated folder.

