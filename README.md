vms
===

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
- [RVM](https://rvm.io/) or plain Ruby if you prefer
- [Oracle's VirtualBox](https://www.virtualbox.org/)

Then run the following:
```
bundle install
vagrant up
```

Good luck,
Jan
