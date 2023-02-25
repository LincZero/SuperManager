#include "core.h"

#include <QApplication>

int main(int argc, char *argv[])
{
//    QCoreApplication::setAttribute(Qt::AA_UseOpenGLES); // Qt6不支持
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QCoreApplication::setAttribute(Qt::AA_ShareOpenGLContexts ); //这句相当于QtWebEngine::initialize()

    // LoadLibraryA("IamDLL");

    QApplication a(argc, argv);
    Core core;
    core.show();
    return a.exec();
}
