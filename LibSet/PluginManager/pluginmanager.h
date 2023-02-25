#ifndef PLUGINMANAGER_H
#define PLUGINMANAGER_H

#include "PluginManager_global.h"
#include <QPluginLoader>
#include "plugininterface.h"

class PLUGINMANAGER_EXPORT PluginManager:public QObject
{
    Q_OBJECT

/*  插件管理组 */
protected:
                                                    /** 插件检索文件夹 */
    QString sPluginDir = "../Res/Plugins/";
public:
                                                    /** 插件路径 : QPluginLoader实例 */
    QHash<QString, QPluginLoader*> m_hashLoaders = {};
                                                    /** 插件路径 : 插件名称 */
    QHash<QString, QString> m_hashName = {};
public:
                                                    /** 插件检索，并生成/更新插件列表 */
    //void seachPlugin();
                                                    /** 加载所有插件，循环loadPlugin */
    QHash<QString, QPluginLoader*> loadAllPlugins();
                                                    /** 加载某个插件，并监听信息发送请求 */
    QPluginLoader* loadPlugin(const QString fileAbsPath);
                                                    /** 卸载所有插件，循环unloadPlugin */
    void unloadAllPlugins();
                                                    /** 卸载某个插件 */
    void unloadPlugin(const QString fileAbsPath);
                                                    /** 通过名字获取插件 */
    QPluginLoader* getPlugin(const QString name);


                                                    /** 初始化某个插件 */
    void initNode();


/* 插件通信中转代理 */
//public slots:
//    void recMsgFromPlugin(PluginMetaData metadata);

/* 单例模式（!多线程不安全版本） */
public:
    static PluginManager* instance()
    {
        if(m_instance == nullptr)
        {
            m_instance = new PluginManager();
        }
        return m_instance;
    }
private:
    static PluginManager *m_instance;
    explicit PluginManager();
    ~PluginManager();

/* 垃圾收集器。嵌套类，不过这里好像并不会被自动创建，bug？ */
private:
    class GarbageCollector
    {
        GarbageCollector()
        {
            qDebug()<<"GarbageCollector Init";
        }
        ~GarbageCollector()
        {
            qDebug()<<"GarbageCollector Release";
            if (PluginManager::instance())
            {
                delete PluginManager::instance();   // 因为可以delete空指针，安全
                PluginManager::m_instance = nullptr;
            }
        }
    };
    static GarbageCollector gc;
};

#endif // PLUGINMANAGER_H
