PATH_ROOT = $${OUT_PWD}/../..
DESTDIR = $${PATH_ROOT}/Res/Libs/PluginManager
INCLUDEPATH += ../../IncludePath

#INCLUDEPATH += -LC:/Boost/include/boost-1_78
#LIBS += -LC:/Boost/lib

QT -= gui

TEMPLATE = lib
DEFINES += PLUGINMANAGER_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    pluginmanager.cpp

HEADERS += \
    plugininterface.h \
    pluginmanager.h\
    PluginManager_global.h \
    pluginmessage.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
