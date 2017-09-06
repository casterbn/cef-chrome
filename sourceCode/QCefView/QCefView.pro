# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = QCefView
QT += core widgets gui
CONFIG  -= flat

DEFINES += QCEFVIEW_LIB 
DEFINES += DEBUG_FUNCTION

INCLUDEPATH +=  ../../dep/cef ../../QCefViewSDK ./src ./src/handler ./src/main 
   
PRECOMPILED_HEADER = stdafx.h

QMAKE_LFLAGS_RELEASE +=/debug /opt:ref

UI_DIR  = temp/ui
MOC_DIR = temp/moc
RCC_DIR = temp/rcc

CONFIG(release, debug|release) {	
	OBJECTS_DIR = temp/release
	DESTDIR = ./bin/release_x86
	LIBS += ../../dep/cef/lib/Release/libcef.lib
	LIBS += ../../dep/cef/lib/Release/libcef_dll_wrapper.lib 
	QMAKE_CFLAGS_RELEASE += /MT  
	QMAKE_CXXFLAGS_RELEASE += /MT 
		QMAKE_POST_LINK += copy /y .\\bin\\release_x86\\QCefView.dll  ..\\..\\QCefViewSDK\\bin\\release_x86 \
	&& copy /y .\\bin\\release_x86\\QCefView.pdb  ..\\..\\QCefViewSDK\\bin\\release_x86 \
	&& copy /y .\\bin\\release_x86\\QCefView.lib ..\\..\\QCefViewSDK\\lib\\release_x86 
}
CONFIG(debug, debug|release) {
	OBJECTS_DIR = temp/debug
	DESTDIR = ./bin/debug_x86
	LIBS += ../../dep/cef/lib/Debug/libcef.lib 
	LIBS += ../../dep/cef/lib/Debug/libcef_dll_wrapper.lib 
	QMAKE_CFLAGS_DEBUG += /MTd
	QMAKE_CXXFLAGS_DEBUG += /MTd
		QMAKE_POST_LINK += copy /y .\\bin\\debug_x86\\QCefView.dll  ..\\..\\QCefViewSDK\\bin\\debug_x86 \
	&& copy /y .\\bin\\debug_x86\\QCefView.pdb  ..\\..\\QCefViewSDK\\bin\\debug_x86 \
	&& copy /y .\\bin\\debug_x86\\QCefView.lib ..\\..\\QCefViewSDK\\lib\\debug_x86 
}
LIBS += DbgHelp.Lib Advapi32.lib User32.lib Shell32.lib

RC_FILE = QCefView.rc

HEADERS += ../public/Common.h \
	../../QCefViewSDK/inc/QCefCommon.h \
	../../QCefViewSDK/inc/QCefEvent.h \
	../../QCefViewSDK/inc/QCefInvoker.h \
	../../QCefViewSDK/inc/QCefQuery.h \
	../../QCefViewSDK/inc/QCefSetting.h \
	../../QCefViewSDK/inc/QCefView.h \
    src/main/CCefSetting.h \
    src/main/CCefWindow.h \
	src/main/CCefCookie.h \
    src/handler/QCefViewBrowserApp.h \
    src/handler/QCefViewBrowserHandler.h \
    src/handler/QCefQueryHandler.h \
	src/handler/QCefCookieVisitor.h \
	src/handler/QCefDownloadHandler.h \
	src/handler/QCefContextMenuHandler.h \
	src/handler/QCefDisplayHandler.h \
	src/handler/QCefDragHandler.h \
	src/handler/QCefFocusHandler.h \
	src/handler/QCefKeyboardHandler.h \
	src/handler/QCefLifeSpanHandler.h \
	src/handler/QCefLoadHandler.h \
	src/handler/QCefQueryHandler.h \
	src/handler/QCefRequestHandler.h \
	src/handler/QCefDialogHandler.h \
	src/handler/QCefJSDialogHandler.h \
    src/handler/BrowserDelegates/QCefViewDefaultBrowserDelegate.h \
    src/handler/SchemeHandlers/QCefViewDefaultSchemeHandler.h \
	
SOURCES += stdafx.cpp \
	src/QCefEvent.cpp \
    src/QCefQuery.cpp \
    src/QCefSetting.cpp \
    src/QCefView.cpp \	
	src/QCefInvoker.cpp \
    src/main/CCefSetting.cpp \
    src/main/CCefWindow.cpp \
	src/main/CCefCookie.cpp \
    src/handler/QCefViewBrowserApp.cpp \
    src/handler/QCefViewBrowserAppHelper.cpp \
    src/handler/QCefViewBrowserHandler.cpp \
    src/handler/QCefQueryHandler.cpp \
	src/handler/QCefCookieVisitor.cpp \
	src/handler/QCefDownloadHandler.cpp \
	src/handler/QCefContextMenuHandler.cpp \
	src/handler/QCefDisplayHandler.cpp \
	src/handler/QCefDragHandler.cpp \
	src/handler/QCefFocusHandler.cpp \
	src/handler/QCefKeyboardHandler.cpp \
	src/handler/QCefLifeSpanHandler.cpp \
	src/handler/QCefLoadHandler.cpp \
	src/handler/QCefQueryHandler.cpp \
	src/handler/QCefRequestHandler.cpp \
	src/handler/QCefDialogHandler.cpp \
	src/handler/QCefJSDialogHandler.cpp \
    src/handler/BrowserDelegates/QCefViewDefaultBrowserDelegate.cpp \
    src/handler/SchemeHandlers/QCefViewDefaultSchemeHandler.cpp \
