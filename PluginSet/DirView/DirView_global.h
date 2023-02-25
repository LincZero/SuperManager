#ifndef DIRVIEW_GLOBAL_H
#define DIRVIEW_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(DIRVIEW_LIBRARY)
#  define DIRVIEW_EXPORT Q_DECL_EXPORT
#else
#  define DIRVIEW_EXPORT Q_DECL_IMPORT
#endif

#endif // DIRVIEW_GLOBAL_H
