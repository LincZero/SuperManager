#ifndef CORELOG_H
#define CORELOG_H

#include <QString>
#include <QTextBrowser>
#include <QList>

class CoreLog : public QTextBrowser // 应当单例模式
{
    Q_OBJECT
public:
    static CoreLog* getInstance(QWidget *parent = nullptr); // 多线程不安全
    static CoreLog* m_instance;
    // 该方法只能静态且不能是信号
    static void myMessageOutput(QtMsgType type, const QMessageLogContext &context, const QString &msg);
private:
    CoreLog(QWidget *parent = nullptr);
    ~CoreLog();
};

#endif // CORELOG_H
