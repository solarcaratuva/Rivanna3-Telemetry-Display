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
    bpsWarningState2 = 1;
    bpsWarningTickCounter2 = 0;
    BPS_Warning.setVisible(true);
}

void Screen2View::triggerPowerAuxWarning() { 
    powerAuxWarningState2 = 1;
    powerAuxWarningTickCounter2 = 0;
    PowerAux_Warning.setVisible(true);
}

void Screen2View::triggerMtrCommWarning() {
    mtrCommWarningState2 = 1;
    mtrCommWarningTickCounter2 = 0;
    MtrComm_Warning.setVisible(true);
}

void Screen2View::function2() {
    if (bpsWarningState2 == 1) {
        BPS_Warning.startFadeAnimation(255, 30); // Fade in
        bpsWarningState2 = 2;
        bpsWarningTickCounter2 = 0;
    }
    else if (bpsWarningState2 == 2) {
        bpsWarningTickCounter2++;
        if (bpsWarningTickCounter2 >= 4) { // Hold for ~500ms
            bpsWarningState2 = 3;
            bpsWarningTickCounter2 = 0;
        }
    }
    else if (bpsWarningState2 == 3) {
        BPS_Warning.startFadeAnimation(0, 30); // Fade out
        bpsWarningState2 = 4;
        bpsWarningTickCounter2 = 0;
    }
    else if (bpsWarningState2 == 4) {
        bpsWarningTickCounter2++;
        if (bpsWarningTickCounter2 >= 4) { // Wait before next flash
            bpsWarningState2 = 1; // Restart flashing loop
            bpsWarningTickCounter2 = 0;
        }
    }

    if (powerAuxWarningState2 == 1) {
        PowerAux_Warning.startFadeAnimation(255, 30); // Fade in
        powerAuxWarningState2 = 2;
        powerAuxWarningTickCounter2 = 0;
    }
    else if (powerAuxWarningState2 == 2) {
        powerAuxWarningTickCounter2++;
        if (powerAuxWarningTickCounter2 >= 4) { // Hold for ~500ms
            powerAuxWarningState2 = 3;
            powerAuxWarningTickCounter2 = 0;
        }
    }
    else if (powerAuxWarningState2 == 3) {
        PowerAux_Warning.startFadeAnimation(0, 30); // Fade out
        powerAuxWarningState2 = 4;
        powerAuxWarningTickCounter2 = 0;
    }
    else if (powerAuxWarningState2 == 4) {
        powerAuxWarningTickCounter2++;
        if (powerAuxWarningTickCounter2 >= 4) { // Wait before next flash
            powerAuxWarningState2 = 1; // Restart flashing loop
            powerAuxWarningTickCounter2 = 0;
        }
    }

    if (mtrCommWarningState2 == 1) {
        MtrComm_Warning.startFadeAnimation(255, 30); // Fade in
        mtrCommWarningState2 = 2;
        mtrCommWarningTickCounter2 = 0;
    }
    else if (mtrCommWarningState2 == 2) {
        mtrCommWarningTickCounter2++;
        if (mtrCommWarningTickCounter2 >= 4) { // Hold for ~500ms
            mtrCommWarningState2 = 3;
            mtrCommWarningTickCounter2 = 0;
        }
    }
    else if (mtrCommWarningState2 == 3) {
        MtrComm_Warning.startFadeAnimation(0, 30); // Fade out
        mtrCommWarningState2 = 4;
        mtrCommWarningTickCounter2 = 0;
    }
    else if (mtrCommWarningState2 == 4) {
        mtrCommWarningTickCounter2++;
        if (mtrCommWarningTickCounter2 >= 4) { // Wait before next flash
            mtrCommWarningState2 = 1; // Restart flashing loop
            mtrCommWarningTickCounter2 = 0;
        }
    }
}

int packVolt2 = 0;
int packCurr2 = 0;
int rpm2 = 0;
int braking2 = 0;
int regen2 = 0;
int manual2 = 0;
int cruise2 = 0;
int brakeP2 = 0;
int throttle2 = 0;
int cruiseS2 = 0;
int regenD2 = 0;
int throttleP2 = 0;
int count2 = 0;
int testCount2 = 0;
int packSOC2 = 0;
int packDischargeRelay2 = 0;
int packChargeRelay2 = 0;
int auxBatteryMVolt2 = 0;
int auxBatteryChargePct2 = 0;

bool previousBpsErrorState2 = false;
bool currentBpsErrorState2 = false;

bool previousPowerAuxErrorState2 = false;
bool currentPowerAuxErrorState2 = false;

bool previousMtrCommErrorState2 = false;
bool currentMtrCommErrorState2 = true;

void Screen2View::function1()
{
#ifndef SIMULATOR
    ReceivedCanData_t receivedCanData;
    if (xQueueReceive(canReceivedQueue, &receivedCanData, (TickType_t)0 ) == pdTRUE) {
        count2 = receivedCanData.motor_controller_power_status.battery_voltage;
        packVolt2 = receivedCanData.bps_pack_information.pack_voltage;
        packCurr2 = receivedCanData.bps_pack_information.pack_current;
        packSOC2 = receivedCanData.bps_pack_information.pack_soc;
        packDischargeRelay2 = receivedCanData.bps_pack_information.discharge_relay_status;
        packChargeRelay2 = receivedCanData.bps_pack_information.charge_relay_status;
        rpm2 = receivedCanData.motor_controller_power_status.motor_rpm;
        regen2 = receivedCanData.motor_commands.regen_braking;
        manual2 = receivedCanData.motor_commands.manual_drive;
        cruise2 = receivedCanData.motor_commands.cruise_drive;
        brakeP2 = receivedCanData.pedal_status.brake_pedal;
        throttle2 = receivedCanData.motor_commands.throttle;
        cruiseS2 = receivedCanData.motor_commands.cruise_speed;
        regenD2 = receivedCanData.motor_commands.regen_drive;
        throttleP2 = receivedCanData.pedal_status.throttle_pedal;
        auxBatteryMVolt2 = receivedCanData.aux_battery_status.aux_voltage;
        auxBatteryChargePct2 = receivedCanData.aux_battery_status.percent_full;
        
        currentMtrCommErrorState2 = (receivedCanData.motor_controller_error.analog_sensor_err || receivedCanData.motor_controller_error.motor_current_sensor_u_err || receivedCanData.motor_controller_error.motor_current_sensor_w_err ||
        receivedCanData.motor_controller_error.fet_thermistor_err || receivedCanData.motor_controller_error.battery_voltage_sensor_err || receivedCanData.motor_controller_error.battery_current_sensor_adj_err ||
        receivedCanData.motor_controller_error.motor_current_sensor_adj_err || receivedCanData.motor_controller_error.accelerator_position_err || receivedCanData.motor_controller_error.controller_voltage_sensor_err ||
        receivedCanData.motor_controller_error.power_system_err || receivedCanData.motor_controller_error.overcurrent_err || receivedCanData.motor_controller_error.overvoltage_err ||
        receivedCanData.motor_controller_error.overcurrent_limit || receivedCanData.motor_controller_error.motor_system_err || receivedCanData.motor_controller_error.motor_lock ||
        receivedCanData.motor_controller_error.hall_sensor_short || receivedCanData.motor_controller_error.hall_sensor_open || receivedCanData.motor_controller_error.overheat_level);
        
        currentBpsErrorState2 = receivedCanData.bps_error.internal_cell_communication_fault || receivedCanData.bps_error.current_sensor_fault || receivedCanData.bps_error.weak_pack_fault || receivedCanData.bps_error.thermistor_fault || receivedCanData.bps_error.can_communication_fault || receivedCanData.bps_error.redundant_power_supply_fault || receivedCanData.bps_error.high_voltage_isolation_fault || receivedCanData.bps_error.charge_enable_relay_fault || receivedCanData.bps_error.discharge_enable_relay_fault || receivedCanData.bps_error.internal_hardware_fault || receivedCanData.bps_error.internal_heatsink_thermistor_fault || receivedCanData.bps_error.internal_logic_fault || receivedCanData.bps_error.highest_cell_voltage_too_high_fault || receivedCanData.bps_error.lowest_cell_voltage_too_low_fault || receivedCanData.bps_error.pack_too_hot_fault;
            
        bool curBps[NUM_BPS_ERRORS] = {
            receivedCanData.bps_error.internal_cell_communication_fault,
            receivedCanData.bps_error.current_sensor_fault,
            receivedCanData.bps_error.weak_pack_fault,
            receivedCanData.bps_error.thermistor_fault,
            receivedCanData.bps_error.can_communication_fault,
            receivedCanData.bps_error.redundant_power_supply_fault,
            receivedCanData.bps_error.high_voltage_isolation_fault,
            receivedCanData.bps_error.charge_enable_relay_fault,
            receivedCanData.bps_error.discharge_enable_relay_fault,
            receivedCanData.bps_error.internal_hardware_fault,
            receivedCanData.bps_error.internal_heatsink_thermistor_fault,
            receivedCanData.bps_error.internal_logic_fault,
            receivedCanData.bps_error.highest_cell_voltage_too_high_fault,
            receivedCanData.bps_error.lowest_cell_voltage_too_low_fault,
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
    count2 = 0;
    testCount2++;
    packVolt2  = 42;
    packCurr2  = 5;
    packSOC2   = 0;
    rpm2       = 1234;
    braking2   = 1;
    regen2     = 0;
    manual2    = 1;
    cruise2    = 1;
    brakeP2    = 50;
    throttle2  = 70;
    cruiseS2   = 30;
    regenD2    = 1;
    throttleP2 = 60;
    currentBpsErrorState2 = 1;
    currentPowerAuxErrorState2 = 0;
    currentMtrCommErrorState2 = 1;
    auxBatteryMVolt2 = 12569;
    auxBatteryChargePct2 = 2;
#endif

    if (currentBpsErrorState2 && !previousBpsErrorState2) {
        triggerBpsWarning(); // Trigger only on rising edge
    }

    previousBpsErrorState2 = currentBpsErrorState2; // Save for next tick

    if (currentPowerAuxErrorState2 && !previousPowerAuxErrorState2) {
        triggerPowerAuxWarning();
    }

    previousPowerAuxErrorState2 = currentPowerAuxErrorState2;

    if (currentMtrCommErrorState2 && !previousMtrCommErrorState2) {
        triggerMtrCommWarning();
    }

    int pct100 = (int) (auxBatteryChargePct2 / 255.0f * 100);
    if (pct100 > 100) pct100 = 100;  // just in case

    BatteryChargeFill.setValue(pct100); 
    BatteryChargeFill.invalidate();

    static constexpr float WHEEL_DIAMETER_M = 22.0f * 0.0254f;
    const float WHEEL_CIRCUM_M = 3.14159265f * WHEEL_DIAMETER_M;

    const float GEAR_RATIO = 1.0f;
    float rps = static_cast<float>(rpm2) / 60.0f;  
    float wheelInRps = rps / GEAR_RATIO;
    float speedInMps = wheelInRps * WHEEL_CIRCUM_M;             
    // 1 m/s = 2.23694 mph
    float speedInMph = speedInMps * 2.236936292f;

//    Unicode::snprintfFloat(powerAuxBuffer, POWERAUX_SIZE, "%.2f", currentMtrCommErrorState);
//    Unicode::snprintfFloat(bpsErrorBuffer, BPSERROR_SIZE, "%.2f", currentBpsErrorState);
    Unicode::snprintfFloat(speedMphBuffer, SPEEDMPH_SIZE, "%.1f", speedInMph);
//    Unicode::snprintfFloat(solarTempBuffer, SOLARTEMP_SIZE, "%.2f", cruise);
    // Unicode::snprintfFloat(auxBatteryVoltBuffer, AUXBATTERYVOLT_SIZE, "%.2f", auxBatteryVoltConv);

    speedMph.invalidate();
    powerWatts.invalidate();
    auxBatteryVolt.invalidate();

}

