#ifndef DATASCREENPRESENTER_HPP
#define DATASCREENPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class DataScreenView;

class DataScreenPresenter : public touchgfx::Presenter, public ModelListener
{
public:
    DataScreenPresenter(DataScreenView& v);

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
    
    float getSpeed(int rpm);

    bool mtrError();

    bool bpsError();

    bool getRightTurnSignal();

    bool getLeftTurnSignal();

    bool getHazards();

    void toggleLeftTurnSignal();

    void toggleRightTurnSignal();

    bool getRegenEn();

    void toggleRegenEn();

    void toggleLowPowerEn();

    bool getCruiseEn();

    bool getCruiseInc();

    bool getCruiseDec();

    bool getLowPowerMode();

    void setRPM(int newRPM);

    int getRPM();

    virtual ~DataScreenPresenter() {}

private:
    DataScreenPresenter();

    DataScreenView& view;
};

#endif // DATASCREENPRESENTER_HPP
