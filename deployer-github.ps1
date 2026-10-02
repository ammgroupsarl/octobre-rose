$ErrorActionPreference = "Stop"
$repo = "ammgroupsarl/octobre-rose"
$remote = "https://github.com/$repo.git"
git init
git branch -M main
git add .
git commit -m "Site Octobre Rose par AMMGROUP Digital"
gh repo view $repo *> $null
if ($LASTEXITCODE -ne 0) { gh repo create $repo --public --description "Campagne Octobre Rose par AMMGROUP Digital" }
git remote get-url origin *> $null
if ($LASTEXITCODE -eq 0) { git remote set-url origin $remote } else { git remote add origin $remote }
git push -u origin main
gh api "repos/$repo/pages" *> $null
if ($LASTEXITCODE -ne 0) { '{"source":{"branch":"main","path":"/"}}' | gh api --method POST "repos/$repo/pages" --input - }
Write-Host "Site : https://ammgroupsarl.github.io/octobre-rose/"
