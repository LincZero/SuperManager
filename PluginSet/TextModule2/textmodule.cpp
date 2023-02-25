#include "textmodule.h"
#include <QPushButton>
#include <QVBoxLayout>

#include <Python.h>

void runPy(){
    /* 【兼容性问题】
     * 这手动指向python.exe的路径，
     * 如果环境变量有，不加也可以，
     * 否则运行时Py_Initialize会导致崩溃
     */
    Py_SetPythonHome(L"D:\\Soft\\Dev\\All\\Python_Anaconda");

    /* Python系统初始化 */
    Py_Initialize();
    if(!Py_IsInitialized())
    {
        qDebug()<<"Failed to initialize py.";
        return;
    }

    /* 加载Python文件 */
//    PyObject* pModule = PyImport_ImportModule("pythonTest");
    PyObject* pModule = PyImport_ImportModule("D:/LocalPrivate/Res/Data/Dev/Platform/Multi/PyQt/Study/NodeEditor/examples/calculator/main.py");
    if(!pModule)
    {
        qDebug()<<"Failed to import py script file.";
        return;
    }

    /* 加载Python文件中的函数 */
    PyObject* pFunhello= PyObject_GetAttrString(pModule,"hello");
    if(!pFunhello){
        qDebug()<<"Failed to get py function.";
        return;
    }

    /* 执行Python函数并获取返回值 By CallFunction */
    PyObject* pArg = Py_BuildValue("(s)","wwwooo");
    PyObject* pyValue = PyObject_CallObject(pFunhello, pArg);

    /* 将返回值转化为C++类型 */
    char *pyReturnStr;
    if(!PyArg_Parse(pyValue, "s", &pyReturnStr)){  //只返回一个数时会显示乱码，所以加了没有含义的IO_door
        qDebug()<<"Failed to transfrom python return.";
    }
    qDebug()<<"QT: "<<pyReturnStr;

    /* 结束，释放Python系统 */
    Py_Finalize();
}


PluginNode* TextModule2::createNode() const
{
    PluginNode *pluginNode = new PluginNode();
    QWidget* wid = new QWidget();
    pluginNode->m_exportMessages.append(wid);
    wid->setLayout(new QVBoxLayout());
    QPushButton* btn = new QPushButton("TextModulePython", wid);
    wid->layout()->addWidget(btn);

    connect(btn, &QPushButton::clicked, this, [](){
        runPy();  // 按下按钮则运行Python文件
    });

    return pluginNode;
}

TextModule2::TextModule2(){}

QString TextModule2::getPluginName() const {return "TextModule2";}

QString TextModule2::getPluginInfo() const {return "TextModule_Info";}
