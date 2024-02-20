#!/bin/bash

SCRIPT=$(readlink -f $0)
cd ${SCRIPT%/*}

#CFG=qemu-pcie-emulated-graphic.cfg
CFG=qemu-pcie-virtio-graphic.cfg

UPDATE_CONFIG="-writeconfig qemu-dirty.cfg"


qemu-system-x86_64 \
    -nodefaults \
    -acpitable file=./my-msdm.bin \
    -readconfig ${CFG} \
    $UPDATE_CONFIG \
    -monitor stdio -S $*
