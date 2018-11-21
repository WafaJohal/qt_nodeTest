#-------------------------------------------------
#
# Project created by QtCreator 2018-11-21T14:08:03
#
#-------------------------------------------------

TARGET = qt_qnode
TEMPLATE = app

QT += core gui widgets network printsupport qml quick svg




# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += qt plugin c++11 std

INCLUDEPATH += /usr/lib/x86_64-linux-gnu/qt5/qml/ch/epfl/chili/ros/publisher


SOURCES += \
        main.cpp \
        #mainwindow.cpp \
    main_window.cpp \
    qnode.cpp \
    talker.cpp \
    listener_node.cpp

HEADERS += \
        #mainwindow.h \
    main_window.hpp \
    qnode.hpp \
    talker.hpp \
    listener_node.hpp

FORMS += \
        mainwindow.ui

CONFIG += mobility
MOBILITY = 


linux:!android{
    CONFIG += link_pkgconfig
        INCLUDEPATH += "/opt/ros/melodic/include"
        INCLUDEPATH += /home/wafa/catkin_ws/install/include
        LIBS += -L"/opt/ros/melodic/lib"
        LIBS += -L"/home/wafa/catkin_ws/install/lib/"
        LIBS += -lroscpp -lboost_signals -lboost_filesystem -lrosconsole
    LIBS += -lrosconsole_backend_interface -lboost_regex -lxmlrpcpp -ldynamic_reconfigure_config_init_mutex -lroscpp_serialization -lrostime -lboost_date_time -lcpp_common -lboost_system -lboost_thread -lconsole_bridge -ltinyxml -lclass_loader -lPocoFoundation -lroslib -lboost_iostreams -lnodeletlib -lbondcpp -luuid -lrosbag -lrosbag_storage -lboost_program_options -lroslz4 -llz4 -ltopic_tools -lactionlib -lmessage_filters -lrosconsole_bridge -lrospack
}
android {
        INCLUDEPATH += "/home/wafa/ros-android-ndk/roscpp_android/output/target/include"
        LIBS += -L"/home/wafa/ros-android-ndk/roscpp_android/output/target/lib/"
        INCLUDEPATH += "/home/wafa/ros-android-ndk/roscpp_android/output/catkin_ws/devel/include"
        LIBS += -L"/home/wafa/ros-android-ndk/roscpp_android/output/catkin_ws/devel/lib/"
        QT += androidextras
        #LIBS += -lrosconsole_print
        #LIBS += -lroscpp -lboost_signals -lboost_filesystem -lrosconsole
        #LIBS += -lrosconsole_backend_interface -lboost_regex -lxmlrpcpp -ldynamic_reconfigure_config_init_mutex -lroscpp_serialization -lrostime -lboost_date_time -lcpp_common -lboost_system -lboost_thread -lconsole_bridge -ltinyxml -lclass_loader -lPocoFoundation -lroslib -lboost_iostreams -lnodeletlib -lbondcpp -luuid -lrosbag -lrosbag_storage -lboost_program_options -lroslz4 -llz4 -ltopic_tools -lactionlib -lmessage_filters -lrosconsole_bridge -lrospack
        LIBS += -lroscpp -lboost_signals -lboost_filesystem -lrosconsole
    LIBS += -lrosconsole_print
    LIBS += -lrosconsole_backend_interface -lboost_regex -lxmlrpcpp -ldynamic_reconfigure_config_init_mutex -lroscpp_serialization -lrostime -lboost_date_time -lcpp_common -lboost_system -lboost_thread -lconsole_bridge -ltinyxml -lclass_loader -lPocoFoundation -lroslib -lboost_iostreams -lnodeletlib -lbondcpp -luuid -lrosbag -lrosbag_storage -lboost_program_options -lroslz4 -llz4 -ltopic_tools -lactionlib -lmessage_filters -lrosconsole_bridge -lrospack
}

LIBS += -lrosconsole_backend_interface -lboost_regex -lxmlrpcpp -ldynamic_reconfigure_config_init_mutex -lroscpp_serialization -lrostime -lboost_date_time -lcpp_common -lboost_system -lboost_thread -lconsole_bridge -ltinyxml -lclass_loader -lPocoFoundation -lroslib -lboost_iostreams -lnodeletlib -lbondcpp -luuid -lrosbag -lrosbag_storage -lboost_program_options -lroslz4 -llz4 -ltopic_tools -lactionlib -lmessage_filters -lrosconsole_bridge -lrospack



# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
