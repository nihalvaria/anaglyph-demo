import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    property real ratio: 0.75
    width: 1920 * ratio
    height: 1080 * ratio
    title: "Anaglyph Mirror"

    visible: true

    Rectangle {
        id: main
        anchors.fill: parent
        color: "white"
        state: "home"
        property string cameraDeviceId1: ""
        property string cameraDeviceId2: ""

        function setState( newState ) {
            main.state = newState
        }

        Loader {
            id: pageLoader
            anchors.fill: parent
        }

        states: [
            State {
                name: "home"
                PropertyChanges { target: pageLoader; source: "Home.qml" }
            },
            State {
                name: "capture"
                PropertyChanges { target: pageLoader; source: "Capture.qml" }
            }
        ]
    }

}
