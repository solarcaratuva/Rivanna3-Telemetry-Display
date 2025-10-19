#include <gui/screen1_screen/Screen1View.hpp>
#include <gui/screen1_screen/Screen1Presenter.hpp>

Screen1Presenter::Screen1Presenter(Screen1View& v)
    : view(v)
{

}

void Screen1Presenter::activate()
{

}

void Screen1Presenter::deactivate()
{

}

void Screen1Presenter::function1()
{
    
}

bool Screen1Presenter::getRightTurnSignal() {
    return model->isRightTurnSignal();
}

bool Screen1Presenter::getLeftTurnSignal() {
    return model->isLeftTurnSignal(); 
}

bool Screen1Presenter::getHazards() {
    return model->isHazards();
}

void Screen1Presenter::toggleLeftTurnSignal()
{
    model->setLeftTurnSignal(!model->isLeftTurnSignal());
}

void Screen1Presenter::toggleRightTurnSignal()
{
    model->setRightTurnSignal(!model->isRightTurnSignal());
}

bool Screen1Presenter::getRegenEn() {
    return model->isRegenEn();
}

void Screen1Presenter::toggleRegenEn() {
    return model->setRegenEn(!model->isRegenEn());
}

void Screen1Presenter::toggleLowPowerEn() {
    return model->setLowPowerEn(!model->isLowPowerMode());
}

bool Screen1Presenter::getCruiseEn() {
    return model->isCruiseEn();
}

bool Screen1Presenter::getCruiseInc() {
    return model->isCruiseInc();
}

bool Screen1Presenter::getCruiseDec() {
    return model->isCruiseDec();
}

bool Screen1Presenter::getLowPowerMode() {
    return model->isLowPowerMode();
}

void Screen1Presenter::setRPM(int newRPM)
{
    model->setRPM(newRPM);
}

int Screen1Presenter::getRPM()
{
    return model->getRPM();
}