# Changelog

All notable changes to this project will be documented in this file.

## [2.0.0] - 2026-05-26

### Added

* Ported Kpple Menu to KDE Plasma 6 (Qt 6, KF6, Wayland)
* Modernized metadata by migrating from legacy `metadata.desktop` to `metadata.json`
* Native session commands in Plasma 6 (via `qdbus6` and `loginctl`)
* Dynamic and theme-aware hover highlighting and faint separators using `Kirigami.Theme`
* Restructured translation compiler `translate/build.sh` to work with JSON metadata

### Fixed

* Removed deprecated `PlasmaCore.DataSource` and `PlasmaComponents 2` imports
* Fixed popup window resizing bug under Plasma 6 Wayland session
* Fixed `PlasmaComponents.Highlight` and `KQuickAddons.IconDialog` startup crashes in Plasma 6
* Corrected and recompiled German desktop and configuration translations (`de.po`)

## [1.3] - 2020-05-18

### Added

* Control panel function ( advanced mode )
* Full translation
* Help panel in config
* Add logo

### Fixed

* Errors checking


## [1.0] - 2020-05-16

### Added

* CMakeLists.txt for cmake
* New preview image ( dark Kpple Menu version )

### Fixed

* Adapt the text color to the user's theme by deleting the color texts lines
* Sleep button correction ( systemctl suspend )
* Fullrep's size correction
