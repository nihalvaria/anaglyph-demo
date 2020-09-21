import QtQuick 2.6
import QtGraphicalEffects 1.12

Item {
    id: capture
    anchors.fill: parent

    SVideo {
        id: redVideo
        source : main.cameraDeviceId1
        hue: 0.0
    }

    SVideo {
        id: cyanVideo
        source : main.cameraDeviceId2
        hue: 0.5
    }

    Blend {
        anchors.fill: parent
        source: redVideo
        foregroundSource: cyanVideo
        mode: "average"
    }
}
