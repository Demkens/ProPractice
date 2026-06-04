import QtQuick
import QtQuick.Controls
import QtQuick.Effects

import "../title"

Rectangle {

    Row {
        id: searchRow
        spacing: 10
        anchors.left: parent.left
        anchors.leftMargin: 36
        anchors.verticalCenter: othersRow.verticalCenter

        Rectangle {
            id: backForwardRect
            width: 24; height: 35
            radius: 4
            color: "transparent"
            border.width: 1
            border.color: "#2b2b31"

            Image {
                width: 32; height: 32
                sourceSize.width: 128; sourceSize.height: 128
                anchors.centerIn: parent
                source: "qrc:/img/Resources/title/arrow.png"
            }
        }

        TextField {
            id: searchTextField
            width: 240; height: backForwardRect.height
            placeholderText: "晴天"
            leftPadding: 40
            font.pixelSize: 20
            font.family: "微软雅黑 Light"
            background: Rectangle {
                radius: 8
                anchors.fill: parent
                gradient: Gradient {    // 颜色渐变
                    orientation: Gradient.Horizontal
                    GradientStop{color: "#21383d"; position: 0}
                    GradientStop{color: "#382635"; position: 1}
                }
                Rectangle {     // 外部矩形成为内部矩形的边框
                    id: innerRect
                    property int gradientStopPos: 1

                    radius: 8
                    anchors.fill: parent
                    anchors.margins: 1
                    gradient: Gradient {    // 颜色渐变
                        orientation: Gradient.Horizontal
                        GradientStop{color: "#1a1d29"; position: 0}
                        GradientStop{color: "#241c26"; position: innerRect.gradientStopPos}
                    }
                }
                Image {
                    width: 39; height: 39
                    sourceSize.width: 128; sourceSize.height: 128
                    anchors.verticalCenter: searchTextField
                    anchors.left: parent.left
                    source: "qrc:/img/Resources/title/search.png"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        innerRect.gradientStopPos = 0
                    }
                }
            }
        }

        Rectangle {
            id: soundHoundRect
            width: height; height: backForwardRect.height
            radius: 8
            color: "#241c26"
            border.width: 1
            border.color: "#36262f"

            Image {
                anchors.centerIn: parent
                width: 48; height: 48
                sourceSize.width: 128; sourceSize.height: 128
                source: "qrc:/img/Resources/title/record.png"
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    soundHoundRect.color = "white"
                }
                onExited: {
                    soundHoundRect.color = "#241c26"
                }
            }
        }
    }

    UserCommonSetting {
        id: othersRow
        spacing: 5
        anchors.verticalCenter: minmax.verticalCenter
        anchors.right: minmax.left
        anchors.rightMargin: 10
    }

    MinAndMax {
        id: minmax
        width: 150; height: 60
        anchors.top: parent.top
        //anchors.left: parent.left
        anchors.right: parent.right
    }
}
