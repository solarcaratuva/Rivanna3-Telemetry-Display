#include <gui/datascreen_screen/DataScreenView.hpp>
#include <touchgfx/Color.hpp>
#include <iostream>
#include <vector>
#include <string>
#include <list>

#ifndef SIMULATOR
#include "data_queues.h"
#endif

DataScreenView::DataScreenView()
{

}

void DataScreenView::setupScreen()
{
    DataScreenViewBase::setupScreen();
    float rpm = 1.0f;
    bool brake = false;
    bool man = true;
    bool regen = false;
    bool cruise = true;
    float throttle = 0.0f;
    float brake_pedal = 0.5f;
    float throttle_pedal = 24.5f;
    float regen_brake = 90.2f;
    float cruise_speed = 34.1f;
    float pack_volt = 80.4f;
    float pack_curr = 5.2f;
    float pack_soc = 14.0f;
    bool dtc_status = true;
    bool charge_relay = true;
    bool discharge_relay = true;
    bool left = false;
    bool right = false;
    bool lowpow = false;
    bool hazard = false;
    bool regenval = true;
    bool cruiseinc = true;
    bool cruiseval = false;
    bool cruisedec = false;
    bool mtr = true;
    bool bps = false;
    rpm_value.setWildcard(rpm_valueBuffer);
    braking_value.setWildcard(braking_valueBuffer);
    man_drive_value.setWildcard(man_drive_valueBuffer);
    regen_drive_value.setWildcard(regen_drive_valueBuffer);
    cruise_drive_value.setWildcard(cruise_drive_valueBuffer);
    throttle_value.setWildcard(throttle_valueBuffer);
    brake_pedal_value.setWildcard(brake_pedal_valueBuffer);
    throttle_pedal_value.setWildcard(throttle_pedal_valueBuffer);
    regen_brake_value.setWildcard(regen_brake_valueBuffer);
    cruise_speed_value.setWildcard(cruise_speed_valueBuffer);
    pack_volt_value.setWildcard(pack_volt_valueBuffer);
    pack_curr_value.setWildcard(pack_curr_valueBuffer);
    pack_soc_value.setWildcard(pack_soc_valueBuffer);
    dtc_status_value.setWildcard(dtc_status_valueBuffer);
    charge_relay_value.setWildcard(charge_relay_valueBuffer);
    discharge_relay_status.setWildcard(discharge_relay_statusBuffer);
    left_turn_value.setWildcard(left_turn_valueBuffer);
    right_turn_value.setWildcard(right_turn_valueBuffer);
    low_power_value.setWildcard(low_power_valueBuffer);
    hazards_value.setWildcard(hazards_valueBuffer);
    regen_value.setWildcard(regen_valueBuffer);
    cruise_inc_value.setWildcard(cruise_inc_valueBuffer);
    cruise_value.setWildcard(cruise_valueBuffer);
    cruise_dec_value.setWildcard(cruise_dec_valueBuffer);
    mtr_controller_error_value.setWildcard(mtr_controller_error_valueBuffer);
    bps_error_value.setWildcard(bps_error_valueBuffer);
    error_list_1.setWildcard(error_list_1Buffer);
    error_list_2.setWildcard(error_list_2Buffer);
    error_list_3.setWildcard(error_list_3Buffer);

    uint32_t onColor = touchgfx::Color::getColorFromRGB(0x5E, 0xFF, 0x87);
    uint32_t offColor = touchgfx::Color::getColorFromRGB(255, 255, 255);
    uint32_t errColor = touchgfx::Color::getColorFromRGB(0xDB, 0x27, 0x27);

    // RPM
    Unicode::snprintfFloat(rpm_valueBuffer, RPM_VALUE_SIZE, "%.1f", rpm);

    // Drive/Status booleans
    Unicode::snprintf(braking_valueBuffer, BRAKING_VALUE_SIZE, brake ? "On" : "Off");
    braking_value.setColor(brake ? onColor : offColor);

    Unicode::snprintf(man_drive_valueBuffer, MAN_DRIVE_VALUE_SIZE, man ? "On" : "Off");
    man_drive_value.setColor(man ? onColor : offColor);

    Unicode::snprintf(regen_drive_valueBuffer, REGEN_DRIVE_VALUE_SIZE, regen ? "On" : "Off");
    regen_drive_value.setColor(regen ? onColor : offColor);

    Unicode::snprintf(cruise_drive_valueBuffer, CRUISE_DRIVE_VALUE_SIZE, cruise ? "On" : "Off");
    cruise_drive_value.setColor(cruise ? onColor : offColor);

    // Numeric values
    Unicode::snprintfFloat(throttle_valueBuffer, THROTTLE_VALUE_SIZE, "%.1f", throttle);
    Unicode::snprintfFloat(brake_pedal_valueBuffer, BRAKE_PEDAL_VALUE_SIZE, "%.1f", brake_pedal);
    Unicode::snprintfFloat(throttle_pedal_valueBuffer, THROTTLE_PEDAL_VALUE_SIZE, "%.1f", throttle_pedal);
    Unicode::snprintfFloat(regen_brake_valueBuffer, REGEN_BRAKE_VALUE_SIZE, "%.1f", regen_brake);
    Unicode::snprintfFloat(cruise_speed_valueBuffer, CRUISE_SPEED_VALUE_SIZE, "%.1f", cruise_speed);
    Unicode::snprintfFloat(pack_volt_valueBuffer, PACK_VOLT_VALUE_SIZE, "%.1f", pack_volt);
    Unicode::snprintfFloat(pack_curr_valueBuffer, PACK_CURR_VALUE_SIZE, "%.1f", pack_curr);
    Unicode::snprintfFloat(pack_soc_valueBuffer, PACK_SOC_VALUE_SIZE, "%.1f", pack_soc);

    // More statuses
    Unicode::snprintf(dtc_status_valueBuffer, DTC_STATUS_VALUE_SIZE, dtc_status ? "On" : "Off");
    dtc_status_value.setColor(dtc_status ? onColor : offColor);

    Unicode::snprintf(charge_relay_valueBuffer, CHARGE_RELAY_VALUE_SIZE, charge_relay ? "On" : "Off");
    charge_relay_value.setColor(charge_relay ? onColor : offColor);

    Unicode::snprintf(discharge_relay_statusBuffer, DISCHARGE_RELAY_STATUS_SIZE, discharge_relay ? "On" : "Off");
    discharge_relay_status.setColor(discharge_relay ? onColor : offColor);

    Unicode::snprintf(left_turn_valueBuffer, LEFT_TURN_VALUE_SIZE, left ? "On" : "Off");
    left_turn_value.setColor(left ? onColor : offColor);

    Unicode::snprintf(right_turn_valueBuffer, RIGHT_TURN_VALUE_SIZE, right ? "On" : "Off");
    right_turn_value.setColor(right ? onColor : offColor);

    Unicode::snprintf(low_power_valueBuffer, LOW_POWER_VALUE_SIZE, lowpow ? "On" : "Off");
    low_power_value.setColor(lowpow ? onColor : offColor);

    Unicode::snprintf(hazards_valueBuffer, HAZARDS_VALUE_SIZE, hazard ? "On" : "Off");
    hazards_value.setColor(hazard ? onColor : offColor);

    Unicode::snprintf(regen_valueBuffer, REGEN_VALUE_SIZE, regenval ? "On" : "Off");
    regen_value.setColor(regenval ? onColor : offColor);

    Unicode::snprintf(cruise_inc_valueBuffer, CRUISE_INC_VALUE_SIZE, cruiseinc ? "On" : "Off");
    cruise_inc_value.setColor(cruiseinc ? onColor : offColor);

    Unicode::snprintf(cruise_valueBuffer, CRUISE_VALUE_SIZE, cruiseval ? "On" : "Off");
    cruise_value.setColor(cruiseval ? onColor : offColor);

    Unicode::snprintf(cruise_dec_valueBuffer, CRUISE_DEC_VALUE_SIZE, cruisedec ? "On" : "Off");
    cruise_dec_value.setColor(cruisedec ? onColor : offColor);

    Unicode::snprintf(mtr_controller_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, mtr ? "ERR" : "None");
    mtr_controller_error_value.setColor(mtr ? errColor : offColor);

    Unicode::snprintf(bps_error_valueBuffer, BPS_ERROR_VALUE_SIZE, bps ? "ERR" : "None");
    bps_error_value.setColor(bps ? errColor : offColor);

    Unicode::snprintf(error_list_1Buffer, ERROR_LIST_1_SIZE, bps ? "ERR" : "None");

    Unicode::snprintf(error_list_2Buffer, ERROR_LIST_2_SIZE, bps ? "ERR" : "None");

    Unicode::snprintf(error_list_3Buffer, ERROR_LIST_3_SIZE, bps ? "ERR" : "None");

    // Invalidate all to refresh the screen
    rpm_value.invalidate();
    braking_value.invalidate();
    man_drive_value.invalidate();
    regen_drive_value.invalidate();
    cruise_drive_value.invalidate();
    throttle_value.invalidate();
    brake_pedal_value.invalidate();
    throttle_pedal_value.invalidate();
    regen_brake_value.invalidate();
    cruise_speed_value.invalidate();
    pack_volt_value.invalidate();
    pack_curr_value.invalidate();
    pack_soc_value.invalidate();
    dtc_status_value.invalidate();
    charge_relay_value.invalidate();
    discharge_relay_status.invalidate();
    left_turn_value.invalidate();
    right_turn_value.invalidate();
    low_power_value.invalidate();
    hazards_value.invalidate();
    regen_value.invalidate();
    cruise_inc_value.invalidate();
    cruise_value.invalidate();
    cruise_dec_value.invalidate();
    mtr_controller_error_value.invalidate();
    bps_error_value.invalidate();
    error_list_1.invalidate();
    error_list_2.invalidate();
    error_list_3.invalidate();
}

void DataScreenView::tearDownScreen()
{
    DataScreenViewBase::tearDownScreen();
}

void DataScreenView::main()
{
    float rpm = 0.0f;
    bool brake = false;
    bool man = false;
    bool regen = false;
    bool cruise = false;
    float throttle = 0.0f;
    float brake_pedal = 0.0f;
    float throttle_pedal = 0.0f;
    float regen_brake = 0.0f;
    float cruise_speed = 0.0f;
    float pack_volt = 0.0f;
    float pack_curr = 0.0f;
    float pack_soc = 0.0f;
    bool dtc_status = false; //missing
    bool charge_relay = false;
    bool discharge_relay = false;
    bool left = false;
    bool right = false;
    bool lowpow = false; 
    bool hazard = false; 
    bool regenval = false; 
    bool cruiseinc = false; 
    bool cruiseval = false; 
    bool cruisedec = false; 
    bool mtr = false;
    bool bps = false;
    bool curBps[15] = {
        false,
        false,
        false,
        false,
        true,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    };
    static const char* bpsNames[15] = {
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
    std::list<std::string> arrayList;
#ifndef SIMULATOR
    ReceivedCanData_t receivedCanData;
    if (xQueueReceive(canReceivedQueue, &receivedCanData, (TickType_t)0 ) == pdTRUE) {
        rpm = receivedCanData.motor_controller_power_status.motor_rpm;
        pack_volt = receivedCanData.bps_pack_information.pack_voltage;
        pack_soc = receivedCanData.bps_pack_information.pack_soc;
        pack_curr = receivedCanData.bps_pack_information.pack_current;
        brake = receivedCanData.motor_commands.braking;
        regen_brake = receivedCanData.motor_commands.regen_braking;
        man = receivedCanData.motor_commands.manual_drive;
        cruise = receivedCanData.motor_commands.cruise_drive;
        brake_pedal = receivedCanData.motor_commands.brake_pedal;
        throttle = receivedCanData.motor_commands.throttle;
        cruise_speed = receivedCanData.motor_commands.cruise_speed;
        regen = receivedCanData.motor_commands.regen_drive;
        throttle_pedal = receivedCanData.motor_commands.throttle_pedal;
        discharge_relay = receivedCanData.bps_pack_information.discharge_relay_status;
        charge_relay = receivedCanData.bps_pack_information.charge_relay_status;

        mtr = (receivedCanData.motor_controller_error.analog_sensor_err || receivedCanData.motor_controller_error.motor_current_sensor_u_err || receivedCanData.motor_controller_error.motor_current_sensor_w_err ||
        receivedCanData.motor_controller_error.fet_thermistor_err || receivedCanData.motor_controller_error.battery_voltage_sensor_err || receivedCanData.motor_controller_error.battery_current_sensor_adj_err ||
        receivedCanData.motor_controller_error.motor_current_sensor_adj_err || receivedCanData.motor_controller_error.accelerator_position_err || receivedCanData.motor_controller_error.controller_voltage_sensor_err ||
        receivedCanData.motor_controller_error.power_system_err || receivedCanData.motor_controller_error.overcurrent_err || receivedCanData.motor_controller_error.overvoltage_err ||
        receivedCanData.motor_controller_error.overcurrent_limit || receivedCanData.motor_controller_error.motor_system_err || receivedCanData.motor_controller_error.motor_lock ||
        receivedCanData.motor_controller_error.hall_sensor_short || receivedCanData.motor_controller_error.hall_sensor_open || receivedCanData.motor_controller_error.overheat_level);
        
        bps = receivedCanData.bps_error.dtc_p0_a1_f_internal_cell_communication_fault || receivedCanData.bps_error.current_sensor_fault || receivedCanData.bps_error.weak_pack_fault || receivedCanData.bps_error.thermistor_fault || receivedCanData.bps_error.can_communication_fault || receivedCanData.bps_error.redundant_power_supply_fault || receivedCanData.bps_error.high_voltage_isolation_fault || receivedCanData.bps_error.charge_enable_relay_fault || receivedCanData.bps_error.discharge_enable_relay_fault || receivedCanData.bps_error.internal_hardware_fault || receivedCanData.bps_error.dtc_p0_a0_a_internal_heatsink_thermistor_fault || receivedCanData.bps_error.internal_logic_fault || receivedCanData.bps_error.dtc_p0_a0_c_highest_cell_voltage_too_high_fault || receivedCanData.bps_error.dtc_p0_a0_e_lowest_cell_voltage_too_low_fault || receivedCanData.bps_error.pack_too_hot_fault;

        // curBps = {
        //     receivedCanData.bps_error.dtc_p0_a1_f_internal_cell_communication_fault,
        //     receivedCanData.bps_error.current_sensor_fault,
        //     receivedCanData.bps_error.weak_pack_fault,
        //     receivedCanData.bps_error.thermistor_fault,
        //     receivedCanData.bps_error.can_communication_fault,
        //     receivedCanData.bps_error.redundant_power_supply_fault,
        //     receivedCanData.bps_error.high_voltage_isolation_fault,
        //     receivedCanData.bps_error.charge_enable_relay_fault,
        //     receivedCanData.bps_error.discharge_enable_relay_fault,
        //     receivedCanData.bps_error.internal_hardware_fault,
        //     receivedCanData.bps_error.dtc_p0_a0_a_internal_heatsink_thermistor_fault,
        //     receivedCanData.bps_error.internal_logic_fault,
        //     receivedCanData.bps_error.dtc_p0_a0_c_highest_cell_voltage_too_high_fault,
        //     receivedCanData.bps_error.dtc_p0_a0_e_lowest_cell_voltage_too_low_fault,
        //     receivedCanData.bps_error.pack_too_hot_fault
        // };

        // bpsNames = {
        //     "Internal Cell Communication Fault",
        //     "Current sensor Fault",
        //     "Weak Pack Fault",
        //     "Thermistor Fault",
        //     "CAN Communication Fault",
        //     "Redundant Power Supply Fault",
        //     "High Voltage Isolation Fault",
        //     "Charge Enable Relay Fault",
        //     "Discharge Enable Relay Fault",
        //     "Internal Hardware Fault",
        //     "Internal Heatsink Thermistor Fault",
        //     "Internal Logic Fault",
        //     "Highest Cell Voltage Too High Fault",
        //     "Lowest Cell Voltage Too Low Fault",
        //     "Pack Too Hot Fault"
        // };
    }
#else
    rpm = 1.0f;
    brake = false;
    man = true;
    regen = false;
    cruise = true;
    throttle = 0.0f;
    brake_pedal = 0.5f;
    throttle_pedal = 24.5f;
    regen_brake = 90.2f;
    cruise_speed = 34.1f;
    pack_volt = 80.4f;
    pack_curr = 5.2f;
    pack_soc = 14.0f;
    charge_relay = true;
    discharge_relay = true;
    mtr = true;
    bps = false;
#endif
    right = presenter->getRightTurnSignal(); 
    left = presenter->getLeftTurnSignal();
    hazard = presenter->getHazards();
    dtc_status = false; //missing
    lowpow = presenter->getLowPowerMode();
    regenval = presenter->getRegenEn();
    cruiseinc = presenter->getCruiseInc(); 
    cruiseval = presenter->getCruiseEn();
    cruisedec = presenter->getCruiseDec();
    rpm_value.setWildcard(rpm_valueBuffer);
    braking_value.setWildcard(braking_valueBuffer);
    man_drive_value.setWildcard(man_drive_valueBuffer);
    regen_drive_value.setWildcard(regen_drive_valueBuffer);
    cruise_drive_value.setWildcard(cruise_drive_valueBuffer);
    throttle_value.setWildcard(throttle_valueBuffer);
    brake_pedal_value.setWildcard(brake_pedal_valueBuffer);
    throttle_pedal_value.setWildcard(throttle_pedal_valueBuffer);
    regen_brake_value.setWildcard(regen_brake_valueBuffer);
    cruise_speed_value.setWildcard(cruise_speed_valueBuffer);
    pack_volt_value.setWildcard(pack_volt_valueBuffer);
    pack_curr_value.setWildcard(pack_curr_valueBuffer);
    pack_soc_value.setWildcard(pack_soc_valueBuffer);
    dtc_status_value.setWildcard(dtc_status_valueBuffer);
    charge_relay_value.setWildcard(charge_relay_valueBuffer);
    discharge_relay_status.setWildcard(discharge_relay_statusBuffer);
    left_turn_value.setWildcard(left_turn_valueBuffer);
    right_turn_value.setWildcard(right_turn_valueBuffer);
    low_power_value.setWildcard(low_power_valueBuffer);
    hazards_value.setWildcard(hazards_valueBuffer);
    regen_value.setWildcard(regen_valueBuffer);
    cruise_inc_value.setWildcard(cruise_inc_valueBuffer);
    cruise_value.setWildcard(cruise_valueBuffer);
    cruise_dec_value.setWildcard(cruise_dec_valueBuffer);
    mtr_controller_error_value.setWildcard(mtr_controller_error_valueBuffer);
    bps_error_value.setWildcard(bps_error_valueBuffer);
    error_list_1.setWildcard(error_list_1Buffer);
    error_list_2.setWildcard(error_list_2Buffer);
    error_list_3.setWildcard(error_list_3Buffer);

    uint32_t onColor = touchgfx::Color::getColorFromRGB(0x5E, 0xFF, 0x87);
    uint32_t offColor = touchgfx::Color::getColorFromRGB(255, 255, 255);
    uint32_t errColor = touchgfx::Color::getColorFromRGB(0xDB, 0x27, 0x27);

    // RPM
    Unicode::snprintfFloat(rpm_valueBuffer, RPM_VALUE_SIZE, "%.1f", rpm);

    // Drive/Status booleans
    Unicode::snprintf(braking_valueBuffer, BRAKING_VALUE_SIZE, brake ? "On" : "Off");
    braking_value.setColor(brake ? onColor : offColor);

    Unicode::snprintf(man_drive_valueBuffer, MAN_DRIVE_VALUE_SIZE, man ? "On" : "Off");
    man_drive_value.setColor(man ? onColor : offColor);

    Unicode::snprintf(regen_drive_valueBuffer, REGEN_DRIVE_VALUE_SIZE, regen ? "On" : "Off");
    regen_drive_value.setColor(regen ? onColor : offColor);

    Unicode::snprintf(cruise_drive_valueBuffer, CRUISE_DRIVE_VALUE_SIZE, cruise ? "On" : "Off");
    cruise_drive_value.setColor(cruise ? onColor : offColor);

    // Numeric values
    Unicode::snprintfFloat(throttle_valueBuffer, THROTTLE_VALUE_SIZE, "%.1f", throttle);
    Unicode::snprintfFloat(brake_pedal_valueBuffer, BRAKE_PEDAL_VALUE_SIZE, "%.1f", brake_pedal);
    Unicode::snprintfFloat(throttle_pedal_valueBuffer, THROTTLE_PEDAL_VALUE_SIZE, "%.1f", throttle_pedal);
    Unicode::snprintfFloat(regen_brake_valueBuffer, REGEN_BRAKE_VALUE_SIZE, "%.1f", regen_brake);
    Unicode::snprintfFloat(cruise_speed_valueBuffer, CRUISE_SPEED_VALUE_SIZE, "%.1f", cruise_speed);
    Unicode::snprintfFloat(pack_volt_valueBuffer, PACK_VOLT_VALUE_SIZE, "%.1f", pack_volt);
    Unicode::snprintfFloat(pack_curr_valueBuffer, PACK_CURR_VALUE_SIZE, "%.1f", pack_curr);
    Unicode::snprintfFloat(pack_soc_valueBuffer, PACK_SOC_VALUE_SIZE, "%.1f", pack_soc);

    // More statuses
    Unicode::snprintf(dtc_status_valueBuffer, DTC_STATUS_VALUE_SIZE, dtc_status ? "On" : "Off");
    dtc_status_value.setColor(dtc_status ? onColor : offColor);

    Unicode::snprintf(charge_relay_valueBuffer, CHARGE_RELAY_VALUE_SIZE, charge_relay ? "On" : "Off");
    charge_relay_value.setColor(charge_relay ? onColor : offColor);

    Unicode::snprintf(discharge_relay_statusBuffer, DISCHARGE_RELAY_STATUS_SIZE, discharge_relay ? "On" : "Off");
    discharge_relay_status.setColor(discharge_relay ? onColor : offColor);

    Unicode::snprintf(left_turn_valueBuffer, LEFT_TURN_VALUE_SIZE, left ? "On" : "Off");
    left_turn_value.setColor(left ? onColor : offColor);

    Unicode::snprintf(right_turn_valueBuffer, RIGHT_TURN_VALUE_SIZE, right ? "On" : "Off");
    right_turn_value.setColor(right ? onColor : offColor);

    Unicode::snprintf(low_power_valueBuffer, LOW_POWER_VALUE_SIZE, lowpow ? "On" : "Off");
    low_power_value.setColor(lowpow ? onColor : offColor);

    Unicode::snprintf(hazards_valueBuffer, HAZARDS_VALUE_SIZE, hazard ? "On" : "Off");
    hazards_value.setColor(hazard ? onColor : offColor);

    Unicode::snprintf(regen_valueBuffer, REGEN_VALUE_SIZE, regenval ? "On" : "Off");
    regen_value.setColor(regenval ? onColor : offColor);

    Unicode::snprintf(cruise_inc_valueBuffer, CRUISE_INC_VALUE_SIZE, cruiseinc ? "On" : "Off");
    cruise_inc_value.setColor(cruiseinc ? onColor : offColor);

    Unicode::snprintf(cruise_valueBuffer, CRUISE_VALUE_SIZE, cruiseval ? "On" : "Off");
    cruise_value.setColor(cruiseval ? onColor : offColor);

    Unicode::snprintf(cruise_dec_valueBuffer, CRUISE_DEC_VALUE_SIZE, cruisedec ? "On" : "Off");
    cruise_dec_value.setColor(cruisedec ? onColor : offColor);

    Unicode::snprintf(mtr_controller_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, mtr ? "ERR" : "None");
    mtr_controller_error_value.setColor(mtr ? errColor : offColor);

    Unicode::snprintf(bps_error_valueBuffer, BPS_ERROR_VALUE_SIZE, bps ? "ERR" : "None");
    bps_error_value.setColor(bps ? errColor : offColor);

    bool err1 = false;
    bool err2 = false;
    bool err3 = false;

    if(bps == true)
    {
        for(int i = 0; i < 15; i++)
        {
            if(curBps[i] == true)
            {
                arrayList.push_back(bpsNames[i]);
                if(err1 == false)
                    err1 = true;
                else if(err2 == false)
                    err2 = true;
                else
                    err3 = true;
            }
        }
    }

    Unicode::snprintf(error_list_1Buffer, ERROR_LIST_1_SIZE, err1 ? bpsNames[arrayList.size()-1] : "None");
    Unicode::snprintf(error_list_2Buffer, ERROR_LIST_2_SIZE, err2 ? bpsNames[arrayList.size()-2] : "None");
    Unicode::snprintf(error_list_3Buffer, ERROR_LIST_3_SIZE, err3 ? bpsNames[arrayList.size()-3] : "None");



    // Invalidate all to refresh the screen
    rpm_value.invalidate();
    braking_value.invalidate();
    man_drive_value.invalidate();
    regen_drive_value.invalidate();
    cruise_drive_value.invalidate();
    throttle_value.invalidate();
    brake_pedal_value.invalidate();
    throttle_pedal_value.invalidate();
    regen_brake_value.invalidate();
    cruise_speed_value.invalidate();
    pack_volt_value.invalidate();
    pack_curr_value.invalidate();
    pack_soc_value.invalidate();
    dtc_status_value.invalidate();
    charge_relay_value.invalidate();
    discharge_relay_status.invalidate();
    left_turn_value.invalidate();
    right_turn_value.invalidate();
    low_power_value.invalidate();
    hazards_value.invalidate();
    regen_value.invalidate();
    cruise_inc_value.invalidate();
    cruise_value.invalidate();
    cruise_dec_value.invalidate();
    mtr_controller_error_value.invalidate();
    bps_error_value.invalidate();
    error_list_1.invalidate();
    error_list_2.invalidate();
    error_list_3.invalidate();
}