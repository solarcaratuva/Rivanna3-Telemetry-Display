#include <gui/screen2_screen/Screen2View.hpp>
#include <touchgfx/Color.hpp>

#ifndef SIMULATOR
#include "data_queues.h"
#endif

Screen2View::Screen2View()
{

}

void Screen2View::setupScreen()
{
    Screen2ViewBase::setupScreen();
    powerWatts.setWildcard(powerWattsBuffer);
    speedMph.setWildcard(speedMphBuffer);
    auxBatteryVolt.setWildcard(auxBatteryVoltBuffer);

    BPS_Warning.setAlpha(0);
    BPS_Warning.setVisible(false);

    PowerAux_Warning.setAlpha(0);
    PowerAux_Warning.setVisible(false);

    MtrComm_Warning.setAlpha(0);
    MtrComm_Warning.setVisible(false);

    BatteryChargeFill.setValue(0);
    BatteryChargeFill.invalidate();
}

void Screen2View::tearDownScreen()
{
    Screen2ViewBase::tearDownScreen();
}


void Screen2View::triggerBpsWarning() {
    bpsWarningState = 1;
    bpsWarningTickCounter = 0;
    BPS_Warning.setVisible(true);
}

void Screen2View::triggerPowerAuxWarning() { 
    powerAuxWarningState = 1;
    powerAuxWarningTickCounter = 0;
    PowerAux_Warning.setVisible(true);
}

void Screen2View::triggerMtrCommWarning() {
    mtrCommWarningState = 1;
    mtrCommWarningTickCounter = 0;
    MtrComm_Warning.setVisible(true);
}

void Screen2View::function2() {
    if (bpsWarningState == 1) {
        BPS_Warning.startFadeAnimation(255, 30); // Fade in
        bpsWarningState = 2;
        bpsWarningTickCounter = 0;
    }
    else if (bpsWarningState == 2) {
        bpsWarningTickCounter++;
        if (bpsWarningTickCounter >= 4) { // Hold for ~500ms
            bpsWarningState = 3;
            bpsWarningTickCounter = 0;
        }
    }
    else if (bpsWarningState == 3) {
        BPS_Warning.startFadeAnimation(0, 30); // Fade out
        bpsWarningState = 4;
        bpsWarningTickCounter = 0;
    }
    else if (bpsWarningState == 4) {
        bpsWarningTickCounter++;
        if (bpsWarningTickCounter >= 4) { // Wait before next flash
            bpsWarningState = 1; // Restart flashing loop
            bpsWarningTickCounter = 0;
        }
    }

    if (powerAuxWarningState == 1) {
        PowerAux_Warning.startFadeAnimation(255, 30); // Fade in
        powerAuxWarningState = 2;
        powerAuxWarningTickCounter = 0;
    }
    else if (powerAuxWarningState == 2) {
        powerAuxWarningTickCounter++;
        if (powerAuxWarningTickCounter >= 4) { // Hold for ~500ms
            powerAuxWarningState = 3;
            powerAuxWarningTickCounter = 0;
        }
    }
    else if (powerAuxWarningState == 3) {
        PowerAux_Warning.startFadeAnimation(0, 30); // Fade out
        powerAuxWarningState = 4;
        powerAuxWarningTickCounter = 0;
    }
    else if (powerAuxWarningState == 4) {
        powerAuxWarningTickCounter++;
        if (powerAuxWarningTickCounter >= 4) { // Wait before next flash
            powerAuxWarningState = 1; // Restart flashing loop
            powerAuxWarningTickCounter = 0;
        }
    }

    if (mtrCommWarningState == 1) {
        MtrComm_Warning.startFadeAnimation(255, 30); // Fade in
        mtrCommWarningState = 2;
        mtrCommWarningTickCounter = 0;
    }
    else if (mtrCommWarningState == 2) {
        mtrCommWarningTickCounter++;
        if (mtrCommWarningTickCounter >= 4) { // Hold for ~500ms
            mtrCommWarningState = 3;
            mtrCommWarningTickCounter = 0;
        }
    }
    else if (mtrCommWarningState == 3) {
        MtrComm_Warning.startFadeAnimation(0, 30); // Fade out
        mtrCommWarningState = 4;
        mtrCommWarningTickCounter = 0;
    }
    else if (mtrCommWarningState == 4) {
        mtrCommWarningTickCounter++;
        if (mtrCommWarningTickCounter >= 4) { // Wait before next flash
            mtrCommWarningState = 1; // Restart flashing loop
            mtrCommWarningTickCounter = 0;
        }
    }
}

int packVolt = 0;
int packCurr = 0;
int rpm = 0;
int braking = 0;
int regen = 0;
int manual = 0;
int cruise = 0;
int brakeP = 0;
int throttle = 0;
int cruiseS = 0;
int regenD = 0;
int throttleP = 0;
int count = 0;
int testCount = 0;
int packSOC = 0;
int packDischargeRelay = 0;
int packChargeRelay = 0;
int auxBatteryMVolt = 0;
int auxBatteryChargePct = 0;

bool previousBpsErrorState = false;
bool currentBpsErrorState = false;

bool previousPowerAuxErrorState = false;
bool currentPowerAuxErrorState = false;

bool previousMtrCommErrorState = false;
bool currentMtrCommErrorState = true;

void Screen1View::function1()
{
#ifndef SIMULATOR
    ReceivedCanData_t receivedCanData;
    if (xQueueReceive(canReceivedQueue, &receivedCanData, (TickType_t)0 ) == pdTRUE) {
        count = receivedCanData.motor_controller_power_status.battery_voltage;
        packVolt = receivedCanData.bps_pack_information.pack_voltage;
        packCurr = receivedCanData.bps_pack_information.pack_current;
        packSOC = receivedCanData.bps_pack_information.pack_soc;
        packDischargeRelay = receivedCanData.bps_pack_information.discharge_relay_status;
        packChargeRelay = receivedCanData.bps_pack_information.charge_relay_status;
        rpm = receivedCanData.motor_controller_power_status.motor_rpm;
        braking = receivedCanData.motor_commands.braking;
        regen = receivedCanData.motor_commands.regen_braking;
        manual = receivedCanData.motor_commands.manual_drive;
        cruise = receivedCanData.motor_commands.cruise_drive;
        brakeP = receivedCanData.motor_commands.brake_pedal;
        throttle = receivedCanData.motor_commands.throttle;
        cruiseS = receivedCanData.motor_commands.cruise_speed;
        regenD = receivedCanData.motor_commands.regen_drive;
        throttleP = receivedCanData.motor_commands.throttle_pedal;
        auxBatteryMVolt = receivedCanData.aux_battery_status.aux_voltage;
        auxBatteryChargePct = receivedCanData.aux_battery_status.percent_full;
        
        currentMtrCommErrorState = (receivedCanData.motor_controller_error.analog_sensor_err || receivedCanData.motor_controller_error.motor_current_sensor_u_err || receivedCanData.motor_controller_error.motor_current_sensor_w_err ||
        receivedCanData.motor_controller_error.fet_thermistor_err || receivedCanData.motor_controller_error.battery_voltage_sensor_err || receivedCanData.motor_controller_error.battery_current_sensor_adj_err ||
        receivedCanData.motor_controller_error.motor_current_sensor_adj_err || receivedCanData.motor_controller_error.accelerator_position_err || receivedCanData.motor_controller_error.controller_voltage_sensor_err ||
        receivedCanData.motor_controller_error.power_system_err || receivedCanData.motor_controller_error.overcurrent_err || receivedCanData.motor_controller_error.overvoltage_err ||
        receivedCanData.motor_controller_error.overcurrent_limit || receivedCanData.motor_controller_error.motor_system_err || receivedCanData.motor_controller_error.motor_lock ||
        receivedCanData.motor_controller_error.hall_sensor_short || receivedCanData.motor_controller_error.hall_sensor_open || receivedCanData.motor_controller_error.overheat_level);
        
        currentBpsErrorState = receivedCanData.bps_error.dtc_p0_a1_f_internal_cell_communication_fault || receivedCanData.bps_error.current_sensor_fault || receivedCanData.bps_error.weak_pack_fault || receivedCanData.bps_error.thermistor_fault || receivedCanData.bps_error.can_communication_fault || receivedCanData.bps_error.redundant_power_supply_fault || receivedCanData.bps_error.high_voltage_isolation_fault || receivedCanData.bps_error.charge_enable_relay_fault || receivedCanData.bps_error.discharge_enable_relay_fault || receivedCanData.bps_error.internal_hardware_fault || receivedCanData.bps_error.dtc_p0_a0_a_internal_heatsink_thermistor_fault || receivedCanData.bps_error.internal_logic_fault || receivedCanData.bps_error.dtc_p0_a0_c_highest_cell_voltage_too_high_fault || receivedCanData.bps_error.dtc_p0_a0_e_lowest_cell_voltage_too_low_fault || receivedCanData.bps_error.pack_too_hot_fault;
            
        bool curBps[NUM_BPS_ERRORS] = {
            receivedCanData.bps_error.dtc_p0_a1_f_internal_cell_communication_fault,
            receivedCanData.bps_error.current_sensor_fault,
            receivedCanData.bps_error.weak_pack_fault,
            receivedCanData.bps_error.thermistor_fault,
            receivedCanData.bps_error.can_communication_fault,
            receivedCanData.bps_error.redundant_power_supply_fault,
            receivedCanData.bps_error.high_voltage_isolation_fault,
            receivedCanData.bps_error.charge_enable_relay_fault,
            receivedCanData.bps_error.discharge_enable_relay_fault,
            receivedCanData.bps_error.internal_hardware_fault,
            receivedCanData.bps_error.dtc_p0_a0_a_internal_heatsink_thermistor_fault,
            receivedCanData.bps_error.internal_logic_fault,
            receivedCanData.bps_error.dtc_p0_a0_c_highest_cell_voltage_too_high_fault,
            receivedCanData.bps_error.dtc_p0_a0_e_lowest_cell_voltage_too_low_fault,
            receivedCanData.bps_error.pack_too_hot_fault
        };

        static const char* bpsNames[NUM_BPS_ERRORS] = {
            "Internal Cell Communication Fault",
            "Current sensor Fault",
            "Weak Pack Fault",
            "Thermistor Fault",
            "CAN Communication Fault",
            "Redundant Power Supply Fault",
            "High Voltage Isolation Fault",
            "Charge Enable Relay Fault",
            "Discharge Enable Relay Fault",
            "Internal Hardware Fault",
            "Internal Heatsink Thermistor Fault",
            "Internal Logic Fault",
            "Highest Cell Voltage Too High Fault",
            "Lowest Cell Voltage Too Low Fault",
            "Pack Too Hot Fault"
        };

        for (int i = 0; i < NUM_BPS_ERRORS; i++) {
            if (curBps[i] && !prevBpsErrorStates[i]) {
                recentErrors.push_back(bpsNames[i]);
                if (recentErrors.size() > MAX_RECENT_ERRORS)
                    recentErrors.pop_front();
            }
            prevBpsErrorStates[i] = curBps[i];
        }

        bool curMtrCmd[NUM_MTR_ERRORS] = {
            receivedCanData.motor_controller_error.analog_sensor_err,
            receivedCanData.motor_controller_error.motor_current_sensor_u_err,
            receivedCanData.motor_controller_error.motor_current_sensor_w_err,
            receivedCanData.motor_controller_error.fet_thermistor_err,
            receivedCanData.motor_controller_error.battery_voltage_sensor_err,
            receivedCanData.motor_controller_error.battery_current_sensor_adj_err,
            receivedCanData.motor_controller_error.motor_current_sensor_adj_err,
            receivedCanData.motor_controller_error.accelerator_position_err,
            receivedCanData.motor_controller_error.controller_voltage_sensor_err,
            receivedCanData.motor_controller_error.power_system_err,
            receivedCanData.motor_controller_error.overcurrent_err,
            receivedCanData.motor_controller_error.overvoltage_err,
            receivedCanData.motor_controller_error.overcurrent_limit,
            receivedCanData.motor_controller_error.motor_system_err,
            receivedCanData.motor_controller_error.motor_lock,
            receivedCanData.motor_controller_error.hall_sensor_short,
            receivedCanData.motor_controller_error.hall_sensor_open,
            receivedCanData.motor_controller_error.overheat_level
        };

        static const char* mtrCmdNames[NUM_MTR_ERRORS] = {
            "Analog Sensor Err",
            "Curr Sensor U Err",
            "Curr Sensor W Err",
            "FET Thermistor Err",
            "Batt Volt Sensor Err",
            "Batt Curr Adj Err",
            "Motor Curr Adj Err",
            "Accel Pos Err",
            "Ctrl Volt Sensor Err",
            "Power System Err",
            "Overcurrent Err",
            "Overvoltage Err",
            "Overcurrent Limit",
            "Motor System Err",
            "Motor Lock",
            "Hall Sensor Short",
            "Hall Sensor Open",
            "Overheat Level"
        };

        // Detect rising edges and log into the same recentErrors queue
        for (int i = 0; i < NUM_MTR_ERRORS; i++) {
            if (curMtrCmd[i] && !prevMtrErrorStates[i]) {
                recentErrors.push_back(mtrCmdNames[i]);
                if (recentErrors.size() > MAX_RECENT_ERRORS) {
                    recentErrors.pop_front();
                }
            }
            prevMtrErrorStates[i] = curMtrCmd[i];
        }
    
    }
#else
    // Dummy test values for simulator
    count = 0;
    testCount++;
    packVolt  = 42;
    packCurr  = 5;
    packSOC   = 0;
    rpm       = 1234;
    braking   = 1;
    regen     = 0;
    manual    = 1;
    cruise    = 1;
    brakeP    = 50;
    throttle  = 70;
    cruiseS   = 30;
    regenD    = 1;
    throttleP = 60;
    currentBpsErrorState = 1;
    currentPowerAuxErrorState = 0;
    currentMtrCommErrorState = 1;
    auxBatteryMVolt = 12569;
    auxBatteryChargePct = 2;
#endif

    bool isCruise = presenter->getCruiseEn();

    if (currentBpsErrorState && !previousBpsErrorState) {
        triggerBpsWarning(); // Trigger only on rising edge
    }

    previousBpsErrorState = currentBpsErrorState; // Save for next tick

    if (currentPowerAuxErrorState && !previousPowerAuxErrorState) {
        triggerPowerAuxWarning();
    }

    previousPowerAuxErrorState = currentPowerAuxErrorState;

    if (currentMtrCommErrorState && !previousMtrCommErrorState) {
        triggerMtrCommWarning();
    }

    int pct100 = (int) (auxBatteryChargePct / 255.0f * 100);
    if (pct100 > 100) pct100 = 100;  // just in case

    BatteryChargeFill.setValue(pct100); 
    BatteryChargeFill.invalidate();

    static constexpr float WHEEL_DIAMETER_M = 22.0f * 0.0254f;
    const float WHEEL_CIRCUM_M = 3.14159265f * WHEEL_DIAMETER_M;

    const float GEAR_RATIO = 1.0f;
    float rps = static_cast<float>(rpm) / 60.0f;  
    float wheelInRps = rps / GEAR_RATIO;
    float speedInMps = wheelInRps * WHEEL_CIRCUM_M;             
    // 1 m/s = 2.23694 mph
    float speedInMph = speedInMps * 2.236936292f;

    Unicode::snprintfFloat(powerAuxBuffer, POWERAUX_SIZE, "%.2f", currentMtrCommErrorState);
    Unicode::snprintfFloat(bpsErrorBuffer, BPSERROR_SIZE, "%.2f", currentBpsErrorState);
    Unicode::snprintfFloat(speedMphBuffer, SPEEDMPH_SIZE, "%.1f", speedInMph);
    Unicode::snprintfFloat(solarTempBuffer, SOLARTEMP_SIZE, "%.2f", cruise);
    Unicode::snprintfFloat(auxBatteryVoltBuffer, AUXBATTERYVOLT_SIZE, "%.2f", auxBatteryVoltConv);

    speedMph.invalidate();
    powerWatts.invalidate();
    auxBatteryVolt.invalidate();

}

