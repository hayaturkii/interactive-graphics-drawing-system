QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# Direct compiler to search the include folder automatically for header files
INCLUDEPATH += include

# Source implementation files (.cpp)
SOURCES += \
    main.cpp \
    src/drawingarea.cpp \
    src/mainwindow.cpp \
    src/movedialog.cpp \
    Shapes/ellipse.cpp \
    Shapes/line.cpp \
    Shapes/polyline.cpp \
    Shapes/rectangle.cpp

# Header definition files (.h)
HEADERS += \
    include/drawingarea.h \
    include/mainwindow.h \
    include/movedialog.h \
    Shapes/shape.h \
    Shapes/ellipse.h \
    Shapes/line.h \
    Shapes/polyline.h \
    Shapes/rectangle.h

# User Interface forms (.ui)
FORMS += \
    ui/mainwindow.ui \
    ui/movedialog.ui

# Resources (Toolbar icons)
RESOURCES += \
    Icons.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
