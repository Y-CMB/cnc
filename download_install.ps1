Invoke-WebRequest -Uri "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -OutFile "C:/Users/Public/Public Downloads/SteamSetup.exe"
Start-Process -FilePath "C:/Users/Public/Public Downloads/SteamSetup.exe" -ArgumentList '/S' -Wait
Invoke-WebRequest -Uri "https://origin-a.akamaihd.net/EA-Desktop-Client-Download/installer-releases/EAappInstaller.exe" -OutFile "C:/Users/Public/Public Downloads/EAappInstaller.exe"
Start-Process -FilePath "C:/Users/Public/Public Downloads/EAappInstaller.exe" -ArgumentList '/S' -Wait
Invoke-WebRequest -Uri "https://legi.cc/downloads/genpatcher/GenPatcher%202.07f.zip" -OutFile "C:/Users/Public/Public Downloads/GenPatcher.zip"