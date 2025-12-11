#ifndef STARTUPSCREEN2VIEW_HPP
#define STARTUPSCREEN2VIEW_HPP

#include <gui_generated/startupscreen2_screen/StartupScreen2ViewBase.hpp>
#include <gui/startupscreen2_screen/StartupScreen2Presenter.hpp>

class StartupScreen2View : public StartupScreen2ViewBase
{
public:
    StartupScreen2View();
    virtual ~StartupScreen2View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // STARTUPSCREEN2VIEW_HPP
