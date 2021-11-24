import QtQuick
import QtQuick.Controls
import qmlFrontend 1.0

Rectangle {
    width: Constants.width
    height: Constants.height
    color: "#00ffffff"

    ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: 20
            delegate: ItemDelegate {
                text: "Item " + (index + 1)
                width: parent.width
                font.family: Constants.largeFont.family
                font.pixelSize: Constants.largeFont.pixelSize
            }
        }
    }
}
