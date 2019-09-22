#!/bin/bash

create_vhdd() {
    qemu-img create -f qcow2 vhdd.qcow2 4G
}

qemu-system-x86_64 \
    -nodefaults \
    -readconfig qemu-pcie-virtio-graphic.cfg \
    -monitor stdio -S
