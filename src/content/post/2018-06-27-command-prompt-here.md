---
date: "2018-06-27T00:00:00-07:00"
draft: false
header:
  caption: ""
  image: ""
math: true
summary: |
  `Shift + Right Click` in an explorer window in Win10 now has the option to open
  PowerShell. If you want to have cmd.exe back instead, here's how, using the the
  registry.
tags:
- windows-tooling
title: Bring back "Open command window here" context menu item in Windows
---

It's a simple registry hack.

1. Strat registry editor: *Run* -> `regedit`.
* Go to `HKEY_CLASSES_ROOT\Directory\shell\cmd`.
* Right-click the *cmd* (folder) key, and click *Permissions*.
* Click the *Advanced* button.
* *Advanced Security Settings* dialog will open, at the top next to *Owner* click *Change*.
* Put in your account name, click *Check Names* to make sure domain etc is set up correctly, click *OK*.
* Check the *Replace owner on subcontainers and objects* check box near *Owner* field.
* Click *Apply*, *OK*.
* In the now open *Premissions* dialog, select **Administrators**, check **Full Control** checkbox below.
* Click *Apply*, *OK*.
* You are now back in the registry editor. Click the `cmd` folder on the left.
* Look for `HideBasedOnVelocityId` key in the right window tab.
  * If it's there, Right-click, *Rename* to `ShowBasedOnVelocityId`.
  * If it's not there, just add the `ShowBasedOnVelocityId` key (type *DWORD*), value `0x00639bc8 (6527944)`.
* Now try *Shift + Right Click* in an Explorer window, you should see the *Open command window here* option.
