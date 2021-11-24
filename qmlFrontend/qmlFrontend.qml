import QtQuick 2.0
import QtQuick.Window 2.3
import QtQuick.Controls

Item {
    width: 420
    height: 740

    Rectangle {
        id: rectangle
        color: "#272727"
        anchors.fill: parent

        BusyIndicator {
            id: busyIndicator
            width: 136
            height: 137
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
