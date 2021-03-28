# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..

# Boiler-plate
###############################################################################
# Project settings

PROJECT := mbed-os-test


# Project settings
###############################################################################
# Objects and Paths

OBJECTS += ./mbed-os/drivers/AnalogIn.o
OBJECTS += ./mbed-os/drivers/BusIn.o
OBJECTS += ./mbed-os/drivers/BusInOut.o
OBJECTS += ./mbed-os/drivers/BusOut.o
OBJECTS += ./mbed-os/drivers/CAN.o
OBJECTS += ./mbed-os/drivers/Ethernet.o
OBJECTS += ./mbed-os/drivers/FlashIAP.o
OBJECTS += ./mbed-os/drivers/I2C.o
OBJECTS += ./mbed-os/drivers/I2CSlave.o
OBJECTS += ./mbed-os/drivers/InterruptIn.o
OBJECTS += ./mbed-os/drivers/InterruptManager.o
OBJECTS += ./mbed-os/drivers/RawSerial.o
OBJECTS += ./mbed-os/drivers/SPI.o
OBJECTS += ./mbed-os/drivers/SPISlave.o
OBJECTS += ./mbed-os/drivers/Serial.o
OBJECTS += ./mbed-os/drivers/SerialBase.o
OBJECTS += ./mbed-os/drivers/Ticker.o
OBJECTS += ./mbed-os/drivers/Timeout.o
OBJECTS += ./mbed-os/drivers/Timer.o
OBJECTS += ./mbed-os/drivers/TimerEvent.o
OBJECTS += ./mbed-os/drivers/UARTSerial.o
OBJECTS += ./mbed-os/events/EventQueue.o
OBJECTS += ./mbed-os/events/equeue/equeue.o
OBJECTS += ./mbed-os/events/equeue/equeue_mbed.o
OBJECTS += ./mbed-os/events/equeue/equeue_posix.o
OBJECTS += ./mbed-os/features/FEATURE_BLE/source/BLE.o
OBJECTS += ./mbed-os/features/FEATURE_BLE/source/BLEInstanceBase.o
OBJECTS += ./mbed-os/features/FEATURE_BLE/source/DiscoveredCharacteristic.o
OBJECTS += ./mbed-os/features/FEATURE_BLE/source/GapScanningParams.o
OBJECTS += ./mbed-os/features/FEATURE_BLE/source/services/DFUService.o
OBJECTS += ./mbed-os/features/FEATURE_BLE/source/services/UARTService.o
OBJECTS += ./mbed-os/features/FEATURE_BLE/source/services/URIBeaconConfigService.o
OBJECTS += ./mbed-os/features/filesystem/Dir.o
OBJECTS += ./mbed-os/features/filesystem/File.o
OBJECTS += ./mbed-os/features/filesystem/FileSystem.o
OBJECTS += ./mbed-os/features/filesystem/bd/ChainingBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/HeapBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/MBRBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/bd/SlicingBlockDevice.o
OBJECTS += ./mbed-os/features/filesystem/fat/ChaN/ccsbcs.o
OBJECTS += ./mbed-os/features/filesystem/fat/ChaN/ff.o
OBJECTS += ./mbed-os/features/filesystem/fat/FATFileSystem.o
OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_metrics.o
OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_serial.o
OBJECTS += ./mbed-os/features/frameworks/greentea-client/source/greentea_test_env.o
OBJECTS += ./mbed-os/features/frameworks/unity/source/unity.o
OBJECTS += ./mbed-os/features/frameworks/utest/mbed-utest-shim.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/unity_handler.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_case.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_default_handlers.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_greentea_handlers.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_harness.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_shim.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_stack_trace.o
OBJECTS += ./mbed-os/features/frameworks/utest/source/utest_types.o
OBJECTS += ./mbed-os/features/mbedtls/platform/src/mbed_trng.o
OBJECTS += ./mbed-os/features/mbedtls/src/aes.o
OBJECTS += ./mbed-os/features/mbedtls/src/aesni.o
OBJECTS += ./mbed-os/features/mbedtls/src/arc4.o
OBJECTS += ./mbed-os/features/mbedtls/src/asn1parse.o
OBJECTS += ./mbed-os/features/mbedtls/src/asn1write.o
OBJECTS += ./mbed-os/features/mbedtls/src/base64.o
OBJECTS += ./mbed-os/features/mbedtls/src/bignum.o
OBJECTS += ./mbed-os/features/mbedtls/src/blowfish.o
OBJECTS += ./mbed-os/features/mbedtls/src/camellia.o
OBJECTS += ./mbed-os/features/mbedtls/src/ccm.o
OBJECTS += ./mbed-os/features/mbedtls/src/certs.o
OBJECTS += ./mbed-os/features/mbedtls/src/cipher.o
OBJECTS += ./mbed-os/features/mbedtls/src/cipher_wrap.o
OBJECTS += ./mbed-os/features/mbedtls/src/cmac.o
OBJECTS += ./mbed-os/features/mbedtls/src/ctr_drbg.o
OBJECTS += ./mbed-os/features/mbedtls/src/debug.o
OBJECTS += ./mbed-os/features/mbedtls/src/des.o
OBJECTS += ./mbed-os/features/mbedtls/src/dhm.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecdh.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecdsa.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecjpake.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecp.o
OBJECTS += ./mbed-os/features/mbedtls/src/ecp_curves.o
OBJECTS += ./mbed-os/features/mbedtls/src/entropy.o
OBJECTS += ./mbed-os/features/mbedtls/src/entropy_poll.o
OBJECTS += ./mbed-os/features/mbedtls/src/error.o
OBJECTS += ./mbed-os/features/mbedtls/src/gcm.o
OBJECTS += ./mbed-os/features/mbedtls/src/havege.o
OBJECTS += ./mbed-os/features/mbedtls/src/hmac_drbg.o
OBJECTS += ./mbed-os/features/mbedtls/src/md.o
OBJECTS += ./mbed-os/features/mbedtls/src/md2.o
OBJECTS += ./mbed-os/features/mbedtls/src/md4.o
OBJECTS += ./mbed-os/features/mbedtls/src/md5.o
OBJECTS += ./mbed-os/features/mbedtls/src/md_wrap.o
OBJECTS += ./mbed-os/features/mbedtls/src/memory_buffer_alloc.o
OBJECTS += ./mbed-os/features/mbedtls/src/net_sockets.o
OBJECTS += ./mbed-os/features/mbedtls/src/oid.o
OBJECTS += ./mbed-os/features/mbedtls/src/padlock.o
OBJECTS += ./mbed-os/features/mbedtls/src/pem.o
OBJECTS += ./mbed-os/features/mbedtls/src/pk.o
OBJECTS += ./mbed-os/features/mbedtls/src/pk_wrap.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkcs11.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkcs12.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkcs5.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkparse.o
OBJECTS += ./mbed-os/features/mbedtls/src/pkwrite.o
OBJECTS += ./mbed-os/features/mbedtls/src/platform.o
OBJECTS += ./mbed-os/features/mbedtls/src/ripemd160.o
OBJECTS += ./mbed-os/features/mbedtls/src/rsa.o
OBJECTS += ./mbed-os/features/mbedtls/src/sha1.o
OBJECTS += ./mbed-os/features/mbedtls/src/sha256.o
OBJECTS += ./mbed-os/features/mbedtls/src/sha512.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cache.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_ciphersuites.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cli.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_cookie.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_srv.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_ticket.o
OBJECTS += ./mbed-os/features/mbedtls/src/ssl_tls.o
OBJECTS += ./mbed-os/features/mbedtls/src/threading.o
OBJECTS += ./mbed-os/features/mbedtls/src/timing.o
OBJECTS += ./mbed-os/features/mbedtls/src/version.o
OBJECTS += ./mbed-os/features/mbedtls/src/version_features.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_create.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_crl.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_crt.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509_csr.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509write_crt.o
OBJECTS += ./mbed-os/features/mbedtls/src/x509write_csr.o
OBJECTS += ./mbed-os/features/mbedtls/src/xtea.o
OBJECTS += ./mbed-os/features/mbedtls/targets/TARGET_STM/aes_alt.o
OBJECTS += ./mbed-os/features/mbedtls/targets/TARGET_STM/sha1_alt.o
OBJECTS += ./mbed-os/features/mbedtls/targets/TARGET_STM/sha256_alt.o
OBJECTS += ./mbed-os/features/netsocket/NetworkInterface.o
OBJECTS += ./mbed-os/features/netsocket/NetworkStack.o
OBJECTS += ./mbed-os/features/netsocket/Socket.o
OBJECTS += ./mbed-os/features/netsocket/SocketAddress.o
OBJECTS += ./mbed-os/features/netsocket/TCPServer.o
OBJECTS += ./mbed-os/features/netsocket/TCPSocket.o
OBJECTS += ./mbed-os/features/netsocket/UDPSocket.o
OBJECTS += ./mbed-os/features/netsocket/WiFiAccessPoint.o
OBJECTS += ./mbed-os/features/netsocket/cellular/generic_modem_driver/OnboardCellularInterface.o
OBJECTS += ./mbed-os/features/netsocket/cellular/generic_modem_driver/PPPCellularInterface.o
OBJECTS += ./mbed-os/features/netsocket/cellular/generic_modem_driver/UARTCellularInterface.o
OBJECTS += ./mbed-os/features/netsocket/nsapi_dns.o
OBJECTS += ./mbed-os/hal/mbed_flash_api.o
OBJECTS += ./mbed-os/hal/mbed_gpio.o
OBJECTS += ./mbed-os/hal/mbed_lp_ticker_api.o
OBJECTS += ./mbed-os/hal/mbed_pinmap_common.o
OBJECTS += ./mbed-os/hal/mbed_ticker_api.o
OBJECTS += ./mbed-os/hal/mbed_us_ticker_api.o
OBJECTS += ./mbed-os/platform/ATCmdParser.o
OBJECTS += ./mbed-os/platform/CallChain.o
OBJECTS += ./mbed-os/platform/FileBase.o
OBJECTS += ./mbed-os/platform/FileHandle.o
OBJECTS += ./mbed-os/platform/FilePath.o
OBJECTS += ./mbed-os/platform/FileSystemHandle.o
OBJECTS += ./mbed-os/platform/LocalFileSystem.o
OBJECTS += ./mbed-os/platform/Stream.o
OBJECTS += ./mbed-os/platform/mbed_alloc_wrappers.o
OBJECTS += ./mbed-os/platform/mbed_application.o
OBJECTS += ./mbed-os/platform/mbed_assert.o
OBJECTS += ./mbed-os/platform/mbed_board.o
OBJECTS += ./mbed-os/platform/mbed_critical.o
OBJECTS += ./mbed-os/platform/mbed_error.o
OBJECTS += ./mbed-os/platform/mbed_interface.o
OBJECTS += ./mbed-os/platform/mbed_mem_trace.o
OBJECTS += ./mbed-os/platform/mbed_mktime.o
OBJECTS += ./mbed-os/platform/mbed_poll.o
OBJECTS += ./mbed-os/platform/mbed_retarget.o
OBJECTS += ./mbed-os/platform/mbed_rtc_time.o
OBJECTS += ./mbed-os/platform/mbed_sdk_boot.o
OBJECTS += ./mbed-os/platform/mbed_semihost_api.o
OBJECTS += ./mbed-os/platform/mbed_stats.o
OBJECTS += ./mbed-os/platform/mbed_wait_api_no_rtos.o
OBJECTS += ./mbed-os/platform/mbed_wait_api_rtos.o
OBJECTS += ./mbed-os/rtos/Mutex.o
OBJECTS += ./mbed-os/rtos/RtosTimer.o
OBJECTS += ./mbed-os/rtos/Semaphore.o
OBJECTS += ./mbed-os/rtos/Thread.o
OBJECTS += ./mbed-os/rtos/mbed_boot.o
OBJECTS += ./mbed-os/rtos/rtos_idle.o
OBJECTS += ./mbed-os/rtos/rtx4/cmsis_os1.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/RTX_Config.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/irq_cm4f.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rt_OsEventObserver.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_delay.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_evflags.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_evr.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_kernel.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_lib.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_memory.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_mempool.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_msgqueue.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_mutex.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_semaphore.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_system.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_thread.o
OBJECTS += ./mbed-os/rtos/rtx5/TARGET_CORTEX_M/rtx_timer.o
OBJECTS += ./mbed-os/rtos/rtx5/mbed_rtx_handlers.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG/TARGET_DISCO_L475VG_IOT01A/PeripheralPins.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG/TARGET_DISCO_L475VG_IOT01A/system_stm32l4xx.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG/device/TOOLCHAIN_GCC_ARM/startup_stm32l475xx.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/analogin_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/analogout_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_adc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_adc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_can.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_comp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_cortex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_crc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_crc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_cryp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_cryp_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_dac.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_dac_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_dcmi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_dfsdm.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_dma.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_dma2d.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_firewall.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_flash.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_flash_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_flash_ramfunc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_gpio.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_hash.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_hash_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_hcd.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_i2c.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_i2c_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_irda.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_iwdg.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_lcd.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_lptim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_msp_template.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_nand.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_nor.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_opamp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_opamp_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_pcd.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_pcd_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_pwr.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_pwr_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_qspi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_rcc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_rcc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_rng.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_rtc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_rtc_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_sai.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_sd.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_smartcard.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_smartcard_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_smbus.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_spi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_spi_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_sram.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_swpmi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_tim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_tim_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_tsc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_uart.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_uart_ex.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_usart.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_hal_wwdg.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_adc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_comp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_crc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_crs.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_dac.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_dma.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_dma2d.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_exti.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_fmc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_gpio.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_i2c.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_lptim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_lpuart.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_opamp.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_pwr.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_rcc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_rng.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_rtc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_sdmmc.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_spi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_swpmi.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_tim.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_usart.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_usb.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/device/stm32l4xx_ll_utils.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/flash_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/gpio_irq_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/pwmout_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/serial_device.o
OBJECTS += ./mbed-os/targets/TARGET_STM/TARGET_STM32L4/spi_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/analogout_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/can_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/gpio_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/gpio_irq_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/hal_tick_16b.o
OBJECTS += ./mbed-os/targets/TARGET_STM/hal_tick_32b.o
OBJECTS += ./mbed-os/targets/TARGET_STM/i2c_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/lp_ticker.o
OBJECTS += ./mbed-os/targets/TARGET_STM/mbed_overrides.o
OBJECTS += ./mbed-os/targets/TARGET_STM/pinmap.o
OBJECTS += ./mbed-os/targets/TARGET_STM/port_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/pwmout_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/rtc_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/serial_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/sleep.o
OBJECTS += ./mbed-os/targets/TARGET_STM/stm_spi_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/trng_api.o
OBJECTS += ./mbed-os/targets/TARGET_STM/us_ticker_16b.o
OBJECTS += ./mbed-os/targets/TARGET_STM/us_ticker_32b.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/BlueNRGDevice.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/BlueNRGDiscoveredCharacteristic.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/BlueNRGGap.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/BlueNRGGattClient.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/BlueNRGGattConnectionClient.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/BlueNRGGattServer.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/ble_hci.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/ble_hci_le.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/controller/bluenrg_gap_aci.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/controller/bluenrg_gatt_aci.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/controller/bluenrg_hal_aci.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/controller/bluenrg_l2cap_aci.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/controller/bluenrg_updater_aci.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/controller/bluenrg_utils.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/utils/ble_gp_timer.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/utils/ble_list.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/bluenrg-hci/utils/ble_osal.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/platform/ble_clock.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/platform/btle.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/platform/stm32_bluenrg_ble.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/utils/ble_payload.o
OBJECTS += ./ble-x-nucleo-idb0xa1/source/utils/ble_utils.o
OBJECTS += ./source/main.o


INCLUDE_PATHS += -I../
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I.././mbed-os
INCLUDE_PATHS += -I.././mbed-os/cmsis
INCLUDE_PATHS += -I.././mbed-os/cmsis/TARGET_CORTEX_M
INCLUDE_PATHS += -I.././mbed-os/cmsis/TARGET_CORTEX_M/TOOLCHAIN_GCC
INCLUDE_PATHS += -I.././mbed-os/drivers
INCLUDE_PATHS += -I.././mbed-os/events
INCLUDE_PATHS += -I.././mbed-os/events/equeue
INCLUDE_PATHS += -I.././mbed-os/features
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_BLE
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_BLE/ble
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_BLE/ble/services
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_BLE/source
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_BLE/source/services
INCLUDE_PATHS += -I.././mbed-os/features/FEATURE_BLE/targets
INCLUDE_PATHS += -I.././mbed-os/features/filesystem
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/bd
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/fat
INCLUDE_PATHS += -I.././mbed-os/features/filesystem/fat/ChaN
INCLUDE_PATHS += -I.././mbed-os/features/frameworks
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client/greentea-client
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/greentea-client/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/unity/unity
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest/source
INCLUDE_PATHS += -I.././mbed-os/features/frameworks/utest/utest
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/importer
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/inc
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/inc/mbedtls
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform/inc
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/platform/src
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/src
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/targets
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/targets/TARGET_STM
INCLUDE_PATHS += -I.././mbed-os/features/mbedtls/targets/TARGET_STM/TARGET_STM32L4
INCLUDE_PATHS += -I.././mbed-os/features/nanostack
INCLUDE_PATHS += -I.././mbed-os/features/netsocket
INCLUDE_PATHS += -I.././mbed-os/features/netsocket/cellular
INCLUDE_PATHS += -I.././mbed-os/features/netsocket/cellular/generic_modem_driver
INCLUDE_PATHS += -I.././mbed-os/features/netsocket/cellular/utils
INCLUDE_PATHS += -I.././mbed-os/features/storage
INCLUDE_PATHS += -I.././mbed-os/hal
INCLUDE_PATHS += -I.././mbed-os/hal/storage_abstraction
INCLUDE_PATHS += -I.././mbed-os/platform
INCLUDE_PATHS += -I.././mbed-os/rtos
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx4
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx5
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx5/TARGET_CORTEX_M
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx5/TARGET_CORTEX_M/TARGET_RTOS_M4_M7
INCLUDE_PATHS += -I.././mbed-os/rtos/rtx5/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC
INCLUDE_PATHS += -I.././mbed-os/targets
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32L4
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG/TARGET_DISCO_L475VG_IOT01A
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG/device
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG/device/TOOLCHAIN_GCC_ARM
INCLUDE_PATHS += -I.././mbed-os/targets/TARGET_STM/TARGET_STM32L4/device
INCLUDE_PATHS += -I.././shields
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/bluenrg
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/bluenrg/bluenrg-hci
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/bluenrg/platform
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/bluenrg/utils
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/source
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/source/bluenrg-hci
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/source/bluenrg-hci/hci/controller
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/source/bluenrg-hci/utils
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/source/platform
INCLUDE_PATHS += -I.././ble-x-nucleo-idb0xa1/source/utils
INCLUDE_PATHS += -I.././source

LIBRARY_PATHS :=
LIBRARIES :=
LINKER_SCRIPT ?= .././mbed-os/targets/TARGET_STM/TARGET_STM32L4/TARGET_STM32L475xG/device/TOOLCHAIN_GCC_ARM/STM32L475XX.ld

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = 'arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O0' '-g3' '-DMBED_DEBUG' '-DMBED_TRAP_ERRORS_ENABLED=1' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
CC      = 'arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O0' '-g3' '-DMBED_DEBUG' '-DMBED_TRAP_ERRORS_ENABLED=1' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
CPP     = 'arm-none-eabi-g++' '-std=gnu++98' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O0' '-g3' '-DMBED_DEBUG' '-DMBED_TRAP_ERRORS_ENABLED=1' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
LD      = 'arm-none-eabi-gcc'
ELF2BIN = 'arm-none-eabi-objcopy'
PREPROC = 'arm-none-eabi-cpp' '-E' '-P' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,_malloc_r' '-Wl,--wrap,_free_r' '-Wl,--wrap,_realloc_r' '-Wl,--wrap,_memalign_r' '-Wl,--wrap,_calloc_r' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-Wl,-n' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'


C_FLAGS += -std=gnu99
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -D__MBED__=1
C_FLAGS += -DBLUENRG_PIN_SPI_RESET=PA_8
C_FLAGS += -D__FPU_PRESENT=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -DUSBHOST_OTHER
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DTARGET_RTOS_M4_M7
C_FLAGS += -DDEVICE_LOWPOWERTIMER=1
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DBLUENRG_PIN_SPI_MOSI=PC_12
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DDEVICE_I2C_ASYNCH=1
C_FLAGS += -DBLUENRG_PIN_SPI_nCS=PD_13
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DTARGET_DEBUG
C_FLAGS += -DBLUENRG_PIN_SPI_MISO=PC_11
C_FLAGS += -DTARGET_LIKE_CORTEX_M4
C_FLAGS += -DDEVICE_ANALOGOUT=1
C_FLAGS += -DTARGET_M4
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DTARGET_STM32L475xG
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DFEATURE_BLE=1
C_FLAGS += -DTARGET_STM32L4
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1616889143.93
C_FLAGS += -DDEVICE_SPI_ASYNCH=1
C_FLAGS += -DTARGET_ST_BLUENRG
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DBLUENRG_PIN_SPI_IRQ=PE_6
C_FLAGS += -DTARGET_DISCO_L475VG_IOT01A
C_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -D__CORTEX_M4
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DTARGET_FAMILY_STM32
C_FLAGS += -DTARGET_FF_ARDUINO
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DTARGET_STM
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -DDEVICE_TRNG=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_CAN=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DBLUENRG_PIN_SPI_SCK=PC_10
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DTARGET_STM32L475VG
C_FLAGS += -DARM_MATH_CM4
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=gnu++98
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DBLUENRG_PIN_SPI_RESET=PA_8
CXX_FLAGS += -D__FPU_PRESENT=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -DUSBHOST_OTHER
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DTARGET_RTOS_M4_M7
CXX_FLAGS += -DDEVICE_LOWPOWERTIMER=1
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DBLUENRG_PIN_SPI_MOSI=PC_12
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DDEVICE_I2C_ASYNCH=1
CXX_FLAGS += -DBLUENRG_PIN_SPI_nCS=PD_13
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DTARGET_DEBUG
CXX_FLAGS += -DBLUENRG_PIN_SPI_MISO=PC_11
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M4
CXX_FLAGS += -DDEVICE_ANALOGOUT=1
CXX_FLAGS += -DTARGET_M4
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DTARGET_STM32L475xG
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DFEATURE_BLE=1
CXX_FLAGS += -DTARGET_STM32L4
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1616889143.93
CXX_FLAGS += -DDEVICE_SPI_ASYNCH=1
CXX_FLAGS += -DTARGET_ST_BLUENRG
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DBLUENRG_PIN_SPI_IRQ=PE_6
CXX_FLAGS += -DTARGET_DISCO_L475VG_IOT01A
CXX_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -D__CORTEX_M4
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DTARGET_FAMILY_STM32
CXX_FLAGS += -DTARGET_FF_ARDUINO
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DTARGET_STM
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -DDEVICE_TRNG=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_CAN=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DBLUENRG_PIN_SPI_SCK=PC_10
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DTARGET_STM32L475VG
CXX_FLAGS += -DARM_MATH_CM4
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -DTRANSACTION_QUEUE_SIZE_SPI=2
ASM_FLAGS += -D__CORTEX_M4
ASM_FLAGS += -DBLUENRG_PIN_SPI_nCS=PD_13
ASM_FLAGS += -DARM_MATH_CM4
ASM_FLAGS += -DBLUENRG_PIN_SPI_RESET=PA_8
ASM_FLAGS += -D__FPU_PRESENT=1
ASM_FLAGS += -DUSBHOST_OTHER
ASM_FLAGS += -DBLUENRG_PIN_SPI_MOSI=PC_12
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -DBLUENRG_PIN_SPI_MISO=PC_11
ASM_FLAGS += -DBLUENRG_PIN_SPI_SCK=PC_10
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -DBLUENRG_PIN_SPI_IRQ=PE_6


LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_memalign_r -Wl,--wrap,_calloc_r -Wl,--wrap,exit -Wl,--wrap,atexit -Wl,-n -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp 
LD_SYS_LIBS :=-Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys -Wl,--end-group

# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<


$(PROJECT).link_script.ld: $(LINKER_SCRIPT)
	@$(PREPROC) $< -o $@



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(PROJECT).link_script.ld 
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter %.ld, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@


# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
