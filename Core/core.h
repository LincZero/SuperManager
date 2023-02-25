#ifndef CORE_H
#define CORE_H

#include <QMainWindow>
#include "DockManager.h"                // 核心代码中的类
#include "pluginmanager.h"

class Core : public QMainWindow
{
    Q_OBJECT

public:
    Core(QWidget *parent = nullptr);
    ~Core();
private:
    ads::CDockManager* m_DockManager;   // 核心代码类
    PluginManager* m_PluginManager;
};

//static Core* pCore = nullptr;  // 全局指针

#endif // CORE_H
