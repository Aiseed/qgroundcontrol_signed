pragma Singleton

import QtQuick 2.0

import QGroundControl.Mock.Vehicle 1.0

QtObject {
    property var activeVehicle: _activeVehicle

    Vehicle { id: _activeVehicle }
}
