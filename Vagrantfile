# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do | stack |

  stack.vm.define :dev do | dev |
    dev.vm.box = 'lubuntu-quantal-quetzal64'
    dev.vm.box_url = 'http://dl.dropbox.com/u/19636958/vagrant-lubuntu-quantal-quetzal64.box'

    dev.vm.boot_mode = :gui

    dev.vm.customize [ 'modifyvm', :id,
                       '--cpus', '2',
                       '--memory', '2048',
                       '--vram', '128',
                       '--clipboard', 'bidirectional'
                     ]

    dev.vm.provision :puppet do | puppet |
      puppet.module_path    = "puppet/modules"
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "dev.pp"
      # Uncomment the below line to enable debug output
      # puppet.options        = "--verbose --debug"
    end
  end
end
