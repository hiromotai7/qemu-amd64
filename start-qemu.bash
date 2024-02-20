#!/bin/bash

SCRIPT=$(readlink -f $0)
DIR0=$(cd ${SCRIPT%/*}; pwd)
cd ${DIR0}

#CFG=qemu-pcie-emulated-graphic.cfg
CFG=qemu-pcie-virtio-graphic.cfg
QDISPLAY="-display vnc=127.0.0.1:0"

## readonly, written files are in tmpfs
SNAPSHOT="-snapshot"

## (qemu) stop
## (qemu) savevm latest
#LOADVM="-loadvm latest"

#UPDATE_CONFIG="-writeconfig qemu-dirty.cfg"

[ -n "$SNAPSHOT" ] && echo "SNAPSHOT MODE"
echo "please start rdesktop after 5sec"

qemu-system-x86_64 \
    -nodefaults \
    -acpitable file=my-msdm.bin \
    -readconfig ${CFG} \
    $UPDATE_CONFIG \
    $QDISPLAY \
    $SNAPSHOT \
    $LOADVM \
    -monitor stdio -S $*
