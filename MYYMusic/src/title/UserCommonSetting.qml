import QtQuick
import QtQuick.Controls
import QtQuick.Effects

Row {
    // 用户登录相关
    Item {
        width:140; height: 30
        anchors.verticalCenter: parent.verticalCenter

        Row {
            spacing: 8
            anchors.verticalCenter: parent.verticalCenter

            // 圆形图标
            Rectangle {
                id: userIconRect
                width: 25; height: width
                radius: width/2
                color: "#2d2d37"

                Image {
                    width: 32; height: 32
                    sourceSize.width: 128; sourceSize.height: 128
                    source: "qrc:/img/Resources/title/user.png"
                    anchors.centerIn: parent
                }
            }
            // 用户名文本
            Text {
                id: loadstatetText
                text: "未登录"
                color: "#75777f"
                font.pixelSize: 14
                font.family: "微软雅黑 Light"
                anchors.verticalCenter: userIconRect.verticalCenter

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        loadstatetText.color = "white"
                    }
                    onExited: {
                        loadstatetText.color = "#75777f"
                    }
                }
            }
            // 会员标识
            Item {
                width: loadstatetText.implicitWidth * 1.2
                height: userIconRect.height
                anchors.verticalCenter: parent.verticalCenter

                Rectangle {
                    id: vipRect
                    width: parent.width; height: 12
                    radius: height / 2
                    color: "#dadada"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter

                    Label {
                        text: "VIP开通"
                        color: "#f8f9f9"
                        font.pixelSize: parent.height / 2 + 2
                        font.family: "微软雅黑 Light"
                        anchors.left: parent.left
                        anchors.leftMargin: parent.radius * 2 + 5
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                Rectangle {
                    id: bgBordRect
                    width: vipRect.height + 4; height: width
                    radius: width / 2
                    color: "#dadada"
                    border.width: 1
                    border.color: "#13131a"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }
    // 用户功能-箭头
    Image {
        id: loginImg
        width: 32; height: 32
        sourceSize.width: 128; sourceSize.height: 128
        rotation: -90
        source: "qrc:/img/Resources/title/arrow.png"
        anchors.verticalCenter: parent.verticalCenter

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
                parent.layer.enabled = true
            }
            onExited: {
                parent.layer.enabled = false
            }
            onClicked: {
            }
        }
    }
    // 用户功能-信息
    Image {
        id: messageImg
        width: 32; height: 32
        sourceSize.width: 128; sourceSize.height: 128
        source: "qrc:/img/Resources/title/message.png"
        anchors.verticalCenter: parent.verticalCenter

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
                parent.layer.enabled = true
            }
            onExited: {
                parent.layer.enabled = false
            }
            onClicked: {
            }
        }
    }
    // 用户功能-设置
    Image {
        id: settingImg
        width: 32; height: 32
        sourceSize.width: 128; sourceSize.height: 128
        source: "qrc:/img/Resources/title/setting.png"
        anchors.verticalCenter: parent.verticalCenter

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
                parent.layer.enabled = true
            }
            onExited: {
                parent.layer.enabled = false
            }
            onClicked: {
            }
        }
    }
    // 用户功能-皮肤
    Image {
        id: skinImg
        width: 32; height: 32
        sourceSize.width: 128; sourceSize.height: 128
        source: "qrc:/img/Resources/title/skin.png"
        anchors.verticalCenter: parent.verticalCenter

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
                parent.layer.enabled = true
            }
            onExited: {
                parent.layer.enabled = false
            }
            onClicked: {
            }
        }
    }
    // 分割线
    Rectangle {
        width: 1; height: 24
        color: "#2d2d37"
        anchors.verticalCenter: parent.verticalCenter
    }
}
