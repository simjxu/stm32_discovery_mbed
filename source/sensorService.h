

#ifndef __BLE_SENSOR_SERVICE_H__
#define __BLE_SENSOR_SERVICE_H__

class sensorService {
public:
    const static uint16_t SENSOR_SERVICE_UUID              = 0xB000;
    const static uint16_t SENSOR_STATE_CHARACTERISTIC_UUID = 0xB001;

    sensorService(BLEDevice &_ble, float initialValueForSensorCharacteristic) :
        ble(_ble), sensorValue(SENSOR_STATE_CHARACTERISTIC_UUID, &initialValueForSensorCharacteristic)
    {
        GattCharacteristic *charTable[] = {&sensorValue};
        GattService         sensorService(SENSOR_SERVICE_UUID, charTable, sizeof(charTable) / sizeof(GattCharacteristic *));
        ble.addService(sensorService);
    }

    GattAttribute::Handle_t getValueHandle() const
    {
        return sensorValue.getValueHandle();
    }

private:
    BLEDevice                         &ble;
    ReadOnlyGattCharacteristic<float> sensorValue;
};

#endif /* #ifndef __BLE_LED_SERVICE_H__ */
