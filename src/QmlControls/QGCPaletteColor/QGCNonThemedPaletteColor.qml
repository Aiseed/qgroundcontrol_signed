/****************************************************************************
 *
 * (c) 2009-2020 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick 2.0

QtObject {
    property int    _globalTheme:       parent.globalTheme
    property bool   _colorGroupEnabled: parent.colorGroupEnabled
    property color  _color:             colors[_colorGroupEnabled ? 1 : 0]
    property var    colors
}
