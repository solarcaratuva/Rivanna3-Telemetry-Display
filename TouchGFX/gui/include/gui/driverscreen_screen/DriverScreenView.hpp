#ifndef DRIVERSCREENVIEW_HPP
#define DRIVERSCREENVIEW_HPP

#include <gui_generated/driverscreen_screen/DriverScreenViewBase.hpp>
#include <gui/driverscreen_screen/DriverScreenPresenter.hpp>

class DriverScreenView : public DriverScreenViewBase
{
public:
    DriverScreenView();
    virtual ~DriverScreenView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
    virtual void main() override;
    virtual void handleKeyEvent(uint8_t key);

    void lapIncrease();
    void lapDecrease();

private:
    static int lapValue;
    static const uint16_t LAP_VALUE_SIZE = 10;
    Unicode::UnicodeChar lapValueBuffer[LAP_VALUE_SIZE];
protected:
};

#endif // DRIVERSCREENVIEW_HPP
