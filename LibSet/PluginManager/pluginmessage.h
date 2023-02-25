#ifndef PLUGINMESSAGE_H
#define PLUGINMESSAGE_H

#include <QObject>
#include <QDebug>

template<class T>   // 这个T一般是指针
class PluginMessage
{
    T m_message;
public:
    PluginMessage(T message):m_message(message){};
    virtual T getMessage(){return m_message;};
};

//template<class T>
//class PMWidget : public PluginMessage
//{
//    QWidget* m_message;
//public:
//    PMWidget(QWidget* message):PluginMessage(T){
//        m_message = message;
//    }
//    virtual QWidget* getMessage() override{
//        return m_message;
//    }
//};

//class PMString : public PluginMessage
//{
//    QString* m_message;
//public:
//    PMString(QString* message):PluginMessage(){
//        m_message = message;
//    }
//};

#endif // PLUGINMESSAGE_H

/** 插件通信元数据 */
//struct PluginMetaData
//{
//    QString from;   // 消息来源
//    QString dest;   // 消息目的地
//    QString msg;    // 消息
//    QObject *object = nullptr;
//    QJsonObject info = QJsonObject();
//};
