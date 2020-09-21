import QtQuick 2.6
import QtQuick.Controls 2.2 as QQ2
import QtMultimedia 5.8
import QtQuick.Layouts 1.1

Item {
    id: home
    anchors.fill: parent

    ColumnLayout {
        id: form
        width: parent.width * 0.5
        height: parent.height * 0.3
        anchors.centerIn: parent

        property var orientations: [ 0, 90, 180, 270 ]

        QQ2.ComboBox {
            id: cameraCombo1
            Layout.fillWidth: true
            model: QtMultimedia.availableCameras
            textRole: "displayName"
        }

        QQ2.ComboBox {
            id: cameraCombo2
            Layout.fillWidth: true
            model: QtMultimedia.availableCameras
            textRole: "displayName"
        }

        QQ2.Button {
            Layout.fillWidth: true
            text: "Start"
            onClicked: {
                main.cameraDeviceId1 = QtMultimedia.availableCameras[ cameraCombo1.currentIndex ].deviceId
                main.cameraDeviceId2 = QtMultimedia.availableCameras[ cameraCombo2.currentIndex ].deviceId
                main.setState( "capture" )
            }
        }
    }
}
