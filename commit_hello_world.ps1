# === CONFIGURATION ===
$repoPath = "C:\Users\qwerty\Downloads\GitHelloWorldTilesProject"
$branchName = "main"
$dateString = Get-Date -Format "yyyyMMdd_HHmmss"
$fileName = "hello_$dateString.txt"
$commitMessage = "chore: hello world $dateString"

# === NAVIGATE TO REPO ===
Set-Location $repoPath

# === CREATE FILE AND COMMIT ===
"Hello, world!" | Out-File -FilePath $fileName -Encoding utf8
git add $fileName
git commit -m "$commitMessage"
git push origin $branchName

Write-Host "✅ Commit pushed successfully to GitHelloWorldTilesProject!"