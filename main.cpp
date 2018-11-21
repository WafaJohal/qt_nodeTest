#include "main_window.hpp"
#include "listener_node.hpp"
#include "talker.hpp"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Listener_Node listener(argc,argv);
    Talker talker(argc,argv);
    MainWindow w(&listener, &talker);
    w.show();

    return a.exec();
}
