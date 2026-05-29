import QtQuick

import "src/commonUI"
import "src/leftPage"
import "src/rightPage"
import "src/playMusic"

MYYWindow {
    id: window
    width: 1317
    height: 933
    visible: true
    title: qsTr("Hello World")

    // 左侧选项框
    LeftPage {
        id:leftRect
        width: 255
        color: "#1a1a21"
        anchors.top: parent.top
        anchors.bottom: bottomRect.top
    }

    // 中部内容框
    RightPage {
        id:rightRect
        color: "#13131a"
        anchors.top: parent.top
        anchors.bottom: bottomRect.top
        anchors.left: leftRect.right
        anchors.right: parent.right
    }

    // 底部状态框
    PlayMusic {
        id:bottomRect
        height: 100
        color: "#2d2d37"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
    }
}
