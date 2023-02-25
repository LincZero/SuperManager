#include "pluginmanager.h"

#include <QDebug>
#include <QDir>
#include <QCoreApplication>

/* 插件管理组 */
/** 加载全部插件 */
QHash<QString, QPluginLoader*> PluginManager::loadAllPlugins()
{
    QDir dirPlugins = QDir(QCoreApplication::applicationDirPath());
    // 路径存在检查，并cd
    if(!dirPlugins.cd(sPluginDir)){
        return m_hashLoaders;
    };
    // 遍历插件路径，并加载
    foreach (QString strPluginFileName, dirPlugins.entryList(QDir::Files)){
        loadPlugin(dirPlugins.absoluteFilePath(strPluginFileName));
    }
    return m_hashLoaders;
}

/** 加载某个插件，并监听信息发送请求，并加入插件信息组 */
QPluginLoader* PluginManager::loadPlugin(QString fileAbsPath)
{
    /* 加载某个Dll。
     * 地址中的文件不一定是dll，要检查，排除其他文件如lib、exp、ilk、pdb。
     * PluginInterface的构造函数是在这里触发的。
     * instance对象用到的是单例模式，删除时要特别注意 */
    QPluginLoader *pluginLoader = new QPluginLoader(fileAbsPath);
    if(!pluginLoader->instance()){
        return nullptr;
    }
    QObject *plugin = pluginLoader->instance();

    /* 将插件转化为符合接口的插件 */
    PluginInterface* pluginInterface = qobject_cast<PluginInterface*>(plugin);
    if(!pluginInterface){
        qDebug()<<"It is not a standard plugin: "<<fileAbsPath;
        return nullptr;
    }

    /* 检查是否已经加载过。
     * 若已加载过不会刷新替换，而是会返回已经加载过的那个。
     * 忌讳在未删除loader的情况下替换掉value */
    if(m_hashName.find(fileAbsPath)!=m_hashName.end()){
        return m_hashLoaders.value(fileAbsPath);
    }

    /* 更新插件信息表 */
    m_hashLoaders.insert(fileAbsPath, pluginLoader);
    m_hashName.insert(fileAbsPath, pluginInterface->getPluginName());

    /* 绑定监听器 */
    // 注意一下这里必须用instance的Object*类型值，PluginInterface*居然无法在这里转换为Object*
    // connect(pluginLoader->instance(), SIGNAL(sendMsgToManager(PluginMetaData)),
    //     this, SLOT(recMsgFromPlugin(PluginMetaData)));

    return pluginLoader;
}

/** 卸载全部插件 */
void PluginManager::unloadAllPlugins()
{
    for(QString fileAbsPath : m_hashLoaders.keys())
        unloadPlugin((fileAbsPath));
}

/** 卸载某个插件 */
void PluginManager::unloadPlugin(const QString fileAbsPath)
{
    QPluginLoader *loader = m_hashLoaders.value(fileAbsPath);
    if(loader->unload()) // 如果插件可以卸载则返回true，否则返回false
    {
        m_hashLoaders.remove(fileAbsPath);
        m_hashName.remove(fileAbsPath);
        delete loader;
        loader = nullptr;
    }
}

/** 获取插件（通过名字） */
QPluginLoader* PluginManager::getPlugin(const QString name)
{
    return m_hashLoaders.value(m_hashName.key(name));
}

/* 插件通信中转转输出 */
//void PluginManager::recMsgFromPlugin(PluginMetaData pluginMetaData)
//{
//    // 消息转发
//    QPluginLoader* loader = getPlugin(pluginMetaData.dest);
//    if(loader)
//    {
//        PluginInterface *pluginInterface = qobject_cast<PluginInterface*>(loader->instance());
//        if(pluginInterface)
//        {
//            pluginInterface->recMsgFromManager(pluginMetaData);
//        }
//    }
//}

/* 单例模式部分 */
PluginManager* PluginManager::m_instance;

PluginManager::PluginManager()
{
    qDebug()<<"PluginManager Init";
}

PluginManager::~PluginManager()
{
    qDebug()<<"PluginManager Release";
}
