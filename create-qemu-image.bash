#!/bin/bash

qemu-img create -f qcow2 vhdd.qcow2 40G
#qemu-img create -f qcow2 -b vhdd_base.qcow2 vhdd_diff.qcow2
