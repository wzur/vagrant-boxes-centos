# vagrant-boxes-centos
Build [Vagrant](http://www.vagrantup.com) CentOS boxes with [Packer](http://packer.io)
and publish them to [Atlas](https://atlas.hashicorp.com)

## Requirements ##
* Packer
* VirtualBox >= 4.3.26
* Environment variables
  * `ATLAS_USERNAME`: the Atlas user name
  * `ATLAS_TOKEN`: the authorisation token obtained from Atlas
