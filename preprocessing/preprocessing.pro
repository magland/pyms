template=app

CONFIG -= qt

SOURCES += dummy_main.cpp

INCLUDEPATH += mda
VPATH += mda
HEADERS += mdaio.h usagetracking.h
SOURCES += mdaio.cpp usagetracking.cpp
