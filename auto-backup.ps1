$ProjectPath = "C:\Users\user\Documents\AI\生活小秘書"
$LogFile = Join-Path -Path $ProjectPath -ChildPath "auto-backup.log"
$env:Path = [Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [Environment]::GetEnvironmentVariable("Path","User")
Set-Location $ProjectPath
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git add -A
$status = git status --porcelain
if (-not $status) {
    "$timestamp -- no changes, skipped" | Out-File $LogFile -Append
    exit 0
}
git commit -m "auto backup $timestamp"
if ($LASTEXITCODE -ne 0) {
    "$timestamp -- commit failed" | Out-File $LogFile -Append
    exit 1
}
git push origin master
if ($LASTEXITCODE -ne 0) {
    "$timestamp -- push failed" | Out-File $LogFile -Append
    exit 1
}
"$timestamp -- backup success" | Out-File $LogFile -Append
