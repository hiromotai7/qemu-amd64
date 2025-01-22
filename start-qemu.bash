#!/bin/bash

SCRIPT=$(readlink -f $0)
DIR0=$(cd ${SCRIPT%/*}; pwd)
cd ${DIR0}

#CFG=qemu-pcie-emulated-graphic.cfg
CFG=qemu-pcie-virtio-graphic.cfg
QDISPLAY="-display vnc=127.0.0.1:0"

## CPU MODEL (see: qemu-cpu-models.html)
#CPU_HOST="host"
#CPU_INTEL2015="Skylake-Client"
#CPU_INTEL2014="Broadwel"
#CPU_INTEL2013="Haswell"
#CPU_AMD2017="EPYC"
#CPU_AMD2012="Opteron_G5"
#CPU_AMD2011="Opteron_G4"
CPU_MODEL="host"

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
    -cpu ${CPU_MODEL} \
    -acpitable file=my-msdm.bin \
    -readconfig ${CFG} \
    $UPDATE_CONFIG \
    $QDISPLAY \
    $SNAPSHOT \
    $LOADVM \
    -monitor stdio -S $*
