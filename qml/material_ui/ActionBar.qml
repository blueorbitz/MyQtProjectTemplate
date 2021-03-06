import QtQuick 2.0
import UIConstants 1.0

Item {
    id: control
    width: parent.width
    height: 56 * dp

    property alias color: background.color
    property alias text: title.text
    property bool raised: false

    MouseArea {
        id: eventEater
        anchors.fill: parent
    }

    PaperShadow {
        source: background
        depth: control.raised ? 2 : 1
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: UIConstants.themeColor
    }

    Text {
        id: title
        x: 72 * dp
        anchors.verticalCenter: parent.verticalCenter
        font.family: UIConstants.textFontFamily
        font.bold: Font.DemiBold
        font.pointSize: UIConstants.titleFontSize
        color: UIConstants.themeTextColor
    }
}
