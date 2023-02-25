#include "webview.h"
#include <QWidget>
#include <QVBoxLayout>
#include <QPushButton>
#include <QDir>
#include <QFile>
#include <Windows.h>
#include <QRegularExpression> // RegExp Qt6只有兼容版，就换了这个
#include <QWebEngineView>
#include <QQuickWindow>

// 兼容性代码
//#if QT_VERSION > QT_VERSION_CHECK(5, 6, 0)
//#include <QWebEngineView>
//class WebView : public QWebEngineView
//#elif QT_VERSION > QT_VERSION_CHECK(5, 2, 0)
//#include <QtWebKitWidgets>
//class WebView : public QWebView
//#else
//#include <QtWebKit/QWebView>
//class WebView : public QWebView
//#endif

/** Get GenshinWishUrl */
QString getUserPath()
{
/* 测试用url */
//    QString str = "https://webstatic.mihoyo.com/hk4e/event/e20190909gacha/index.html?authkey_ver=1&sign_type=2&auth_appid=webview_gacha&init_type=301&gacha_id=50eef7be3b7945930041f9f20310e0bbcb8a7a&timestamp=1648597804&lang=zh-cn&device_type=pc&ext=%7b%22loc%22%3a%7b%22x%22%3a-477.8473205566406%2c%22y%22%3a180.38418579101563%2c%22z%22%3a1901.6221923828125%7d%2c%22platform%22%3a%22WinST%22%7d&game_version=CNRELWin2.6.0_R6461336_S6533985_D6551263&plat_type=pc&region=cn_gf01&authkey=Tdrr41DssSpi2m1wvmexVOPvoa0lFP57kcxHFvDqWKpHoveHtM3CDzrNiAaQ4KPW84q4QE52KTkhz%2fxkitO4Me4QrfkPZ%2bC71%2bJ0d8pMXKJw6gAzoBMCZDaRr5gpZcnx09VB3FO%2bVgguu7sgKR6qBtuGiDbMKHM95evtmvxn9vr58v1qbtt%2fBEsdEY5Pu8eQlLnB4tdP%2fqu7%2fTiXIzHh4hIJEOMPUVlEzOwo4SOpAtumn%2bnDctrhOUTEFew5LTxbQMd98PAmrS8z2iBKmFrVE0WzIWjfwTTQ262Re6S3JQpEDexk90ns7js9lVe8%2fJZzPVYdUKl8YyoO1vSav0MmrDJEEpr4iLSBMc%2bQPoBz%2bVqCWtu9lSfq4GY5P1%2f9advIC9RzEbydBttfRHzmXfo7G68U9%2b4e6nw2TVO90cPQGYUWWOTkc5uR7ETLBBRbo4pjsoLfPywKbCzJjY7JIDenIiTT96QOT4%2bwcas9peOAkL2B6FoEgbM3TwmOMth8bGzMs4FX83MIo9MFzKhJcQAqC2AgmpFWREMlKxVh9McwbAOLYvCiJmcI3w8zgLhn%2bkT6FsSY5rwNL1gXg%2fwvELmwbSsmL5gaYNwziGY2fMkJeWMa%2fjwwypjie%2fWQU7acMGwbQxqCrqD2j78Du9vL5c%2fullTaztcpsV5oznBVnIdRei1acDADzDsmsiaJzW69ZZiOfHHMKYXYVbpR4mcyd5avCLw5h2eSWsLpGBOm8m3Q5cQyUCzuYMHbU%2bmmXxEk6IA1y2Isyf5SVixTbzfDoZ4ai1weV2hkq0dMkF%2bXQ1wrZl7y2vkRsDO4wPc%2fDpnHKBqyrhMLHbIyF6d8vtisKn0mjKrodgV3YLARWn2FOGSH%2b7%2bgRTVhQySc3abudROAG6rONu1sZ%2fYsdaTNm2MCmKfCsxsjHc6%2fasUKt14EWtUkkkuF3nEPVWOqKjPMyCk5uCMPOiesupkO70DnCaivAO7uS1TvkVuufE5V5psdVt37scNk6RgmHs1g4HpPduUZOthQl%2fh6gGz8AMXLWb%2f5wdwMYyLEpTNLCV4UhR4brYIkhTNTqK%2fYeqr7cHlJLQ6zwvIpjZNBQTxoJbudIHNzSoZOD5ZW0Pgip1EtL9MBXnyS9mGqi4RR4vWINN%2bYMCHanjCRQvt89%2bN8BIXk8YR%2bynpBeWUi08dtwDsjp6w2i8KBTLlzpvwQ4GayKao5P3l%2b3wvDt5%2bas%2bWFFoyRPDdpvzhr433kaxvlBUN9E1PLPYs%2f1WEwqIiDqnS017K8Zxw05MpgDofmPZhb8QLKyHJOHsDjdFN2nmZwMW2qg4NUEecZp4I33tOg9ldUram2AmQDa7XdtyzAumF%2fpJ3p%2f7aFOBa1pg%3d%3d&game_biz=hk4e_cn#/log";
//    return str;

/* getUserPath */
    QString sPath;
    const char* homeProfile = "USERPROFILE";
    char homePath[1024] = {0};
    unsigned int pathSize = GetEnvironmentVariableA(homeProfile, homePath, 1024);// WinAPI

    if (pathSize == 0 || pathSize > 1024)   // 获取失败 或者 路径太长
    {
        // int ret = GetLastError();
        return "";
    }
    else
    {
        sPath = QString(homePath);
    }

/* getGenshinLogFile */
    QDir dPath = QDir(sPath);
//    if(!dPath.cd(QString::fromLocal8Bit("./AppData/LocalLow/miHoYo/原神")))
    if(!dPath.cd("./AppData/LocalLow/miHoYo/原神"))
    {
        qDebug()<<"Failed to cd the path."
            <<dPath.absolutePath();
        return "";
    }
    QFile file(dPath.absoluteFilePath("output_log.txt"));
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        qDebug()<<"Failed to open the genshin log file: "
            <<dPath.absoluteFilePath("output_log.txt");
        return "";
    }

/* getGenshinWishUrl */
    QTextStream in(&file);
    QRegularExpression re(R"(^OnGetWebViewPageFinish:(.+?/log)$)");
    while (!in.atEnd()) {
        QString line = in.readLine();
        QRegularExpressionMatch match = re.match(line);
        if(match.hasMatch())
        {
            qDebug()<<"WishUrl: "<<match.captured(1);
            return match.captured(1);
        }
    }
    qDebug()<<"Failed to find the wish url in log file.";
    return "";
}

PluginNode* WebView::createNode() const
{
    PluginNode *pluginNode = new PluginNode();
    QWidget* wid = new QWidget();
    pluginNode->m_exportMessages.append(wid);
    wid->resize(800,600);
    wid->setLayout(new QVBoxLayout());

/* 小控件 */
    QPushButton* btn = new QPushButton("Wish Record", wid);
    wid->layout()->addWidget(btn);

/* 网页引擎部分 */
    /** 报错处理。Error:
     *  QQuickWidget is only supported on OpenGL.
     *  Use QQuickWindow::setGraphicsApi() to override the default
     */
    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);
    QWebEngineView *pView = new QWebEngineView(wid);
    wid->layout()->addWidget(pView);
    pView->load(QUrl("https://www.baidu.com/"));
    pView->setWindowFlag(Qt::FramelessWindowHint); //去除边框
    pView->setAttribute(Qt::WA_TranslucentBackground, true); //透明
    pView->resize(800,600);
    pView->show();
    connect(btn, &QPushButton::clicked, this, [pView](){
        QString wishUrl = getUserPath();
        if(wishUrl==""){
            qDebug()<<"Failed to get the genshin wish url.";
        }
        else
        {
//            view->setUrl(QUrl("https://image.baidu.com/"));   // bug
            pView->load(QUrl(wishUrl));
            pView->show();
        }
    });
    return pluginNode;
}

WebView::WebView(){}

QString WebView::getPluginName() const {return "WebView";}

QString WebView::getPluginInfo() const {return "WebView_Info";}
