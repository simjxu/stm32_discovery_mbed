#!/bin/bash

if [ "$1" == "compile" ]; then
    echo "compiling only"
    mbed compile
elif [ "$1" == "flash" ]; then
    echo "flashing only"
    cp BUILD/DISCO_L475VG_IOT01A/GCC_ARM/stm32_discovery_mbed.bin /Volumes/DIS_L4IOT
else
    echo "compiling and flashing"
    mbed compile
    cp BUILD/DISCO_L475VG_IOT01A/GCC_ARM/stm32_discovery_mbed.bin /Volumes/DIS_L4IOT
fi
