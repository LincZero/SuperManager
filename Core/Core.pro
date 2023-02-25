DESTDIR = ../Bin            # exe生成路径
# 打包需知
# 1. 打包方法：复制exe文件并cd进去，QT命令行执行：windeployqt Core.exe
# 2. exe文件需要放在./Bin文件夹内。否则报错：无法找到入口，无法定位程序输入点
# 3. 非插件dll文件需要放在exe相同路径下。否则报错：找不到dll，无法继续执行代码
# 4. 插件dll文件需要放在./Res/Plugin文件夹内。否则检测不到插件

## dll对接
include(abs.pri)            # 使用Qt-Advanced-Docking-System
include(pluginmanager.pri)  # 插件管理系统
INCLUDEPATH += ../LibSet/WebView

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
CONFIG += c++14

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    core.cpp \
    corelog.cpp \
    main.cpp

HEADERS += \
    core.h \
    corelog.h


# 部署的默认规则。
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
