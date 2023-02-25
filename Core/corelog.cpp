#include "corelog.h"

CoreLog* CoreLog::m_instance = nullptr;

CoreLog* CoreLog::getInstance(QWidget *parent){
    if(m_instance == nullptr){
        m_instance = new CoreLog(parent);
    }
    return m_instance;
}

CoreLog::CoreLog(QWidget *parent)
    :QTextBrowser(parent)
{
    /* 安装Qt消息处理程序，返回一个消息处理程序的指针 */
    /* 消息处理机制。接管qDebug单不接管std::cout */
    qInstallMessageHandler(CoreLog::myMessageOutput);
}

CoreLog::~CoreLog()
{
    /* 恢复消息处理程序 */
    qInstallMessageHandler(0);
}

void CoreLog::myMessageOutput(QtMsgType type, const QMessageLogContext &context, const QString &msg)
{
    QString localMsg = msg;
    QString sType = "Debug";
//    logList.push_back(sType.append(": ").append(localMsg.constData()));
    m_instance->append(sType.append(": ").append(localMsg.constData()));
}
