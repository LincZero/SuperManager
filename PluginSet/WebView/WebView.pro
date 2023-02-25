include(plugininterface.pri)
QT += widgets
QT += quick
LIBS += User32.LIB  # 为Windows.h提供实现
# 【兼容性问题】
# QT5旧版本要使用webkit，QT5.15开始要使用webenginewidgets
QT += webenginewidgets
#QT += webkit
#QT += webkitwidgets
#greaterThan(QT_MAJOR_VERSION, 5) | equals(QT_MAJOR_VERSION, 5) { #大于Qt5主版本
#    greaterThan(QT_MINOR_VERSION, 6) | equals(QT_MINOR_VERSION, 6) { # 大于Qt6次版本
#        # QT 5.15在这
#        QT += webenginewidgets
#    } else {
#        # QT 6.0.3、6.1.3在这
#        QT += webkit
#        QT += webkitwidgets
#    }
#} else {
#        QT += webkit
#        QT += webkitwidgets
#}

#CONFIG -= qt # 不注释报错：expected function body after function declarator

TEMPLATE = lib
DEFINES += WEBVIEW_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    webview.cpp

HEADERS += \
    WebView_global.h \
    webview.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
