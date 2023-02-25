#ifndef TEXTMODULE_H
#define TEXTMODULE_H

#include "TextModule_global.h"
#include "plugininterface.h"

class TEXTMODULE_EXPORT TextModule:public PluginInterface
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID PluginInterface_iid)
    Q_INTERFACES(PluginInterface)

public:
    TextModule();
    virtual PluginNode* createNode() const override;
    virtual QString getPluginName() const override;
    virtual QString getPluginInfo() const override;
//    virtual QWidget *getPluginWidget() const override;
};

#endif // TEXTMODULE_H
