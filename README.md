## Pre-req's
This is specifically for VMWare Workstation Pro, you may have to edit the **Vagrantfile** if your provider is different.

Install [git](https://git-scm.com/downloads) or download zip from here.

You also need [vagrant](https://developer.hashicorp.com/vagrant/downloads) and the [Vagrant VMWare Utility](https://releases.hashicorp.com/vagrant-vmware-utility/1.0.23/vagrant-vmware-utility_1.0.23_windows_amd64.msi) executables. Once installed run `vagrant plugin install vagrant-vmware-desktop` to install the plugin.

## Pull and Run
1. Pull repository
```powershell
git clone https://github.com/Y-CMB/cnc.git
cd .\cnc\
```

2. Grab a coffee, this may take some time

3. If using EA/Origin, you must fix the launcher to get rid of the popup.
- locate `C:\ProgramData\Origin\local.xml`
- add `<Setting key="MigrationDisabled" type="1" value="true" />` inbetween the <root> tags
- save and close the document

4. Sign into Steam/Origin and download Generals

5. Navigate to `C:\Users\Public\Downloads\GenPatcher\` and launch the application

## Useful Commands