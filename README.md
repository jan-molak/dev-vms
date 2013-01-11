dev-vms
=======

One of the problems I often face is how to quickly provision a development environment for new developers joining the team
and also how to make their dev environments consistent all the time. Another one is how to keep project-specific libraries
and files separate from any other stuff that's currently present on my physical machine.

The vms project addresses those issues using [Vagrant](http://www.vagrantup.com) and
[Oracle's VirtualBox](https://www.virtualbox.org/)-based virtual machines to create a nice, reusable,
self-contained dev environment. The project also includes some of the puppet modules I use most often
to make it simpler to provision the VMs.

The base box I'm using at the moment is a plain [Lubuntu Quantal Quetzal 64 bit](http://lubuntu.net/) VM
I created and which can also be downloaded from [here](http://dl.dropbox.com/u/19636958/vagrant-lubuntu-quantal-quetzal64.box).
However, the project should work fine with any other flavour of Ubuntu distribution, if you prefer.

Please note that this software is licensed under MIT license and comes without warranty of any kind. I hope you find
it useful :)

To use the project you need:
- [RVM](https://rvm.io/) - run "rvm requirements" and install dependencies, make sure to get openssl libs as well - you'll find the instructions on the RVM website; You can also use plain Ruby if you prefer
- [Bundler](http://gembundler.com/) 
- [Oracle VirtualBox](https://www.virtualbox.org/)
- [Oracle VM VirtualBox Extension Pack](http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html#extpack) (for USB 2.0 support)

Before you start, run the following commands in the top directory of the cloned project:
```
# to initialize the external puppet modules and update them:
git submodule init
git submodule update

# to install bundler, if you don't have it already:
bundle install
```

On a daily basis you'll only need the following:

```
# to start the dev vm:
vagrant up

# to stop it
vagrant halt

# to rebuild it
vagrant destroy --force && vagrant up
```

If you want to learn more about vagrant please refer to its [documentation](http://docs.vagrantup.com/v1/docs/getting-started/index.html) :)

Good luck,

Jan
