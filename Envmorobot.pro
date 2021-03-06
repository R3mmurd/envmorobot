# Adjust this path to your Aleph-w instalation
ALEPH = ../../../Aleph-w

QMAKE_CXX = clang++

QMAKE_CXXFLAGS_DEBUG += -O0 -g -DDEBUG

QMAKE_CXXFLAGS_RELEASE += -Ofast -DNDEBUG

CONFIG += c++14 warn_off

QT += widgets core

INCLUDEPATH += $${ALEPH}

LIBS += \
    -L$${ALEPH} \
    -lAleph \
    -lasprintf \
    -lgmp \
    -lmpfr \
    -lgsl \
    -lgslcblas

HEADERS += \
    obstacle.H \
    utils.H \
    buffer.H \
    enviroment.H \
    geometricmap.H \
    mappanel.H \
    mapframe.H \
    discretizewindow.H \
    infowindow.H \
    onefieldwindow.H

SOURCES += \
    main.C \
    obstacle.C \
    buffer.C \ 
    enviroment.C \
    geometricmap.C \
    discretizewindow.C \
    infowindow.C \
    mapframe.C \
    mappanel.C \
    onefieldwindow.C

OTHER_FILES += \
    debug.txt \
    Maps/mapa1.map \
    Maps/mapa2.map \
    Maps/mapa3.map \
    Maps/mapa4.map \
    README.md

RESOURCES += \
    images.qrc

FORMS += \
    one_field_form.ui \
    discretize_form.ui \
    info_dialog.ui
