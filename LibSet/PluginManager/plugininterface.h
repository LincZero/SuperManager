#ifndef PLUGININTERFACE_H
#define PLUGININTERFACE_H

#include <QtPlugin>
#include <QVector>
#include "boost/any.hpp"
//#include "pluginmessage.h"

// forward declaration
//class PluginInterfaceRender;

// 插件基本信息
//struct PluginInfo
//{
//    QString name;
//    QString info;
//    QVector<QString*> m_vecDependPluginName; // 插件依赖项
//};

/** 枚举，节点类型。
 *  用来限制和规范部分节点IO流，同时也允许使用不在标准流中的类型Any，不过使用这种类型会有危险
 */
enum NodeType   // 其实就是类似于文件扩展名
{
    N_QWidget,
    N_Int,
    N_Long,
    N_Float,
    N_Str,
    N_List,
    N_Tree,
    N_Json,       // 尽量用json不用any
    N_Any
};


/** 节点模板。
 *  节点应要分为唯一节点和批量节点，批量节点又分为共享节点，其中QObject视图不为共享节点
 *  设计缺点：要初始化节点才能知道该节点的输入和输出接口是什么。换句话说初始化了才知道这个节点有没有GUI窗口
 *  优化思路：还是只能限制接口的类型种类
 */
class PluginNode
{
public:
    PluginNode(){qDebug()<<"PluginNode Init";};
    ~PluginNode(){qDebug()<<"PluginNode Delete";};
                                                    /** 定义类型名 */
    typedef QVector<boost::any> vec_any;
                                                    /** 插件输入接口 */
    vec_any m_importMessages = {};
                                                    /** 插件输出接口 */
    vec_any m_exportMessages = {};
};

/** 插件接口 */
class PluginInterface:public QObject
{
    Q_OBJECT
public:
    PluginInterface(){qDebug()<<"PluginInterface Init";};
    virtual ~PluginInterface(){qDebug()<<"PluginInterface Delete";/*emit unload();*/};

protected:
                                                    /** 定义类型名 */
    typedef QVector<NodeType> vec_nodeType;
                                                    /** 插件输入接口 */
    vec_nodeType m_importMessages = {};
                                                    /** 插件输出接口 */
    vec_nodeType m_exportMessages = {};

/* 标准接口类 - 纯虚接口 */
public:
                                                    /** 插件名 */
    virtual QString getPluginName() const = 0;
                                                    /** 插件信息 */
    virtual QString getPluginInfo() const = 0;

                                                    /** 创建节点，主要是QObject不能用原型模式 */
    virtual PluginNode* createNode() const = 0;
};

//signals:
//    void unload();

/* 通信用接口 */
//public:
//    virtual void recMsgFromManager(PluginMetaData pluginMetaData) {};
//signals:
//    void sendMsgToManager(PluginMetaData pluginMetaData) const;

/* Render接口类 */
//public:
//    virtual QWidget *getPluginWidget() const = 0;       // 插件控件？？？
//    /* 可选接口 - 默认渲染器 */
//    virtual PluginInterfaceRender* getRender();
//    virtual void setRender(PluginInterfaceRender* pluginInterfaceRender);

#define PluginInterface_iid "com.Interface.PluginInterface"
Q_DECLARE_INTERFACE(PluginInterface, PluginInterface_iid)

#endif // PLUGININTERFACE_H
