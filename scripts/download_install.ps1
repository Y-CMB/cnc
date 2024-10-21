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
Invoke-WebRequest -Uri "https://github.com/p0358/Fuck_off_EA_App/releases/download/v3/version.dll" -OutFile "C:/Program Files (x86)/Origin/version.dll"

# start Steam to queue install
Start-Process "C:/Program Files (x86)/Steam/Steam.exe"

#TODO
# figure out how to spawn powershell inside of environment - maybe in the shared folder?
#   - move move_game and origin_shortcut to VM and execute - powershell -c ""

# Origin downloads game to
# C:\Program Files (x86)\Origin Games\Command and Conquer Generals Zero Hour\
##  _Installer
##  Command and Conquer Generals
##  Command and Conquer Generals Zero Hour
####  Core
####  Data
####  Manual
####  MSS
####  Generals.exe ***change g to G


