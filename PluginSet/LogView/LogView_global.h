#ifndef LOGVIEW_GLOBAL_H
#define LOGVIEW_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(LOGVIEW_LIBRARY)
#  define LOGVIEW_EXPORT Q_DECL_EXPORT
#else
#  define LOGVIEW_EXPORT Q_DECL_IMPORT
#endif

#endif // LOGVIEW_GLOBAL_H
