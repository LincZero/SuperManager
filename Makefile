#############################################################################
# Makefile for building: SuperManager
# Generated by qmake (3.1) (Qt 6.0.3)
# Project:  SuperManager.pro
# Template: subdirs
# Command: D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\bin\qmake.exe -o Makefile SuperManager.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: make_first
QMAKE         = D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
QINSTALL      = D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\bin\qmake.exe -install qinstall
QINSTALL_PROGRAM = D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\bin\qmake.exe -install qinstall -exe
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
IDC           = idc
IDL           = midl
ZIP           = zip -r -9
DEF_FILE      = 
RES_FILE      = 
SED           = $(QMAKE) -install sed
MOVE          = move
SUBTARGETS    =  \
		sub-Core \
		sub-src


sub-Core-qmake_all: sub-src-qmake_all FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	cd Core\ && $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && $(MAKE) -f Makefile qmake_all
sub-Core: $(MAKEFILE) sub-src FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile
sub-Core-make_first: sub-src-make_first FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile 
sub-Core-all: sub-src-all FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile all
sub-Core-clean: sub-src-clean FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile clean
sub-Core-distclean: sub-src-distclean FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile distclean
sub-Core-install_subtargets: sub-src-install_subtargets FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile install
sub-Core-uninstall_subtargets: sub-src-uninstall_subtargets FORCE
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile uninstall
sub-src-qmake_all:  FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	cd src\ && $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && $(MAKE) -f Makefile qmake_all
sub-src: $(MAKEFILE) FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile
sub-src-make_first: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile 
sub-src-all: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile all
sub-src-clean: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile clean
sub-src-distclean: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile distclean
sub-src-install_subtargets: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile install
sub-src-uninstall_subtargets: FORCE
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile uninstall

Makefile: SuperManager.pro D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\win32-msvc\qmake.conf D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\spec_pre.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\windows-desktop.conf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\win32\windows_vulkan_sdk.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\windows-vulkan.conf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\msvc-desktop.conf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\qconfig.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_freetype.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_libpng.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_qobject_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designercomponents_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_entrypoint_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_fb_support_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_packetprotocol_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlcompiler_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldebug_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3d.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3d_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickparticles_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickshapes_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_shadertools.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_shadertools_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_tools_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uiplugin.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_zlib_private.pri \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qt_functions.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qt_config.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\win32-msvc\qmake.conf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\spec_post.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\msvc-version.conf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\toolchain.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\default_pre.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\win32\default_pre.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\resolve_config.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds_post.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\default_post.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qml_debug.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\entrypoint.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\precompile_header.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\warn_on.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qmake_use.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\file_copies.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\win32\windows.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\testcase_targets.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\exceptions.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\yacc.prf \
		D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\lex.prf \
		SuperManager.pro
	$(QMAKE) -o Makefile SuperManager.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\spec_pre.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\windows-desktop.conf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\win32\windows_vulkan_sdk.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\windows-vulkan.conf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\msvc-desktop.conf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\qconfig.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_freetype.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_ext_libpng.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_concurrent_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core5compat_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_core_qobject_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_dbus_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designer_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_designercomponents_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_entrypoint_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_fb_support_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_gui_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_help_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_linguist_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_network_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_opengl_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_packetprotocol_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_printsupport_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qml_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlcompiler_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldebug_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmldevtools_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmltest_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3d.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3d_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quick_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickparticles_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickshapes_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_shadertools.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_shadertools_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_sql_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svg_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_testlib_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_tools_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uiplugin.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_uitools_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_widgets_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_xml_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\modules\qt_lib_zlib_private.pri:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qt_functions.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qt_config.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\win32-msvc\qmake.conf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\spec_post.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\common\msvc-version.conf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\toolchain.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\default_pre.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\win32\default_pre.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\resolve_config.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\exclusive_builds_post.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\default_post.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qml_debug.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\entrypoint.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\precompile_header.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\warn_on.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\qmake_use.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\file_copies.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\win32\windows.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\testcase_targets.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\exceptions.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\yacc.prf:
D:\Soft\Dev\Tools\QT\6.0.3\msvc2019_64\mkspecs\features\lex.prf:
SuperManager.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile SuperManager.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"

qmake_all: sub-Core-qmake_all sub-src-qmake_all FORCE

make_first: sub-Core-make_first sub-src-make_first  FORCE
all: sub-Core-all sub-src-all  FORCE
clean: sub-Core-clean sub-src-clean  FORCE
distclean: sub-Core-distclean sub-src-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash
install_subtargets: sub-Core-install_subtargets sub-src-install_subtargets FORCE
uninstall_subtargets: sub-Core-uninstall_subtargets sub-src-uninstall_subtargets FORCE

sub-Core-debug: sub-src-debug
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile debug
sub-src-debug:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile debug
debug: sub-Core-debug sub-src-debug

sub-Core-release: sub-src-release
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile release
sub-src-release:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile release
release: sub-Core-release sub-src-release

sub-Core-check: sub-src-check
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile check
sub-src-check:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile check
check: sub-Core-check sub-src-check

sub-Core-benchmark: sub-src-benchmark
	@if not exist Core\ mkdir Core\ & if not exist Core\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd Core\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\Core\Core.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile benchmark
sub-src-benchmark:
	@if not exist src\ mkdir src\ & if not exist src\ exit 1
	@set MAKEFLAGS=$(MAKEFLAGS)
	cd src\ && ( if not exist Makefile $(QMAKE) -o Makefile E:\Private\Project\Dev\Type\Multi\QT\Product\SuperManager3\SuperManager\src\src.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug" ) && $(MAKE) -f Makefile benchmark
benchmark: sub-Core-benchmark sub-src-benchmark
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

