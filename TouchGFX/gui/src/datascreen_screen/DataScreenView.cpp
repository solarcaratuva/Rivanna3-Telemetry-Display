#include <gui/datascreen_screen/DataScreenView.hpp>
#include <touchgfx/Color.hpp>

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
    rpm_value.setWildcard(rpm_valueBuffer);
    braking_value.setWildcard(braking_valueBuffer);
    man_drive_value.setWildcard(man_drive_valueBuffer);
    regen_drive_value.setWildcard(regen_drive_valueBuffer);
    cruise_drive_value.setWildcard(cruise_drive_valueBuffer);
    throttle_value.setWildcard(throttle_valueBuffer);
    brake_pedal_value.setWldcard(brake_pedal_valueBuffer);
    throttle_pedal_value.setWildcard(throttle_pedal_valueBuffer);
    regen_brake_value.setWildcard(regen_brake_valueBuffer);
    pack_volt_value.setWildcard(pack_volt_valueBuffer);
    pack_curr_value.setWilcard(pack_curr_valueBuffer);
    pack_soc_value.setWildcard(pack_soc_valueBuffer);
    dtc_status_value.setWildcard(dtc_status_valueBuffer);
    charge_relay_value.setWildcard(charge_relay_valueBuffer);
    discharge_relay_status.setWildcard(discharge_relay_statusBuffer);
    Unicode::snprintfFloat(rpm_valueBuffer, RPM_VALUE_SIZE, "%.1f", rpm);
    Unicode::snprintf(braking_valueBuffer, BRAKING_VALUE_SIZE, "Off");
    braking_value.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
    Unicode::snprintf(man_drive_valueBuffer, MAN_DRIVE_VALUE_SIZE, "On");
    man_drive_value.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
    Unicode::snprintf(regen_drive_valueBuffer, REGEN_DRIVE_VALUE_SIZE, "Off");
    regen_drive_value.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
    Unicode::snprintf(cruise_drive_valueBuffer, CRUSIE_DRIVE_VALUE_SIZE, "On");
    cruise_drive_value.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
    Unicode::snprintfFloat(throttle_valueBuffer, THROTTLE_VALUE_SIZE, "%.1f", throttle);
    Unicode::snprintfFloat(brake_pedal_valueBuffer, BRAKE_PEDAL_VALUE_SIZE, "%.1f", brake_pedal);
    Unicode::snprintfFloat(throttle_pedal_valueBuffer, THROTTLE_PEDAL_VALUE_SIZE, "%.1f", throttle_pedal);
    Unicode::snprintfFloat(regen_brake_valueBuffer, REGEN_BRAKE_VALUE_SIZE, "%.1f", regen_brake);
    Unicode::snprintfFloat(cruise_speed_valueBuffer, CRUISE_SPEED_VALUE_SIZE, "%.1f", cruise_speed);
    Unicode::snprintfFloat(pack_volt_valueBuffer, PACK_VOLT_VALUE_SIZE, "%.1f", pack_volt);
    Unicode::snprintfFloat(pack_curr_valueBuffer, PACK_CURR_VALUE_SIZE, "%.1f", pack_curr);
    Unicode::snprintfFloat(pack_soc_valueBuffer, PACK_SOC_VALUE_SIZE, "%.1f", pack_soc);
    Unicode::snprintf(dtc_status_valueBuffer, DTC_STATUS_VALUE_SIZE, "On");
    dtc_status_value.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
    Unicode::snprintf(charge_relay_valueBuffer, CHARGE_RELAY_VALUE_SIZE, "On");
    charge_relay_value.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
    Unicode::snprintf(discharge_relay_statusBuffer, DISCHARGE_RELAY_STATUS_SIZE, "On");
    discharge_relay_status.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
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
}

void DataScreenView::tearDownScreen()
{
    DataScreenViewBase::tearDownScreen();
}
