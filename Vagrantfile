# The VMWare Plugin is required, download from https://developer.hashicorp.com/vagrant/install/vmware#windows

Vagrant.configure("2") do |config|
    config.vm.box = "gusztavvargadr/windows-10"
    config.vm.box_version = "2202.0.2409"

    # vmware
    config.vm.provider "vmware_workstation" do |v|
      v.vmx["numvcpus"] = 4
      v.vmx["memsize"] = 8192
      v.vmx["cpuid.coresPerSocket"] = 2
      v.vmx["svga.vramSize"] = 268435456
      v.vmx["mks.enable3d"] = "TRUE"
      v.vmx["svga.autodetect"] = "TRUE"
      v.vmx["sound.present"] = "TRUE"       # Enable sound
      v.vmx["sound.autodetect"] = "TRUE"
      v.gui = true
    end

    # virtualbox
    config.vm.provider "virtualbox" do |vb|
      vb.cpus = 4
      vb.memory = 8192
      vb.customize ["modifyvm", :id, "--cpus", 4]
      vb.customize ["modifyvm", :id, "--cpus", 4, "--paravirtprovider", "default"]
      vb.customize ["modifyvm", :id, "--vram", 256]
      vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
      vb.customize ["modifyvm", :id, "--audio-driver", "dsound"] # windows driver
      vb.customize ["modifyvm", :id, "--audiocontroller", "hda"]
      vb.gui = true
    end
    
    #TEST
    config.vm.communicator = "winrm"
    config.winrm.transport = :negotiate # default, but makes me feel better
    config.winrm.port = 55985 # thanks, gusztav
    #ENDTEST
  
    config.vm.provision "shell", path: "scripts/download_install.ps1"
    config.vm.provision "shell", path: "scripts/origin_shortcut.ps1"

    # config.vm.provision "local-exec" do |exec|
    #     exec.command = "mstsc.exe /v:127.0.0.1:53389"
    #   end
  end
  