+++
date = 2018-03-07
lastmod = 2018-05-03
draft = false
tags = ["windows", "shell"]
title = "Using multiple different shells/subsystems on Windows"
math = true
summary = """
Configuring various shells and convenient dev environments on Windows with ConEmu.
"""

[header]
image = ""
caption = ""

+++

Shells to be used:

- cmd.exe
- MINGW from [Git](https://git-scm.com/download/win)
- [Cygwin](https://cygwin.com/install.html)
- Optionally [MSYS2](http://www.msys2.org/)

All of the above are managed through one shell manager -
[ConEmu](https://conemu.github.io/).  

First install all the shells, then ConEmu.

## Easy installation of useful dev tools

Use [scoop](http://scoop.sh/) to install basic utilities and languages.
Install from powershell (without admin rights):

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

Using command `scoop export` you can get an importable list of all installed packages.
Here's mine currently: [scoop-export.txt](scoop-export.txt).

## Tweaks to shells

### cmd.exe
To get auto-completion support similar to what you get in bash, install
[clink](https://mridgers.github.io/clink/).

### ConEmu
`Win + Alt + P` to open Properties. `Startup -> Tasks` and set shortcuts for
shells you'll be using.

- `Alt + C` for cmd.exe
- `Alt + Shift + C` for elevated cmd.exe
- `Alt + W` for MINGW fron git
- `Alt + Y` for Cygwin
The full config is [here](ConEmu_chhh-2018-03-07.xml), can be imported at installation time.

### Cygwin
Basic packages to install throught setup.exe:

- wget
- curl
- lynx
- zip
- unzip

Package manager that can be used from inside cygwin without having
to run setup.exe all the time: [apt-cyg](https://github.com/transcode-open/apt-cyg).

*Installation*:
```
lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
install apt-cyg /bin
```
