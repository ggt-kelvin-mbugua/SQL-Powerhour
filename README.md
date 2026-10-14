# SQL-Powerhour

Daily SQL practice is organized in root-level folders named
`yyyy-MM-dd`. Each folder contains six `.sql.md` task templates.

## Create today's practice folder

Run this from the repository root in PowerShell:

```powershell
.\DailySqlWorkFlow\Create-DailySqlPractice.ps1
```

The script creates today's folder locally and does not run Git commands,
commit, or push. It stops rather than overwrite a folder that already exists.

To run it daily with Windows Task Scheduler, use this as the program:

```text
powershell.exe
```

And these as the arguments, replacing the path with your local repository path:

```text
-NoProfile -ExecutionPolicy Bypass -File "C:\path\to\SQL-Powerhour\DailySqlWorkFlow\Create-DailySqlPractice.ps1" -RepoPath "C:\path\to\SQL-Powerhour"
```

The workflow script is local-only and ignored by Git. To push a practice folder,
stage only that day's folder and push it yourself:

```powershell
git add .\2026-10-14\
git commit -m "Add SQL practice for 2026-10-14" -- .\2026-10-14\
git push
```

Replace the example date with the folder's date. Do not use `git add .` if you
want to ensure unrelated files are not included. The path-limited commit keeps
other staged changes out of that commit.
