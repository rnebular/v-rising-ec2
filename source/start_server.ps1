# MOAR powershell, LESS .bat
$SteamAppId=1604030

Install-Module SteamPS
Import-Module SteamPS

$steamcmd_check=Test-Path -Path "C:\Program Files\steamcmd"
if ($steamcmd_check -eq $False) {
    Write-Output "SteamCMD not found, installing."
    Install-SteamCMD
}

Write-Output "Installing/Updating V-Rising dedicated server."
Update-SteamApp -AppID 1829350 -Path 'C:\v-rising' -Force

Write-Output "Starting V Rising Dedicated Server"
Start-Service -Name "V-Rising Server"
