#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>
#ifndef SIMULATOR
#include "data_queues.h"
#endif

#ifdef SIMULATOR

Model sharedModel;

Model::Model()
    : modelListener(0),
      leftTurnSignal(false),
      rightTurnSignal(false),
      rpm(0)
{
}

void Model::tick()
{

}

bool Model::isLeftTurnSignal() const
{
    return leftTurnSignal;
}
void Model::setLeftTurnSignal(bool on)
{
    leftTurnSignal = on;
}

void Model::setRPM(int value)
{
    rpm = value;
}

int Model::getRPM() const
{
    return rpm;
}

bool Model::isRightTurnSignal() const
{
    return rightTurnSignal;
}
void Model::setRightTurnSignal(bool on)
{
    rightTurnSignal = on;
}

void Model::setRegenEn(bool on) {
    regen = on;
}

bool Model::isRegenEn() const 
{
    return regen;
}

bool Model::isLowPowerMode() const 
{ 
    return lowPower; 
}

void Model::setLowPowerEn(bool on) {
    lowPower = on;
}

bool Model::mtrError(){
    return false;
}

bool Model::bpsError(){
    return true;
}



bool Model::isHazards()         const { return false; }
bool Model::isCruiseEn()        const { return false; }
bool Model::isCruiseInc()       const { return false; }
bool Model::isCruiseDec()       const { return false; }

#else

#include "main.h"

Model::Model() : modelListener(0) { }

void Model::tick() {
    // Left turn signal
    leftTurnSignal = !HAL_GPIO_ReadPin(USR_BTN_3_GPIO_Port, USR_BTN_3_Pin);
    // if (prevLeftButtonState == 1 && currentLeft == 0) { // pressed
    //     leftTurnSignal = !leftTurnSignal;
    // }
    // prevLeftButtonState = currentLeft;

    // Right turn signal
    rightTurnSignal = !HAL_GPIO_ReadPin(USR_BTN_2_GPIO_Port, USR_BTN_2_Pin);
    // if (prevRightButtonState == 1 && currentRight == 0) { // pressed
    //     rightTurnSignal = !rightTurnSignal;
    // }
    // prevRightButtonState = currentRight;

    // low power
    lowPower = !HAL_GPIO_ReadPin(USR_BTN_9_GPIO_Port, USR_BTN_9_Pin);
    // if (prevLowPowerButtonState == 1 && currentLowPower == 0) {
    //     lowPower = !lowPower;
    // }
    // prevLowPowerButtonState = currentLowPower;

    // Regen Enable
    regen = !HAL_GPIO_ReadPin(USR_BTN_6_GPIO_Port, USR_BTN_6_Pin);
    // if (prevRegenButtonState == 1 && currentRegen == 0) {
    //     regen = !regen;
    // }
    // prevRegenButtonState = currentRegen;

    // Cruise Enable
    cruise = !HAL_GPIO_ReadPin(USR_BTN_5_GPIO_Port, USR_BTN_5_Pin);
    // if (prevCruiseButtonState == 1 && currentCruise == 0) {
    //     cruise = !cruise;
    // }
    // prevCruiseButtonState = currentCruise;

    // Hazards
    hazard = !HAL_GPIO_ReadPin(USR_BTN_4_GPIO_Port, USR_BTN_4_Pin);
    // if (prevHazardButtonState == 1 && currentHazard == 0) {
    //     hazard = !hazard;
    //     if (hazard) {
    //         leftTurnSignal = false;
    //         rightTurnSignal = false;
    //     }
    // }
    // prevHazardButtonState = currentHazard;
}

bool Model::isLeftTurnSignal() const
{
    return leftTurnSignal;
}
void Model::setLeftTurnSignal(bool) { }

bool Model::isRightTurnSignal() const
{
    return rightTurnSignal;
}
void Model::setRightTurnSignal(bool) { }

void Model::setRegenEn(bool) { }

void Model::setLowPowerEn(bool on) { }

bool Model::isHazards()      const { return hazard; }
bool Model::isCruiseEn()     const { return cruise; }
bool Model::isRegenEn()      const { return regen; }
bool Model::isCruiseInc()    const { return HAL_GPIO_ReadPin(USR_BTN_7_GPIO_Port, USR_BTN_7_Pin) == GPIO_PIN_RESET; }
bool Model::isCruiseDec()    const { return HAL_GPIO_ReadPin(USR_BTN_8_GPIO_Port, USR_BTN_8_Pin) == GPIO_PIN_RESET; }
bool Model::isLowPowerMode() const { return lowPower; }

bool Model::mtrError(){
    bool errors = false;
    ReceivedCanData_t receivedCanData;
    if (xQueueReceive(canReceivedQueue, &receivedCanData, (TickType_t)0 ) == pdTRUE)
    {
        errors = (receivedCanData.motor_controller_error.analog_sensor_err || receivedCanData.motor_controller_error.motor_current_sensor_u_err || receivedCanData.motor_controller_error.motor_current_sensor_w_err ||
            receivedCanData.motor_controller_error.fet_thermistor_err || receivedCanData.motor_controller_error.battery_voltage_sensor_err || receivedCanData.motor_controller_error.battery_current_sensor_adj_err ||
            receivedCanData.motor_controller_error.motor_current_sensor_adj_err || receivedCanData.motor_controller_error.accelerator_position_err || receivedCanData.motor_controller_error.controller_voltage_sensor_err ||
            receivedCanData.motor_controller_error.power_system_err || receivedCanData.motor_controller_error.overcurrent_err || receivedCanData.motor_controller_error.overvoltage_err ||
            receivedCanData.motor_controller_error.overcurrent_limit || receivedCanData.motor_controller_error.motor_system_err || receivedCanData.motor_controller_error.motor_lock ||
            receivedCanData.motor_controller_error.hall_sensor_short || receivedCanData.motor_controller_error.hall_sensor_open || receivedCanData.motor_controller_error.overheat_level);
    }
    return errors;
}

bool Model::bpsError(){
    bool errors = false;
    ReceivedCanData_t receivedCanData;
    if (xQueueReceive(canReceivedQueue, &receivedCanData, (TickType_t)0 ) == pdTRUE)
    {
        errors =
    receivedCanData.bps_error.internal_cell_communication_fault ||
    receivedCanData.bps_error.weak_cell_fault ||
    receivedCanData.bps_error.low_cell_voltage_fault ||
    receivedCanData.bps_error.cell_open_wiring_fault ||
    receivedCanData.bps_error.thermistor_fault ||
    receivedCanData.bps_error.current_sensor_fault ||
    receivedCanData.bps_error.weak_pack_fault ||
    receivedCanData.bps_error.can_communication_fault ||
    receivedCanData.bps_error.redundant_power_supply_fault ||
    receivedCanData.bps_error.high_voltage_isolation_fault ||
    receivedCanData.bps_error.charge_enable_relay_fault ||
    receivedCanData.bps_error.discharge_enable_relay_fault ||
    receivedCanData.bps_error.internal_conversion_fault ||
    receivedCanData.bps_error.internal_memory_fault ||
    receivedCanData.bps_error.internal_thermistor_fault ||
    receivedCanData.bps_error.internal_logic_fault;    
    }
    return errors;
}

#endif

float Model::calcSpeed(int rpm)
{
    static constexpr float WHEEL_DIAMETER_M = 22.0f * 0.0254f;
    const float WHEEL_CIRCUM_M = 3.14159265f * WHEEL_DIAMETER_M;

    const float GEAR_RATIO = 1.0f;
    float rps = static_cast<float>(rpm) / 60.0f;  
    float wheelInRps = rps / GEAR_RATIO;
    float speedInMps = wheelInRps * WHEEL_CIRCUM_M;             
    // 1 m/s = 2.23694 mph
    return (speedInMps * 2.236936292f);
}