#include "core.h"

#include <QLabel>
#include <QMenuBar>
#include <corelog.h>

Core::Core(QWidget *parent)
    : QMainWindow(parent)
{
    resize( 700, 500 );

    /* 插件管理器部分 */
    m_PluginManager = PluginManager::instance();
    m_PluginManager->loadAllPlugins();

    /* 菜单部分 */
    QMenuBar * bar = new QMenuBar(this);
    setMenuBar(bar);
    /* Dock管理器部分 */
    m_DockManager = new ads::CDockManager(this);

    /* 菜单部分 */
    QMenu * menuView = bar->addMenu("View");    // 显示


    QAction * button = bar->addAction("Button");
    int count = 0;  // 会被销毁
    connect(button, &QAction::triggered, [count]()mutable{
        qDebug()<<"qDebug: " << ++count;
    });

    QMenu * menuPlugin = bar->addMenu("loadPlugins");   // 插件
    QMenu * menuUnPlugin = bar->addMenu("unloadPlugins");  // 创建和销毁

    /* 菜单中显示插件信息表 */
    for(auto i = m_PluginManager->m_hashName.begin();
        i != m_PluginManager->m_hashName.end();
        ++i)
    {
        QAction* pluginAct = menuPlugin->addAction(i.value());
        QPluginLoader* pluginLoader = m_PluginManager->m_hashLoaders[i.key()];

        /* 创建插件节点。绑定QWidget显示器与插件 */
        connect(pluginAct, &QAction::triggered, [i, pluginLoader, menuView, this, menuPlugin, pluginAct](){
            PluginInterface* pluginInterface = qobject_cast<PluginInterface*>(pluginLoader->instance());
            if(pluginInterface){
                // !!! PluginNode的构造函数是在这里触发的 !!!
                boost::any anyExport = pluginInterface->createNode()->m_exportMessages[0];
                if(anyExport.type() == typeid(QWidget*))
                {
                    // 旧版每取一次控件调用一次getPluginWidget，就会重新new一个
                    // 新版中插件仅在构建时创建控件并压入接口集，这里每一次调用，指针都指向同一个控件
                    // 所以需要另外拷贝或使用原型模式来设计一下？或者简单点——拷贝构造函数？但QObject是不允许拷贝的
                    QWidget* widExport = boost::any_cast<QWidget*>(anyExport); // 触发拷贝构造，原型模式
                    ads::CDockWidget* dockWidget = new ads::CDockWidget(i.value());
                    dockWidget->setWidget(widExport);
                    menuView->addAction(dockWidget->toggleViewAction());
                    m_DockManager->addDockWidget(ads::TopDockWidgetArea, dockWidget);
                    menuPlugin->removeAction(pluginAct);
                }
            }
        });
    }

    /* Dock管理器部分 */
    // Dock - Label
    QLabel* l = new QLabel();                       // Dock控件中的内容
    l->setWordWrap(true);                           // 保存标签的换行策略（默认禁用）
    l->setAlignment(Qt::AlignTop | Qt::AlignLeft);  // 对齐方式（默认左对齐+垂直居中）
    l->setText("It's a content text. ");
    ads::CDockWidget* dockWidget = new ads::CDockWidget("Label 1"); // Dock控件
    dockWidget->setWidget(l);                                       // 设置内容
    menuView->addAction(dockWidget->toggleViewAction());// 切换Action状态（是否显示）
    m_DockManager->addDockWidget(ads::TopDockWidgetArea, dockWidget);// 添加进Dock管理器

    /* Dock - log */
//    CoreLog * coreLog = CoreLog::getInstance(this);
//    dockWidget = new ads::CDockWidget("Log");
//    dockWidget->setFeature(ads::CDockWidget::DockWidgetDeleteOnClose, true);// 消息渠道切换
//    dockWidget->resize(700,150);
//    dockWidget->setWidget(coreLog);
//    menuView->addAction(dockWidget->toggleViewAction());
//    m_DockManager->addDockWidget(ads::BottomDockWidgetArea, dockWidget);
}

Core::~Core()
{
}
