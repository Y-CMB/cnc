# Intro
This repo is a hodgepodge collection of code in an attempt to, as easy as possible, get a VM running with the ultimate goal of playing one of my favorite childhood games; Command and Conquer Generals. What you see here is an attempt to make things as seemless as possible for the end-user, regardless of launcher or platform (see pre-req section). 

## Pre-req's
1. VMWare Workstation **(You need a broadcom account. Open the link, sign in, then open the link again.)** or Virtualbox 7.0 or before (current version is 7.1, so you may have to downgrade).
  - **Windows VMWware Workstation Pro (Free):** [link](https://support.broadcom.com/group/ecx/productdownloads?subfamily=VMware+Workstation+Pro)

  - **Windows Virtualbox 7.0 installer:** [link](https://download.virtualbox.org/virtualbox/7.0.22/VirtualBox-7.0.22-165102-Win.exe)

2. Git
  - **Windows Git install:** [link](https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.1/Git-2.47.0-64-bit.exe)

3. You also need vagrant and the plugin if using VMWare.
#### Windows
  - **Windows Vagrant installer:** [link](https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_windows_amd64.msi)

#### Plugins
  - **VMWare Plugin:** [link](https://releases.hashicorp.com/vagrant-vmware-utility/1.0.23/vagrant-vmware-utility_1.0.23_windows_amd64.msi)

  Once installed run `vagrant plugin install vagrant-vmware-desktop` from the terminal to install the plugin.

#### VM Requirements
Please ensure your host has the following:
**CPU:** 4
**RAM:** 8GB
**Disk:** 127GB
These can be edited in the **Vagrantfile** once pulled via git.

## Pull and Run
1. Pull repository.
```powershell
git clone https://github.com/Y-CMB/cnc.git
cd .\cnc\
```

2. If using VMWare Workstation: `vagrant up --provider vmware_workstation`
If using Virtualbox: `vagrant up --provider virtualbox`

2. Grab a coffee, this may take some time. Now would probably be a good time to create an account at [cnc-online](https://cnc-online.net/en/), this is required for online play.
**Note: if Windows makes it past login, check your shell to make sure the script is completed, it may take a few minute to download and install packages/setup**

3. Open Steam/Origin, sign in, and download Generals.
**Note: Origin is installed, if the icon is not on the desktop, launch it by clicking the Windows button and typing "Origin"**

4. Once the game download is complete, navigate to `C:\Users\vagrant\Downloads\GenPatcher\` and launch the application **GenPatcher**.

5. Accept the EULA, click 'Apply Fixes' and 'Install GenTool'. If for whatever reason online isn't working, navigate to the 'Playing Online' tab and enable **Network optimizations...**. The 'Additional Content' and 'Maps' tabs provide some community mods.


## Useful Commands
`vagrant status`: pretty self explanatory
`vagrant up --debug`: shows you ALL the runtime information
`vagrant halt`: just pauses the instance, instead of rebuilding it everytime
`vagrant ssh`: gives you a shell in the VM
`mstsc.exe /v:127.0.0.1:55985`: use RDP instead of the vmware console
