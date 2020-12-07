#!/bin/bash

CFG=qemu-pcie-emulated-graphic.cfg
#CFG=qemu-pcie-virtio-graphic.cfg

sudo tunctl -t tap0 -g netdev

qemu-system-x86_64 \
    -nodefaults \
    -readconfig ${CFG} \
    -monitor stdio -S

sudo tunctl -d tap0
