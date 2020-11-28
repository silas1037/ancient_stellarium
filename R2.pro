
TEMPLATE = app

CONFIG  += c++11

QT += network gui sensors qml quick positioning concurrent

QT += \
        core \
        gui \
        widgets \
        concurrent \
        script \
        multimedia \
        multimediawidgets \
        positioning \
        serialport \
        printsupport \
        network \
        opengl \
        sensors

CONFIG += qt thread

LIBS += -lz

STEL=$$PWD

INCLUDEPATH += \
src \
src/astrolib \
src/glpng \

MainSRC += \
/src \


for(c,MainSRC){

SOURCES += \
        $$files( $$STEL$$c/*.c   , true ) \
        $$files( $$STEL$$c/*.cpp , true )

HEADERS += \
        $$files( $$STEL$$c/*.h   , true ) \
        $$files( $$STEL$$c/*.hpp , true )

FORMS += \
        $$files( $$STEL$$c/*.ui , true )

RESOURCES += \
        $$files( $$STEL$$c/*.qrc , true )
}

LIBS += -lglut -lGLU


#sudo apt-get install build-essential freeglut3 freeglut3-dev binutils-gold

#android {
#        QT += androidextras

#        ANDROID_PACKAGE_SOURCE_DIR = $$PWD/../android
#        ANDROID_PACKAGE            = org.stellarium.LTS
#        ANDROID_MINIMUM_VERSION    = 21
#        ANDROID_TARGET_VERSION     = 21
#        ANDROID_APP_NAME           = Stellarium LTS

#        DISTFILES += \
#                $$ANDROID_PACKAGE_SOURCE_DIR/AndroidManifest.xml \

#        assets.path    = /assets/
#        assets.files   = $$STEL_ASSETS/*  $$_PRO_FILE_PWD_/../data/*
#        INSTALLS += assets

#        ANDROID_EXTRA_LIBS += $$files( $$DESTDIR/*.so , true )
#}

SOURCES += \
    src/VISLIMIT.CPP


