include(plugininterface.pri)

QT += widgets
#CONFIG -= qt # 不注释报错：expected function body after function declarator

TEMPLATE = lib
DEFINES += TEXTMODULE_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    textmodule.cpp

HEADERS += \
    TextModule_global.h \
    textmodule.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
