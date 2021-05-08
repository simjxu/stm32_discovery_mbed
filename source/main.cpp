/* mbed Microcontroller Library
 * Copyright (c) 2006-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <events/mbed_events.h>
#include <mbed.h>
#include "ble/BLE.h"

// BLE Services
#include "LEDService.h"
#include "sensorService.h"

// Sensors include
#include "stm32l475e_iot01_tsensor.h"
#include "stm32l475e_iot01_hsensor.h"
#include "stm32l475e_iot01_psensor.h"
#include "stm32l475e_iot01_magneto.h"
#include "stm32l475e_iot01_gyro.h"
#include "stm32l475e_iot01_accelero.h"


Serial pc(USBTX, USBRX);
Thread thread;

DigitalOut alivenessLED(LED1, 0);
DigitalOut actuatedLED(LED2, 0);

const static char     DEVICE_NAME[] = "LED and Sensors";        // static means it's only visible to this translation unit, main.cpp
static const uint16_t uuid16_list[] = {LEDService::LED_SERVICE_UUID, sensorService::SENSOR_SERVICE_UUID};

static EventQueue eventQueue(/* event count */ 10 * EVENTS_EVENT_SIZE);

LEDService *ledServicePtr;
sensorService *sensorServicePtr;

void disconnectionCallback(const Gap::DisconnectionCallbackParams_t *params)
{
    (void) params;
    BLE::Instance().gap().startAdvertising();
}

void blinkCallback(void)
{
    alivenessLED = !alivenessLED; /* Do blinky on LED1 to indicate system aliveness. */
}

/**
 * This callback allows the LEDService to receive updates to the ledState Characteristic.
 *
 * @param[in] params
 *     Information about the characterisitc being updated.
 */
void onDataWrittenCallback(const GattWriteCallbackParams *params) {
    if ((params->handle == ledServicePtr->getValueHandle()) && (params->len == 1)) {
        actuatedLED = *(params->data);
    }
}

// ------------------------------------------------------------------------------- WORK IN PROGRESS
/**
 * This callback allows the sensorService to update the sensor values.
 *
 * @param[in] params
 *     Information about the characterisitc being updated.
 */
// void onSensorReadingCallback(const GattWriteCallbackParams *params) {
//     if ((params->handle == ledServicePtr->getValueHandle()) && (params->len == 1)) {
//         actuatedLED = *(params->data);
//     }
// }

/**
 * This function is called when the ble initialization process has failled
 */
void onBleInitError(BLE &ble, ble_error_t error)
{
    /* Initialization error handling should go here */
}

/**
 * Callback triggered when the ble initialization process has finished
 */
void bleInitComplete(BLE::InitializationCompleteCallbackContext *params)
{
    BLE&        ble   = params->ble;
    ble_error_t error = params->error;

    if (error != BLE_ERROR_NONE) {
        /* In case of error, forward the error handling to onBleInitError */
        onBleInitError(ble, error);
        return;
    }

    /* Ensure that it is the default instance of BLE */
    if(ble.getInstanceID() != BLE::DEFAULT_INSTANCE) {
        return;
    }

    // Establish callback functions for certain actions
    ble.gap().onDisconnection(disconnectionCallback);
    ble.gattServer().onDataWritten(onDataWrittenCallback);

    // Initial values for Characteristics
    bool initialValueForLEDCharacteristic = false;
    float initialValueForSensorCharacteristic = 0.0f;

    // Service pointers -- why do we need this?
    ledServicePtr = new LEDService(ble, initialValueForLEDCharacteristic);
    sensorServicePtr = new sensorService(ble, initialValueForSensorCharacteristic);

    /* setup advertising */
    ble.gap().accumulateAdvertisingPayload(GapAdvertisingData::BREDR_NOT_SUPPORTED | GapAdvertisingData::LE_GENERAL_DISCOVERABLE);
    ble.gap().accumulateAdvertisingPayload(GapAdvertisingData::COMPLETE_LIST_16BIT_SERVICE_IDS, (uint8_t *)uuid16_list, sizeof(uuid16_list));
    ble.gap().accumulateAdvertisingPayload(GapAdvertisingData::COMPLETE_LOCAL_NAME, (uint8_t *)DEVICE_NAME, sizeof(DEVICE_NAME));
    ble.gap().setAdvertisingType(GapAdvertisingParams::ADV_CONNECTABLE_UNDIRECTED);
    ble.gap().setAdvertisingInterval(1000); /* 1000ms. */
    ble.gap().startAdvertising();
}

void scheduleBleEventsProcessing(BLE::OnEventsToProcessCallbackContext* context) {
    BLE &ble = BLE::Instance();
    eventQueue.call(Callback<void()>(&ble, &BLE::processEvents));
}

void ble_thread()
{
    // Blink LED every 500 ms to indicate device is alive
    eventQueue.call_every(500, blinkCallback);

    BLE &ble = BLE::Instance();
    ble.onEventsToProcess(scheduleBleEventsProcessing);
    ble.init(bleInitComplete);

    eventQueue.dispatch_forever();
}

int main()
{
    float sensor_value = 0;
    int16_t pDataXYZ[3] = {0};
    float pGyroDataXYZ[3] = {0};

    // Sensors work
    pc.printf("Start sensor init\n");

    BSP_TSENSOR_Init();
    BSP_HSENSOR_Init();
    BSP_PSENSOR_Init();

    BSP_MAGNETO_Init();
    BSP_GYRO_Init();
    BSP_ACCELERO_Init();

    // End Sensors work

    // Put ble on a separate thread, not sure if this is the right way to do it.
    thread.start(ble_thread);
    while(1) {
        // Printing sensor values
        sensor_value = BSP_TSENSOR_ReadTemp();
        pc.printf("\nTEMPERATURE = %.2f degC\n", sensor_value);

        sensor_value = BSP_HSENSOR_ReadHumidity();
        pc.printf("HUMIDITY    = %.2f %%\n", sensor_value);

        sensor_value = BSP_PSENSOR_ReadPressure();
        pc.printf("PRESSURE is = %.2f mBar\n", sensor_value);

        BSP_MAGNETO_GetXYZ(pDataXYZ);
        printf("\nMAGNETO_X = %d\n", pDataXYZ[0]);
        printf("MAGNETO_Y = %d\n", pDataXYZ[1]);
        printf("MAGNETO_Z = %d\n", pDataXYZ[2]);

        BSP_GYRO_GetXYZ(pGyroDataXYZ);
        printf("\nGYRO_X = %.2f\n", pGyroDataXYZ[0]);
        printf("GYRO_Y = %.2f\n", pGyroDataXYZ[1]);
        printf("GYRO_Z = %.2f\n", pGyroDataXYZ[2]);

        BSP_ACCELERO_AccGetXYZ(pDataXYZ);
        printf("\nACCELERO_X = %d\n", pDataXYZ[0]);
        printf("ACCELERO_Y = %d\n", pDataXYZ[1]);
        printf("ACCELERO_Z = %d\n", pDataXYZ[2]);

        wait(2);
    }

    return 0;
}
