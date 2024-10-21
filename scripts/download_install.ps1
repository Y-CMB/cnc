# choco install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
echo 'A'

# apps
choco install origin -y --ignore-checksums # you don't see anything
# choco install ea-app -y --force --ignore-checksums 
choco install steam -y --ignore-checksums

# genpatcher
Invoke-WebRequest -Uri "https://legi.cc/downloads/genpatcher/GenPatcher%202.07f.zip" -OutFile "C:/Users/Public/Downloads/GenPatcher.zip"
Expand-Archive -Path "C:/Users/Public/Downloads/GenPatcher.zip" -DestinationPath "C:\Users\Public\Downloads"

# Invoke-WebRequest -Uri "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe" -OutFile "C:/Users/Public/Downloads/SteamSetup.exe"
# Invoke-WebRequest -Uri "https://origin-a.akamaihd.net/EA-Desktop-Client-Download/installer-releases/EAappInstaller.exe" -OutFile "C:/Users/Public/Downloads/EAappInstaller.exe"
# Start-Process -FilePath "SteamSetup.exe" -WorkingDirectory "C:\Users\Public\Downloads" -Wait
# Start-Process -FilePath "EAappInstaller.exe" -WorkingDirectory "C:\Users\Public\Downloads" -Wait

