import QtQuick 2.15

Window {
    id: root
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
            root.x += delta.x
            root.y += delta.y
        }
    }
}
