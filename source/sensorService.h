

#ifndef __BLE_SENSOR_SERVICE_H__
#define __BLE_SENSOR_SERVICE_H__

class SensorService {
public:
    const static uint16_t SENSOR_SERVICE_UUID              = 0xB000;
    const static uint16_t SENSOR_STATE_CHARACTERISTIC_UUID = 0xB001;

    // Constructor. Colon means there is an initializer list before running constructor
    SensorService(BLEDevice &_ble, float initialValueForSensorCharacteristic) :
        ble(_ble), 
        valueBytes(initialValueForSensorCharacteristic), 
        tempMeasurement(GattCharacteristic::UUID_TEMPERATURE_MEASUREMENT_CHAR, (TemperatureValueBytes *)valueBytes.getPointer(), GattCharacteristic::BLE_GATT_CHAR_PROPERTIES_NOTIFY)
    {
        GattCharacteristic *charTable[] = {&tempMeasurement};
        GattService         sensorService(SENSOR_SERVICE_UUID, charTable, sizeof(charTable) / sizeof(GattCharacteristic *));
        ble.addService(sensorService);
    }

    GattAttribute::Handle_t getValueHandle() const
    {
        return tempMeasurement.getValueHandle();
    }

    void updateTemperature(float temperature) {
        if (ble.getGapState().connected) {
            valueBytes.updateTemperature(temperature);
            ble.gattServer().write(tempMeasurement.getValueHandle(), valueBytes.getPointer(), sizeof(TemperatureValueBytes));
        }
    }

private:
    
    /* Private internal representation for the bytes used to work with the vaulue of the temperature characteristic. 
     * Copied over from project "mbed-os-example-ble-Thermometer"
    */
    struct TemperatureValueBytes {
        static const unsigned OFFSET_OF_FLAGS    = 0;
        static const unsigned OFFSET_OF_VALUE    = OFFSET_OF_FLAGS + sizeof(uint8_t);
        static const unsigned SIZEOF_VALUE_BYTES = sizeof(uint8_t) + sizeof(float);

        static const unsigned TEMPERATURE_UNITS_FLAG_POS = 0;
        static const unsigned TIMESTAMP_FLAG_POS         = 1;
        static const unsigned TEMPERATURE_TYPE_FLAG_POS  = 2;

        static const uint8_t  TEMPERATURE_UNITS_CELSIUS    = 0;
        static const uint8_t  TEMPERATURE_UNITS_FAHRENHEIT = 1;

        TemperatureValueBytes(float initialTemperature) : bytes() {
            /* Assumption: temperature values are expressed in celsius */
            bytes[OFFSET_OF_FLAGS] =  (TEMPERATURE_UNITS_CELSIUS << TEMPERATURE_UNITS_FLAG_POS) |
                                      (false << TIMESTAMP_FLAG_POS) |
                                      (false << TEMPERATURE_TYPE_FLAG_POS);
            updateTemperature(initialTemperature);
        }

        void updateTemperature(float temp) {
            // uint32_t temp_ieee11073 = quick_ieee11073_from_float(temp);
            // memcpy(&bytes[OFFSET_OF_VALUE], &temp_ieee11073, sizeof(float));
            memcpy(&bytes[OFFSET_OF_VALUE], &temp, sizeof(float));
        }

        uint8_t       *getPointer(void) {
            return bytes;
        }

        const uint8_t *getPointer(void) const {
            return bytes;
        }

private:
        /**
         * @brief A very quick conversion between a float temperature and 11073-20601 FLOAT-Type.
         * @param temperature The temperature as a float.
         * @return The temperature in 11073-20601 FLOAT-Type format.
         */
        uint32_t quick_ieee11073_from_float(float temperature) {
            uint8_t  exponent = 0xFE; //Exponent is -2
            uint32_t mantissa = (uint32_t)(temperature * 100);

            return (((uint32_t)exponent) << 24) | mantissa;
        }

        /* First byte: 8-bit flags. Second field is a float holding the temperature value. */
        /* See https://developer.bluetooth.org/gatt/characteristics/Pages/CharacteristicViewer.aspx?u=org.bluetooth.characteristic.temperature_measurement.xml */
        uint8_t bytes[SIZEOF_VALUE_BYTES];
    };

protected:
    BLE                         &ble;
    TemperatureValueBytes           valueBytes;
    ReadOnlyGattCharacteristic<TemperatureValueBytes>  tempMeasurement;
};

#endif /* #ifndef __BLE_LED_SERVICE_H__ */
