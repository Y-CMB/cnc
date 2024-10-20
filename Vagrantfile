# The VMWare Plugin is required, download from https://developer.hashicorp.com/vagrant/install/vmware#windows

Vagrant.configure("2") do |config|
    config.vm.box = "gusztavvargadr/windows-10"
    config.vm.box_version = "2202.0.2409"
    config.vm.provider "vmware_desktop" do |v|
      v.vmx["numvcpus"] = 4
      v.vmx["memsize"] = 8192
      v.vmx["cpuid.coresPerSocket"] = 2
    end
  
    # config.vm.provision "shell", path: "https://github.com/Y-CMB/cnc/blob/main/download_install.ps1"

    # config.vm.provision "local-exec" do |exec|
    #     exec.command = "mstsc.exe /v:127.0.0.1:53389"
    #   end
  end
  