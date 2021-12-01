import QtQuick 2.15
import QtQuick.Controls 2.15

Window {

    visible: true
    color: "#4f4f4f"
    width: 600
    height: 500
    title: "What Up Doe!"

    Text {
        id: textId
        color: "#f9f1f1"
        anchors.centerIn: parent
        text: "What up doe, my nigga!"
        font.pixelSize: 24
    }

    Button {
        y: 281
        text: "Change the message above"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textId.bottom
        anchors.horizontalCenterOffset: 0
        onClicked: {
            backend.change_window_text(textId.text)
        }
    }

    Connections {
        target: backend

        function onSetQMLAppEngineTextSignal(new_value) {
            textId.text = new_value
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}D{i:2}D{i:3}
}
##^##*/

