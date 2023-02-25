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

DISTFILES += \
    pythonTest.py

# Python 静态链接
# 【兼容性问题】
# 可以在Qt中项目右键 > 添加静态库，快速相应附加代码
win32: LIBS += -L$$PWD/../../../../../../../../../../../../Soft/Dev/All/Python_Anaconda/libs/ -lpython37

INCLUDEPATH += $$PWD/../../../../../../../../../../../../Soft/Dev/All/Python_Anaconda/include
DEPENDPATH += $$PWD/../../../../../../../../../../../../Soft/Dev/All/Python_Anaconda/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/../../../../../../../../../../../../Soft/Dev/All/Python_Anaconda/libs/python37.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/../../../../../../../../../../../../Soft/Dev/All/Python_Anaconda/libs/libpython37.a
