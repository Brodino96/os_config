# Bing and Cortana internet search
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Search /v BingSearchEnabled /t REG_DWORD /d 0
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Search /v CortanaConsent /t REG_DWORD /d 0

# Set default terminal to Nushell in Windows Terminal settings
$jsonPath = "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$json = Get-Content -Raw -Path $jsonPath | ConvertFrom-Json
$nuProfile = $json.profiles.list | Where-Object { $_.name -eq "Nushell" }

if ($nuProfile) {
    $json.defaultProfile = $nuProfile.guid

    $json | ConvertTo-Json -Depth 100 | Set-Content -Path $jsonPath -Encoding UTF8

    Write-Host "defaultProfile aggiornato con il GUID: $($nuProfile.guid)"
} else {
    Write-Host "Profilo con name 'nu' non trovato."
}