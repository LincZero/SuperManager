#ifndef WEBVIEW_H
#define WEBVIEW_H

#include "WebView_global.h"
#include "plugininterface.h"
#include <QWebEngineView>

class WEBVIEW_EXPORT WebView:public PluginInterface
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID PluginInterface_iid)
    Q_INTERFACES(PluginInterface)
public:
//    QWebEngineView *view;
    WebView();
    virtual PluginNode* createNode() const override;
    virtual QString getPluginName() const override;
    virtual QString getPluginInfo() const override;
};

#endif // WEBVIEW_H
