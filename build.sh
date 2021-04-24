#!/bin/bash

if [ "$1" == "compile" ]; then
    echo "compiling only"
    make
elif [ "$1" == "flash" ]; then
    echo "flashing only"
    cp BUILD/mbed-os-test.bin /Volumes/DIS_L4IOT
else
    echo "compiling and flashing"
    make
    cp BUILD/mbed-os-test.bin /Volumes/DIS_L4IOT
fi
