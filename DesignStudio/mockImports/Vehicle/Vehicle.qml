pragma Singleton

import QtQuick 2.0

import QGroundControl.MultiVehicleManager 1.0

QtObject {
    property string appName:                "QGroundControl"
    property var    multiVehicleManager:    _multiVehicleManager

    MultiVehicleManager {
        id: _multiVehicleManager
    }
}
