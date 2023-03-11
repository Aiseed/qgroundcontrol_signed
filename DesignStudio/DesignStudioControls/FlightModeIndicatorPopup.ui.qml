/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick          2.11
import QtQuick.Layouts  1.11

import QGroundControl                       1.0
import QGroundControl.Controls              1.0
import QGroundControl.MultiVehicleManager   1.0
import QGroundControl.ScreenTools           1.0
import QGroundControl.Palette               1.0

Rectangle {
    width: flickable.width + (ScreenTools.defaultFontPixelWidth * 2)
    height: flickable.height + (ScreenTools.defaultFontPixelWidth * 2)
    radius: ScreenTools.defaultFontPixelHeight * 0.5
    color: qgcPal.window
    border.color: qgcPal.text

    QGCFlickable {
        id: flickable
        anchors.margins: ScreenTools.defaultFontPixelWidth
        anchors.top: parent.top
        anchors.left: parent.left
        width: mainLayout.width
        height: _fullWindowHeight <= mainLayout.height ? _fullWindowHeight : mainLayout.height
        flickableDirection: Flickable.VerticalFlick
        contentHeight: mainLayout.height
        contentWidth: mainLayout.width

        property real _fullWindowHeight: mainWindow.contentItem.height - (indicatorPopup.padding * 2) - (ScreenTools.defaultFontPixelWidth * 2)

        ColumnLayout {
            id: mainLayout
            spacing: ScreenTools.defaultFontPixelWidth / 2

            Repeater {
                model: activeVehicle ? activeVehicle.flightModes : []

                QGCButton {
                    text: modelData
                    Layout.fillWidth: true
                    onClicked: {
                        activeVehicle.flightMode = text
                        mainWindow.hideIndicatorPopup()
                    }
                }
            }
        }
    }
}
