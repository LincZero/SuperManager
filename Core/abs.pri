# 指定工程要链接的库（库既可使用绝对路径，也可使用Unix的-L和-l标识符，例`-L/usr/local/lib`和`-ldb_cxx`）

# 定义常量路径 = 这里指定Core的Makefile的目录的完整路径，的再上一级
INCLUDEPATH += $$PWD/../3rdparty/QtAdvancedDockingSystem # 包含路径（需要#include "DockManager.h"）

PATH_ROOT = $${OUT_PWD}/..
LIBS += -L$${PATH_ROOT}/Res/Libs/Abs

CONFIG(debug, debug|release){               # debug模式
    win32 {
        LIBS += -lqtadvanceddockingd        # windows的debug库名称：最后有个字母d
    }
    else:mac {
        LIBS += -lqtadvanceddocking_debug   # mac的debug库名称：有个后缀_debug
    }
    else {
        LIBS += -lqtadvanceddocking
    }
}
else{                                       # release模式
    LIBS += -lqtadvanceddocking
}

unix:!macx {
    LIBS += -lxcb
}
