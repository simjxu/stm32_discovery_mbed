# stm32_discovery_mbed
Porting discovery to Mbed OS
This code is meant to run on B-L475E-IOT01A, STM32 Discovery IoT node.
Target: DISCO_L475VG_IOT01A
### Instructions
1. Make sure you have gcc-arm-none-eabi-6-2017-q1-update. Download this from the ARM website
2. `git submodule update --init --recursive` will download the appropriate libraries (specific commit) for mbed-os and the BLE library
3. `make` to compile
4. Drag and drop the .bin file inside `/BUILD` to your USB connected B-L475E discovery node. (says DIS_L4IOT on my mac) 

### Running Docker
The Dockerfile has everything needed to compile the binary. Download Docker for VSCode, then 
1. Right click the Dockerfile and select "Build Image"
2. Switch to Docker tab, right click the image >> "Run Interactive"
3. Enter `make` on the terminal
4. `docker cp <containerId>:/file/path/within/container /host/path/target` to copy binary
e.g. docker cp d4b1476b367e:/work/BUILD/mbed-os-test.bin ~/Projects/Github-simjxu/stm32_discovery_mbed