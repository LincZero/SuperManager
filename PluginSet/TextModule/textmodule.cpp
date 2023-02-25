#include "textmodule.h"
#include <QPushButton>
#include <QVBoxLayout>

PluginNode* TextModule::createNode() const
{
    PluginNode *pluginNode = new PluginNode();

    QWidget* wid = new QWidget();
    wid->setLayout(new QVBoxLayout());
    QPushButton* btn = new QPushButton("TextModule", wid);
    wid->layout()->addWidget(btn);

    connect(btn, &QPushButton::clicked, this, [](){
        // button clicked
    });

    pluginNode->m_exportMessages.append(wid);
    return pluginNode;
}

TextModule::TextModule()
{
    m_exportMessages.append(NodeType{N_QWidget});
}

QString TextModule::getPluginName() const {return "TextModule";}

QString TextModule::getPluginInfo() const {return "TextModule_Info";}
