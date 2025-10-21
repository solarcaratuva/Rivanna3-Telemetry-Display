#ifndef DATASCREENVIEW_HPP
#define DATASCREENVIEW_HPP

#include <gui_generated/datascreen_screen/DataScreenViewBase.hpp>
#include <gui/datascreen_screen/DataScreenPresenter.hpp>

class DataScreenView : public DataScreenViewBase
{
public:
    DataScreenView();
    virtual ~DataScreenView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // DATASCREENVIEW_HPP
