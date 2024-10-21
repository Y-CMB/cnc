# create origin shortcut on desktop
$targetPath = "C:/Program Files (x86)/Origin/Origin.exe"
$shortcutName = "OriginShortcut.lnk"
$desktopPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath("Desktop"), $shortcutName)
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($desktopPath)
$shortcut.TargetPath = $targetPath
$shortcut.Save()