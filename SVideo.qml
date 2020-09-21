import QtQuick 2.0
import QtMultimedia 5.8
import QtGraphicalEffects 1.12

Item {
    id: svideo
    property string source: ""
    property real hue: 0
    anchors.fill: parent
    visible: false

    Camera {
        id: camera
        deviceId: svideo.source
    }

    VideoOutput {
        id: videoOut
        source: camera
        anchors.fill: parent
        fillMode: VideoOutput.PreserveAspectCrop
    }

    Colorize {
        id: colorize
        anchors.fill:videoOut
        source: videoOut
        hue: svideo.hue
    }

}
