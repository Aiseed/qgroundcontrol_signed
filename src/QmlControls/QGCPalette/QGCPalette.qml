/****************************************************************************
 *
 * (c) 2009-2020 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick 2.0

import QGroundControl               1.0
import QGroundControl.PaletteColor  1.0

QtObject {
    enum Theme {
        Light,
        Dark
    }

    property int        globalTheme:        QGroundControl.settingsManager.appSettings.indoorPalette.rawValue ? Theme.Light : Theme.Dark
    property bool       colorGroupEnabled:  true

    property color window:              _window._color
    property color windowShadeLight:    _windowShadeLight._color
    property color windowShade:         _windowShade._color
    property color windowShadeDark:     _windowShadeDark._color
    property color text:                _text._color
    property color warningText:         _warningText._color
    property color button:              _button._color
    property color buttonText:          _buttonText._color
    property color buttonHighlight:     _buttonHighlight._color
    property color buttonHighlightText: _buttonHighlightText._color
    property color primaryButton:       _primaryButton._color
    property color primaryButtonText:   _primaryButtonText._color
    property color textField:           _textField._color
    property color textFieldText:       _textFieldText._color
    property color mapButton:           _mapButton._color
    property color mapButtonHighlight:  _mapButtonHighlight._color
    property color mapIndicator:        _mapIndicator._color
    property color mapIndicatorChild:   _mapIndicatorChild._color
    property color colorGreen:          _colorGreen._color
    property color colorOrange:         _colorOrange._color
    property color colorRed:            _colorRed._color
    property color colorGrey:           _colorGrey._color
    property color colorBlue:           _colorBlue._color
    property color alertBackground:     _alertBackground._color
    property color alertBorder:         _alertBorder._color
    property color alertText:           _alertText._color
    property color missionItemEditor:   _missionItemEditor._color
    property color toolStripHoverColor: _toolStripHoverColor._color
    property color statusFailedText:    _statusFailedText._color
    property color statusPassedText:    _statusPassedText._color
    property color statusPendingText:   _statusPendingText._color
    property color toolbarBackground:   _toolbarBackground._color

    //                                                              Light                 Dark
    //                                                              Disabled   Enabled    Disabled   Enabled
    property var _window:               QGCPaletteColor{ colors: ["#ffffff", "#ffffff", "#222222", "#222222"]; }
    property var _windowShadeLight:     QGCPaletteColor{ colors: ["#909090", "#828282", "#707070", "#626262"] }
    property var _windowShade:          QGCPaletteColor{ colors: ["#d9d9d9", "#d9d9d9", "#333333", "#333333"] }
    property var _windowShadeDark:      QGCPaletteColor{ colors: ["#bdbdbd", "#bdbdbd", "#282828", "#282828"] }
    property var _text:                 QGCPaletteColor{ colors: ["#9d9d9d", "#000000", "#707070", "#ffffff"] }
    property var _warningText:          QGCPaletteColor{ colors: ["#cc0808", "#cc0808", "#f85761", "#f85761"] }
    property var _button:               QGCPaletteColor{ colors: ["#ffffff", "#ffffff", "#707070", "#626270"] }
    property var _buttonText:           QGCPaletteColor{ colors: ["#9d9d9d", "#000000", "#A6A6A6", "#ffffff"] }
    property var _buttonHighlight:      QGCPaletteColor{ colors: ["#e4e4e4", "#946120", "#3a3a3a", "#fff291"] }
    property var _buttonHighlightText:  QGCPaletteColor{ colors: ["#2c2c2c", "#ffffff", "#2c2c2c", "#000000"] }
    property var _primaryButton:        QGCPaletteColor{ colors: ["#585858", "#8cb3be", "#585858", "#8cb3be"] }
    property var _primaryButtonText:    QGCPaletteColor{ colors: ["#2c2c2c", "#000000", "#2c2c2c", "#000000"] }
    property var _textField:            QGCPaletteColor{ colors: ["#ffffff", "#ffffff", "#707070", "#ffffff"] }
    property var _textFieldText:        QGCPaletteColor{ colors: ["#808080", "#000000", "#000000", "#000000"] }
    property var _mapButton:            QGCPaletteColor{ colors: ["#585858", "#000000", "#585858", "#000000"] }
    property var _mapButtonHighlight:   QGCPaletteColor{ colors: ["#585858", "#be781c", "#585858", "#be781c"] }
    property var _mapIndicator:         QGCPaletteColor{ colors: ["#585858", "#be781c", "#585858", "#be781c"] }
    property var _mapIndicatorChild:    QGCPaletteColor{ colors: ["#585858", "#766043", "#585858", "#766043"] }
    property var _colorGreen:           QGCPaletteColor{ colors: ["#009431", "#009431", "#00e04b", "#00e04b"] }
    property var _colorOrange:          QGCPaletteColor{ colors: ["#b95604", "#b95604", "#de8500", "#de8500"] }
    property var _colorRed:             QGCPaletteColor{ colors: ["#ed3939", "#ed3939", "#f32836", "#f32836"] }
    property var _colorGrey:            QGCPaletteColor{ colors: ["#808080", "#808080", "#bfbfbf", "#bfbfbf"] }
    property var _colorBlue:            QGCPaletteColor{ colors: ["#1a72ff", "#1a72ff", "#536dff", "#536dff"] }
    property var _alertBackground:      QGCPaletteColor{ colors: ["#eecc44", "#eecc44", "#eecc44", "#eecc44"] }
    property var _alertBorder:          QGCPaletteColor{ colors: ["#808080", "#808080", "#808080", "#808080"] }
    property var _alertText:            QGCPaletteColor{ colors: ["#000000", "#000000", "#000000", "#000000"] }
    property var _missionItemEditor:    QGCPaletteColor{ colors: ["#585858", "#dbfef8", "#585858", "#585d83"] }
    property var _toolStripHoverColor:  QGCPaletteColor{ colors: ["#585858", "#9D9D9D", "#585858", "#585d83"] }
    property var _statusFailedText:     QGCPaletteColor{ colors: ["#9d9d9d", "#000000", "#707070", "#ffffff"] }
    property var _statusPassedText:     QGCPaletteColor{ colors: ["#9d9d9d", "#000000", "#707070", "#ffffff"] }
    property var _statusPendingText:    QGCPaletteColor{ colors: ["#9d9d9d", "#000000", "#707070", "#ffffff"] }
    property var _toolbarBackground:    QGCPaletteColor{ colors: ["#ffffff", "#ffffff", "#222222", "#222222"] }

    // Colors not affecting by theming

    property color brandingPurple:      _brandingPurple._color
    property color brandingBlue:        _brandingBlue._color
    property color toolStripFGColor:    _toolStripFGColor._color

    //                                                                   Disabled    Enabled
    property var _brandingPurple:    QGCNonThemedPaletteColor { colors: ["#4A2C6D", "#4A2C6D"] }
    property var _brandingBlue:      QGCNonThemedPaletteColor { colors: ["#48D6FF", "#6045c5"] }
    property var _toolStripFGColor:  QGCNonThemedPaletteColor { colors: ["#707070", "#ffffff"] }

    // Colors not affecting by theming or enable/disable

    property color mapWidgetBorderLight:           _mapWidgetBorderLight.color
    property color mapWidgetBorderDark:            _mapWidgetBorderDark.color
    property color mapMissionTrajectory:           _mapMissionTrajectory.color
    property color surveyPolygonInterior:          _surveyPolygonInterior.color
    property color surveyPolygonTerrainCollision:  _surveyPolygonTerrainCollision.color

    property var _mapWidgetBorderLight:             QGCSinglePaletteColor { colors: ["#ffffff"] }
    property var _mapWidgetBorderDark:              QGCSinglePaletteColor { colors: ["#000000"] }
    property var _mapMissionTrajectory:             QGCSinglePaletteColor { colors: ["#be781c"] }
    property var _surveyPolygonInterior:            QGCSinglePaletteColor { colors: ["green"] }
    property var _surveyPolygonTerrainCollision:    QGCSinglePaletteColor { colors: ["red"] }
}
