#include <gui/driverscreen_screen/DriverScreenView.hpp>
#include <gui/driverscreen_screen/DriverScreenPresenter.hpp>

DriverScreenPresenter::DriverScreenPresenter(DriverScreenView& v)
    : view(v)
{

}

void DriverScreenPresenter::activate()
{

}

void DriverScreenPresenter::deactivate()
{

}


float DriverScreenPresenter::getSpeed(int rpm)
{
    return model->calcSpeed(rpm);
}

bool DriverScreenPresenter::mtrError()
{
    return model->mtrError();
}

bool DriverScreenPresenter::bpsError()
{
    return model->bpsError();
}

bool DriverScreenPresenter::getRightTurnSignal() {
    return model->isRightTurnSignal();
}

bool DriverScreenPresenter::getLeftTurnSignal() {
    return model->isLeftTurnSignal(); 
}

bool DriverScreenPresenter::getHazards() {
    return model->isHazards();
}

void DriverScreenPresenter::toggleLeftTurnSignal()
{
    model->setLeftTurnSignal(!model->isLeftTurnSignal());
}

void DriverScreenPresenter::toggleRightTurnSignal()
{
    model->setRightTurnSignal(!model->isRightTurnSignal());
}