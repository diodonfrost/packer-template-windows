# packer-template-windows

[![CI](https://github.com/diodonfrost/packer-template-windows/workflows/CI/badge.svg)](https://github.com/diodonfrost/packer-template-windows/actions)

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
-   [VirtualBox](https://www.virtualbox.org) (Virtualbox builder only)
-   [Qemu](https://www.qemu.org/) (Qemu builder only)
-   [Virtio iso](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/latest-virtio/virtio-win.iso) (Qemu builder only)

#### Using packer

***Qemu builder only,*** download virtio drivers:
```shell
wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/latest-virtio/virtio-win.iso
```

To build an windows 2k12r2 box with virtualbox provider:
```shell
make build-windows-2k12
```

To build an windows 10 box:
```shell
make build-windows-10
```

To build all windows box
```shell
make build-all
```

### Related projects

My main source of inspiration:

*   [https://github.com/chef/bento](https://github.com/chef/bento)

### License

Apache 2

### Author Information

Created in 2018 by diodonfrost.
