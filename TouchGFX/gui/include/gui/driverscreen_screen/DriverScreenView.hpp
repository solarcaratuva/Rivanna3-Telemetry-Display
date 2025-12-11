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
protected:
};

#endif // DRIVERSCREENVIEW_HPP
