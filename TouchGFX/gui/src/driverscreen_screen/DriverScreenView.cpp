#include <gui/driverscreen_screen/DriverScreenView.hpp>
#include <touchgfx/Color.hpp>

#ifndef SIMULATOR
#include "data_queues.h"
#endif

DriverScreenView::DriverScreenView()
{
    line1.setPainter(line1Painter);
    line1_1.setPainter(line1_1Painter);
    shape1_2.setPainter(shape1_2Painter);
    shape1_2_1.setPainter(shape1_2_1Painter);
}

void DriverScreenView::setupScreen()
{
    DriverScreenViewBase::setupScreen();
    float speedMph = 1.0f;
    float state = 50.f;
    float watt = 5.99f;
    float bps_v = 2.0f;
    float bps_c = 3.0f;
    speed.setWildcard(speedBuffer);
    soc.setWildcard(socBuffer);
    watts.setWildcard(wattsBuffer);
    bpsv.setWildcard(bpsvBuffer);
    bpsc.setWildcard(bpscBuffer);
    mtr_controller_error_value.setWildcard(mtr_controller_error_valueBuffer);
    bps_error_value.setWildcard(bps_error_valueBuffer);
    Unicode::snprintfFloat(speedBuffer, SPEED_SIZE, "%.1f", speedMph);
    Unicode::snprintfFloat(socBuffer, SOC_SIZE, "%.1f", state);
    Unicode::snprintfFloat(wattsBuffer, WATTS_SIZE, "%.1f", watt);
    Unicode::snprintfFloat(bpsvBuffer, BPSV_SIZE, "%.1f", bps_v);
    Unicode::snprintfFloat(bpscBuffer, BPSC_SIZE, "%.1f", bps_c);
    Unicode::snprintf(mtr_controller_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, "ERR");
    mtr_controller_error_value.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
    Unicode::snprintf(bps_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, "None");
    bps_error_value.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
    speed.invalidate();
    soc.invalidate();
    watts.invalidate();
    bpsv.invalidate();
    bpsc.invalidate();
    mtr_controller_error_value.invalidate();
    bps_error_value.invalidate();
}

void DriverScreenView::tearDownScreen()
{
    DriverScreenViewBase::tearDownScreen();
}

void DriverScreenView::handleKeyEvent(uint8_t key)
{
    // Use simple ASCII keys in the simulator window:
    if (key == 'A' || key == 'a')
    {
        presenter->toggleLeftTurnSignal();
    }
    else if (key == 'D' || key == 'd')
    {
        presenter->toggleRightTurnSignal();
    }
    invalidate();
}

void DriverScreenView::main()
{
    int packSOC = 0;
    int packVolt = 0;
    int packCurr = 0;
    int rpm = 0;
    int auxBatteryMVolt = 0;
#ifndef SIMULATOR
    ReceivedCanData_t receivedCanData;
    if (xQueueReceive(canReceivedQueue, &receivedCanData, (TickType_t)0 ) == pdTRUE) {
        rpm = receivedCanData.motor_controller_power_status.motor_rpm;
        packVolt = receivedCanData.bps_pack_information.pack_voltage;
        packSOC = receivedCanData.bps_pack_information.pack_soc;
        auxBatteryMVolt = receivedCanData.aux_battery_status.aux_voltage;
        packCurr = receivedCanData.bps_pack_information.pack_current;
    }
#else
    packCurr = 5;
    rpm = 1234;
    auxBatteryMVolt = 12569;
    packVolt  = 42;
    packSOC   = 0;
#endif
    bool isRight = presenter->getRightTurnSignal(); 
    bool isLeft = presenter->getLeftTurnSignal();
    bool isHaz = presenter->getHazards();
    if (isHaz) {
        line1Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
        shape1_2_1Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
        line1_1Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
        shape1_2Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
    } else if (isLeft) {
        line1Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
        shape1_2_1Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
        line1_1Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
        shape1_2Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
    } else if (isRight) {
        line1Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
        shape1_2_1Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
        line1_1Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
        shape1_2Painter.setColor(touchgfx::Color::getColorFromRGB(71, 201, 4));
    } else {
        line1Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
        shape1_2_1Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
        line1_1Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
        shape1_2Painter.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
    }
    float packVolt_f = packVolt * 0.1f;
    float packCurr_f = packCurr * 0.1f;
    float soc_f = packSOC * 0.5f;
    float speedInMph = presenter->getSpeed(rpm);
    float auxBatteryVoltConv = auxBatteryMVolt * 0.001f;
    float watt = auxBatteryVoltConv * packCurr_f;
    bool mtrError = presenter->mtrError();
    bool bpsError = presenter->bpsError();
    Unicode::snprintfFloat(speedBuffer, SPEED_SIZE, "%.1f", speedInMph);
    Unicode::snprintfFloat(socBuffer, SOC_SIZE, "%.1f", soc_f);
    Unicode::snprintfFloat(wattsBuffer, WATTS_SIZE, "%.1f", watt);
    Unicode::snprintfFloat(bpsvBuffer, BPSV_SIZE, "%.2f", packVolt_f);
    Unicode::snprintfFloat(bpscBuffer, BPSC_SIZE, "%.2f", packCurr_f);
    if (mtrError == true)
    {
        // Set text to "ERR" and color to red
        Unicode::snprintf(mtr_controller_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, "ERR");
        mtr_controller_error_value.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
    }
    else
    {
        // Set text to "None" and color to white
        Unicode::snprintf(mtr_controller_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, "None");
        mtr_controller_error_value.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
    }
    if (bpsError == true)
    {
        // Set text to "ERR" and color to red
        Unicode::snprintf(bps_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, "ERR");
        bps_error_value.setColor(touchgfx::Color::getColorFromRGB(222, 84, 84));
    }
    else
    {
        // Set text to "None" and color to white
        Unicode::snprintf(bps_error_valueBuffer, MTR_CONTROLLER_ERROR_VALUE_SIZE, "None");
        bps_error_value.setColor(touchgfx::Color::getColorFromRGB(255, 255, 255));
    }
    speed.invalidate();
    soc.invalidate();
    watts.invalidate();
    mtr_controller_error_value.invalidate();
    bps_error_value.invalidate();
    bpsv.invalidate();
    bpsc.invalidate();
}
