#ifndef STARTUPSCREEN2PRESENTER_HPP
#define STARTUPSCREEN2PRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class StartupScreen2View;

class StartupScreen2Presenter : public touchgfx::Presenter, public ModelListener
{
public:
    StartupScreen2Presenter(StartupScreen2View& v);

    /**
     * The activate function is called automatically when this screen is "switched in"
     * (ie. made active). Initialization logic can be placed here.
     */
    virtual void activate();

    /**
     * The deactivate function is called automatically when this screen is "switched out"
     * (ie. made inactive). Teardown functionality can be placed here.
     */
    virtual void deactivate();

    virtual ~StartupScreen2Presenter() {}

private:
    StartupScreen2Presenter();

    StartupScreen2View& view;
};

#endif // STARTUPSCREEN2PRESENTER_HPP
