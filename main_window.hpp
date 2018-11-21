/**
 * @file common/main_window.hpp
 *
 * @brief Qt based gui for eros_qtalker.
 *
 * @date November 2010
 **/
#ifndef QTUTORIALS_MAIN_WINDOW_H
#define QTUTORIALS_MAIN_WINDOW_H

/*****************************************************************************
** Includes
*****************************************************************************/

#include <QMainWindow>
#include "listener_node.hpp"
#include "qnode.hpp"
#include "talker.hpp"
#include "ui_mainwindow.h"


/*****************************************************************************
** Interface [MainWindow]
*****************************************************************************/
/**
 * @brief Qt central, all operations relating to the view part here.
 */
namespace Ui {
    class MainWindow;
}
class MainWindow : public QMainWindow {
Q_OBJECT

public:
    explicit MainWindow(Listener_Node *listener, Talker *talker, QWidget *parent = nullptr);
    ~MainWindow();

    void ReadSettings(); // Load up qt program settings at startup
    void WriteSettings(); // Save qt program settings when closing

    void closeEvent(QCloseEvent *event); // Overloaded function
    void showNoMasterMessage();

public Q_SLOTS:
    // Put automatically triggered slots here (because of connectSlotsByName())
    // void on_button_enable_clicked(bool check); // example only
    void on_actionAbout_triggered();
    void on_button_connect_clicked(bool check );
    void on_checkbox_use_environment_stateChanged(int state);

    /******************************************
    ** Manual connections
    *******************************************/
    void updateLoggingView(); // no idea why this can't connect automatically

private:
    Ui::MainWindow *ui;
    Listener_Node *lnode;
    Talker *tnode;
};

#endif // QTUTORIALS_MAIN_WINDOW_H
