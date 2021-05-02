#!/bin/bash

if [ "$1" == "compile" ]; then
    echo "compiling only"
    make
elif [ "$1" == "flash" ]; then
    echo "flashing only"
    cp BUILD/stm32_discovery_mbed.bin /Volumes/DIS_L4IOT
else
    echo "compiling and flashing"
    make
    cp BUILD/stm32_discovery_mbed.bin /Volumes/DIS_L4IOT
fi
