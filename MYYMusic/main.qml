import QtQuick

Window {
    width: 1317
    height: 933
    visible: true
    title: qsTr("Hello World")

    // 设置窗口无边框属性
    flags: Qt.FramelessWindowHint | Qt.Window | Qt.WindowSystemMenuHint |
           Qt.WindowMaximizeButtonHint | Qt.WindowMinimizeButtonHint

    // 左侧选项框
    Rectangle{
        id:leftRect
        width: 255
        anchors.top: parent.top
        anchors.bottom: bottomRect.top

        color: "#1a1a21"
    }

    // 中部内容框
    Rectangle{
        id:rightRect
        anchors.top: parent.top
        anchors.bottom: bottomRect.top
        anchors.left: leftRect.right
        anchors.right: parent.right

        color: "#13131a"
    }

    // 底部状态框
    Rectangle{
        id:bottomRect
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        color: "#2d2d37"
    }
}
