#!/bin/bash

sudo cat /sys/firmware/acpi/tables/MSDM > my-msdm.bin
chmod a-w my-msdm.bin
