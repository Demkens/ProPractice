import QtQuick
import QtQuick.Effects

Rectangle {
    // 顶边栏
    Item {
        height: 60
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Row {
            id:miniRow
            spacing: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 0.02 * window.width
            // 窗口按钮
            Image {
                id: miniImg
                width: 32; height: 32
                sourceSize.width: 128; sourceSize.height: 128
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
            Image {
                id: minImg
                width: 32; height: 32
                sourceSize.width: 128; sourceSize.height: 128
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/img/Resources/title/min.png"
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
                        minImg.layer.enabled = true
                    }
                    onExited: {
                        minImg.layer.enabled = false
                    }
                    onClicked: {
                        window.showMinimized()
                    }
                }
            }
            // 最大化按钮
            Image {
                id: maxImg
                width: 32; height: 32
                sourceSize.width: 128; sourceSize.height: 128
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/img/Resources/title/max.png"
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
                        maxImg.layer.enabled = true
                    }
                    onExited: {
                        maxImg.layer.enabled = false
                    }
                    onClicked: {
                        window.showMaximized()
                    }
                }
            }
            // 关闭按钮
            Image {
                id: closeImg
                width: 32; height: 32
                sourceSize.width: 128; sourceSize.height: 128
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
