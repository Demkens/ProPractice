import QtQuick
import QtQuick.Effects

Window {
    id: window
    width: 1317
    height: 933
    visible: true
    title: qsTr("Hello World")

    // 设置窗口无边框属性
    flags: Qt.FramelessWindowHint | Qt.Window | Qt.WindowSystemMenuHint |
           Qt.WindowMaximizeButtonHint | Qt.WindowMinimizeButtonHint

    // 窗口拖动功能
    MouseArea {
        anchors.fill: parent

        property point clickPos: "0,0"

        onPressed: function(mouse){
            clickPos = Qt.point(mouse.x, mouse.y)
        }
        onPositionChanged: function(mouse){
            let delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            window.x += delta.x
            window.y += delta.y
        }
    }

    // 左侧选项框
    Rectangle {
        id:leftRect
        width: 255
        color: "#1a1a21"
        anchors.top: parent.top
        anchors.bottom: bottomRect.top
    }

    // 中部内容框
    Rectangle {
        id:rightRect
        color: "#13131a"
        anchors.top: parent.top
        anchors.bottom: bottomRect.top
        anchors.left: leftRect.right
        anchors.right: parent.right

        // 顶边栏
        Item {
            height: 60
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            Row {
                id:miniRow
                spacing: 15
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 0.02 * window.width
                // 窗口按钮
                Image {
                    id: miniImg
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/img/Resources/title/mini.png"
                    layer.enabled: false
                    layer.effect: MultiEffect {
                        colorizationColor: "white"
                        colorization: 1.0
                        brightness: 0.5  // 增加亮度补偿
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            miniImg.layer.enabled = true
                        }
                        onExited: {
                            miniImg.layer.enabled = false
                        }
                        onClicked: {
                        }
                    }
                }
                // 最小化按钮
                Rectangle {
                    width: 15; height: 2
                    color: "#75777f"
                    anchors.verticalCenter: parent.verticalCenter

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            parent.color = "white"
                        }
                        onExited: {
                            parent.color = "#75777f"
                        }
                        onClicked: {
                            window.showMinimized()
                        }
                    }
                }
                // 最大化按钮
                Rectangle {
                    width: 15; height: width
                    radius: 2
                    border.width: 2
                    border.color: "#75777f"
                    color: "transparent"
                    anchors.verticalCenter: parent.verticalCenter

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            parent.border.color = "white"
                        }
                        onExited: {
                            parent.border.color = "#75777f"
                        }
                        onClicked: {
                            window.showMaximized()
                        }
                    }
                }
                // 关闭按钮
                Image {
                    id: closeImg
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/img/Resources/title/close.png"

                    layer.enabled: false
                    layer.effect: MultiEffect {
                        colorizationColor: "white"
                        colorization: 1.0
                        brightness: 0.5
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            closeImg.layer.enabled = true
                        }
                        onExited: {
                            closeImg.layer.enabled = false
                        }
                        onClicked: {
                            Qt.quit()
                        }
                    }
                }
            }
        }
    }

    // 底部状态框
    Rectangle {
        id:bottomRect
        height: 100
        color: "#2d2d37"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
    }
}
