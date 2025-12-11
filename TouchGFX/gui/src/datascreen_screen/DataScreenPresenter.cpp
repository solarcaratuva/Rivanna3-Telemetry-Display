#include <gui/datascreen_screen/DataScreenView.hpp>
#include <gui/datascreen_screen/DataScreenPresenter.hpp>

DataScreenPresenter::DataScreenPresenter(DataScreenView& v)
    : view(v)
{

}

void DataScreenPresenter::activate()
{

}

void DataScreenPresenter::deactivate()
{

}

float DataScreenPresenter::getSpeed(int rpm)
{
    return model->calcSpeed(rpm);
}

bool DataScreenPresenter::mtrError()
{
    return model->mtrError();
}

bool DataScreenPresenter::bpsError()
{
    return model->bpsError();
}

bool DataScreenPresenter::getRightTurnSignal() {
    return model->isRightTurnSignal();
}

bool DataScreenPresenter::getLeftTurnSignal() {
    return model->isLeftTurnSignal(); 
}

bool DataScreenPresenter::getHazards() {
    return model->isHazards();
}

void DataScreenPresenter::toggleLeftTurnSignal()
{
    model->setLeftTurnSignal(!model->isLeftTurnSignal());
}

void DataScreenPresenter::toggleRightTurnSignal()
{
    model->setRightTurnSignal(!model->isRightTurnSignal());
}

bool DataScreenPresenter::getRegenEn() {
    return model->isRegenEn();
}

void DataScreenPresenter::toggleRegenEn() {
    return model->setRegenEn(!model->isRegenEn());
}

void DataScreenPresenter::toggleLowPowerEn() {
    return model->setLowPowerEn(!model->isLowPowerMode());
}

bool DataScreenPresenter::getCruiseEn() {
    return model->isCruiseEn();
}

bool DataScreenPresenter::getCruiseInc() {
    return model->isCruiseInc();
}

bool DataScreenPresenter::getCruiseDec() {
    return model->isCruiseDec();
}

bool DataScreenPresenter::getLowPowerMode() {
    return model->isLowPowerMode();
}

void DataScreenPresenter::setRPM(int newRPM)
{
    model->setRPM(newRPM);
}

int DataScreenPresenter::getRPM()
{
    return model->getRPM();
}