# v-rising-ec2
V-Rising dedicated server. Tested and functioning on Windows Server 2019 Full (with UI) in AWS on EC2. Core edition was tested and ultimately didn't work.

1. Install using SteamCMD combined with SteamPS (powershell module)
```
Install-Module SteamPS
Import-Module SteamPS
Install-SteamCMD
Update-SteamApp -AppID 1829350 -Path 'C:\v-rising' 
```

1. Copy from this project `source` folder:
- Startup script `start_server.ps1` to game directory. This will be run as a Windows startup script.
- Copy game and host settings files into the AppData folder for the user that will start the server.
(AppData location for settings files:)
`~\AppData\LocalLow\Stunlock Studios\VRisingServer\Settings`

1. Edit `ServerHostSettings.json` file and update the password to join the server.
1. Login and run `start_server.ps1` script. For now, this seems to need to be an interactive startup. Still investigating using unattended at boot.

The script should automatically update the game via SteamCMD and then start the Game Server executable.

References:
- https://github.com/StunlockStudios/vrising-dedicated-server-instructions
- https://github.com/hjorslev/SteamPS
- https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn789190(v=ws.11)

# End of line.