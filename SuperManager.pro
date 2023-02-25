TEMPLATE = subdirs

SUBDIRS += \
    3rdparty \
    Core \
    LibSet \
    PluginSet

Core.depends = 3rdparty      # 子项目依赖（好像不写也行会自动判断）
