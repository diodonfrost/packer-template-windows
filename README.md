# packer-template-windows

[![Build Status](https://travis-ci.org/diodonfrost/packer-template-windows.svg?branch=master)](https://travis-ci.org/diodonfrost/packer-template-windows)

Packer templates for building windows minimal vagrant baseboxes

### Using public boxes

Adding a windows box to Vagrant:

```shell
vagrant box add diodonfrost/windows-2k12r2
```

Using a windows box in a Vagrantfile:

```shell
Vagrant.configure("2") do |config|
  config.vm.box = "diodonfrost/windows-2k12r2"
end
```

### Building Boxes

#### Requirements

-   [Packer](https://www.packer.io/)
-   [VirtualBox](https://www.virtualbox.org)

#### Using packer

To build an windows 2k12r2 box with virtualbox provider:
```shell
packer build windows-2k12r2/2k12r2.json
```

### Related projects

My main source of inspiration:

*   [https://github.com/chef/bento](https://github.com/chef/bento)

### License

Apache 2

### Author Information

Created in 2018 by diodonfrost.
