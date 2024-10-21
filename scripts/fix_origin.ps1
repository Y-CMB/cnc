# fix origin to dsiable annoying EA popup
[xml]$xml = Get-Content -Path "C:\ProgramData\Origin\local.xml"
$newSetting = $xml.CreateElement("Setting")
$newSetting.SetAttribute("key", "MigrationDisabled")
$newSetting.SetAttribute("type", "1")
$newSetting.SetAttribute("value", "true")
$xml.root.AppendChild($newSetting)
$xml.Save("C:\ProgramData\Origin\local.xml")