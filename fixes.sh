#!/bin/bash

# Switches out the tools folder with a python3 based file for docker
rm -r ./mbed-os/tools
cp -r ./tools ./mbed-os/tools