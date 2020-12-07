#!/bin/bash


sudo tunctl -t tap0 -g netdev

qemu-system-x86_64 \
    -nodefaults \
    -readconfig qemu-pcie-virtio-graphic.cfg \
    -monitor stdio -S

sudo tunctl -d tap0
