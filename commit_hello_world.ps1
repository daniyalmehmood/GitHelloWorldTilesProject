# === CONFIGURATION ===
$repoPath = $PSScriptRoot
$branchName = "main"
$dateString = Get-Date -Format "yyyyMMdd_HHmmss"
$fileName = "hello_$dateString.txt"
$commitMessage = "chore: hello world $dateString"

# === NAVIGATE TO REPO ===
Set-Location $repoPath

# === DELETE EXISTING .TXT FILES ===
$txtFiles = Get-ChildItem -Filter "*.txt"
if ($txtFiles) {
    $txtFiles | Remove-Item -Force
    git add -u
    git commit -m "chore: remove old txt files"
}

# === CREATE FILE AND COMMIT ===
"Hello, world!" | Out-File -FilePath $fileName -Encoding utf8
git add $fileName
git commit -m "$commitMessage"
git push origin $branchName

Write-Host "✅ Commit pushed successfully to GitHelloWorldTilesProject!"