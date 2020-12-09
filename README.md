# qemu-amd64
samples for qemu setting

# ENGLISH

## get started

```sh
$ git clone https://github.com/hiromotai7/qemu-amd64.git
$ cd qemu-amd64.git
$ ./create-qemu-image.bash
$ ./start-qemu.bash
```

## how to boot windows

What you need to before booting QEMU are:
* to save OEM information from your computer via /sysfs to a binary file.
* to download the virtio-windows.iso file from Internet if you use virtio.
* to edit start-qemu.bash to use qemu-pcie-emulated-graphic.cfg instead of qemu-pcie-virtio-graphic.cfg if you DO NOT use virtio.

```sh
$ ./create-qemu-image.bash
$ ./create-msdm-bin.bash
$ ./start-qemu.bash
```

# Japanese

## get started

```sh
$ git clone https://github.com/hiromotai7/qemu-amd64.git
$ cd qemu-amd64.git
$ ./create-qemu-image.bash
$ ./start-qemu.bash
```

## how to boot windows

What you need to before booting QEMU are:
* to save OEM information from your computer via /sysfs to a binary file.
* to download the virtio-windows.iso file from Internet if you use virtio.
* to edit start-qemu.bash to use qemu-pcie-emulated-graphic.cfg instead of qemu-pcie-virtio-graphic.cfg if you DO NOT use virtio.

```sh
$ ./create-qemu-image.bash
$ ./create-msdm-bin.bash
$ ./start-qemu.bash
```

# LICENSE

plrease see LICENSE file.
