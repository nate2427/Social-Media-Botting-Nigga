import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "What Up Doe!"

    Text {
        id: textId
        anchors.centerIn: parent
        text: "What up doe, my nigga!"
        font.pixelSize: 24     
    }

    Button{
        text: "Change the message above"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textId.bottom
        onClicked: {
            backend.change_window_text(textId.text)
        }
    }




    Connections{
        target: backend

        function onSetQMLAppEngineTextSignal(new_value) {
            textId.text = new_value
        }
    }
}