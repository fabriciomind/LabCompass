TARGET = test_LabCompass
TEMPLATE = app
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= debug_and_release debug_and_release_target

QT += qml quick quickcontrols2 widgets svg quickwidgets testlib

INCLUDEPATH += \
    src \
    ../common/src \
    ../vendor/QtSuperMacros

DEPEND_LIBS += common
DEPEND_VENDOR_LIBS += QtSuperMacros
include(../config/dependencies.pri)

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += SRCDIR=\\\"$$PWD/\\\"

testdata.path = $${OUT_PWD}/data
testdata.files = data/*
INSTALLS += testdata

SOURCES += \
    src/main.cpp \
    src/testdataavailabletest.cpp \
    src/labyrinthdata/labyrinthdataloadtest.cpp

HEADERS += \
    src/testdataavailabletest.h \
    src/labyrinthdata/labyrinthdataloadtest.h
