/*
 *  Copyright 2020 Kpple <info.kpple@gmail.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  2.010-1301, USA.
 */

import QtQuick
import QtQuick.Layouts

import org.kde.plasma.plasmoid
import org.kde.plasma.components as PlasmaComponents
import org.kde.kirigami as Kirigami

Item {
    id: item

    signal clicked

    property Item highlight
    property alias text: label.text

    Layout.fillWidth: true
    height: row.height

    Rectangle {
        anchors.fill: parent
        color: Kirigami.Theme.highlightColor
        visible: area.containsMouse
        radius: 3
    }

    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: true
        onClicked: item.clicked()
    }

    RowLayout {
        id: row
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 0

        // set space before the text item with a empty icon
        Item {
            id: emptySpace
            Layout.minimumWidth: 1 * Kirigami.Units.gridUnit
            Layout.maximumWidth: 1 * Kirigami.Units.gridUnit
        }

        PlasmaComponents.Label {
            id: label
            Layout.fillWidth: true
            Layout.preferredHeight: 24
            color: area.containsMouse ? Kirigami.Theme.highlightedTextColor : Kirigami.Theme.textColor
            verticalAlignment: Text.AlignVCenter
        }
    }
}
 
