#!/bin/bash

sudo apt install \
    qemu-kvm \
    qemu-system-x86 \
    uml-utilities \

sudo usermod -a -G kvm,netdev $(id -un)
