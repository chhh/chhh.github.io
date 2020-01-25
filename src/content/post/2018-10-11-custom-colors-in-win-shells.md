---
date: "2018-10-11T00:00:00-07:00"
draft: false
header:
  caption: ""
  image: ""
math: false
summary: "\r\nWouldn't it be nice if you had completion and nice colors in cmd.exe\r\njust
  like what you get out of the box on most Linuxes?\r\n"
tags:
- shell
- colors
title: Custom nice colors in Windows shells
---

We'll be using [scoop](https://scoop.sh/) to install the necessary tools.

## Quickstart with scoop

- Install `git` separately. Here's the link: https://gitforwindows.org. I recommend the following customizations in the installer:  
  - *Use Notepad++ as default editor*
  - *Use True Type fonts in all console windows*
  - *Check out as-is, commit as-is*
- `Win+ R` -> `powershell`. In PowerShell (answer '**Y**' when asked):

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

  - scoop is now installed, if you had any open cmd windows - close them now.


## Colors for cmd.exe and PowerShell

Install `concfg` using `scoop` or from here: https://github.com/lukesampson/concfg
```shell
scoop install concfg
```

Command to import the colorscheme:  
```shell
concfg import <path-to-json>
```
Color scheme as a gihib gist:
<script src="https://gist.github.com/chhh/9d01a3a822c7e84cd5666293b5989aaa.js"></script>

