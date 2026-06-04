QT += qml quick

SOURCES += \
        main.cpp

resources.files =

resources.prefix = /$${TARGET}

DISTFILES += \
    src/commonUI/MYYWindow.qml \
    src/playMusic/PlayMusic.qml \
    src/rightPage/RightPage.qml \
    src/leftPage/LeftPage.qml \
    main.qml \
    src/title/MinAndMax.qml \
    src/title/UserCommonSetting.qml

RESOURCES += resources \
    qml.qrc \
    res.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
