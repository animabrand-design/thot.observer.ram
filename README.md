# thot RAM — KDE Plasma widget (modified derivative of "thot")

A KDE Plasma plasmoid showing live **RAM %** as a minimalist, glassy circular
ring gauge — the original "thot" design by zayronxio.

## Original work / attribution

This product is a **modified** version of the "thot" widget by **zayronxio**:

- Original "thot" (CPU/RAM): https://store.kde.org/p/2106869
- Original author: zayronxio

Changes made here:
- Fixed a Qt Quick layout conflict: the ring container used
  `anchors.centerIn` while being managed by a `RowLayout`, which is undefined
  behavior. The layout rearranged and Qt logged "Detected anchors on an item
  that is managed by a layout", causing a per-second re-render and continuous
  journal spam. Replaced with
  `Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter`.

In keeping with the original's GPL-3.0+ license, this adapted source is
published here in **fully extracted form** (no archive), as required by the
KDE Store source-code policy.

## Repository contents (fully extracted source)

```
metadata.json                  # KPackage metadata (v0.5.2, GPL-3.0+)
contents/ui/main.qml           # the ring-gauge UI
contents/ui/GeneralConfig.qml  # config dialog UI
contents/ui/lib/get_ram_usage.sh # sensor backend
contents/config/               # config schema + category
contents/fonts/                # bundled typefaces (see below)
LICENSE                        # GPL-3.0 (full text)
```

### Font licensing note

The bundled fonts under `contents/fonts/` are inherited from the original
"thot" package and are NOT covered by the GPL-3.0 license of the widget code:
- `AcherusGrotesque-Bold.ttf` — Acherus Grotesque (commercial font by
  "The Northern Block"; check the original thot package for its license).
- `couture-bld.otf` — Couture (commercial font by "Camila.")

If you redistribute, confirm the font licenses separately, or replace the two
font files with freely-licensed equivalents.

## Install (from source)

```
kpackagetool5 -t Plasma/Applet -i .
```
or build a package:
```
plasmapkg2 -t Plasma/Applet --create .
```
then add the widget from Plasma's "Add Widgets" dialog.

## Upstream source link (REQUIRED by KDE Store)

This repo IS the fully-extracted source. Set the KDE Store product's
"Link to Source/Code" field to the public URL of THIS repository after you
publish it (e.g. `https://github.com/animabrand-design/thot.observer.ram`). Do not
point it at a `.plasmoid`/`.zip` archive — the store rejects archive-only links
for modified derivatives.

Version: 0.5.2
License: GPL-3.0-or-later
