---
date: "2018-09-07T00:00:00-07:00"
draft: false
header:
  caption: ""
  image: ""
math: false
summary: "\r\nResolving merge conflicts is one the things that I hate most. \r\nLets
  make it a little easier with p4merge.\r\n"
tags:
- git
- gitconfig
- mergetool
- difftool
title: Use p4merge from Perforce as default git mergetool
---

![p4merge-conflict-resolution-screenshot](p4merge-conflict-resolution.png)

A while ago this took more effort as described [in this
link](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration) (scroll
to section  'External Merge and Diff Tools').  

Not anymore. Now git natively supports p4merge. So you only need to modify your
global git config (`~/.gitconfig`):
```ini
[merge]
	tool = p4merge
[mergetool "p4merge"]
	path = p4merge.exe
[diff]
	tool = p4merge
[difftool "p4merge"]
	path = p4merge.exe
```

You can provide the absolute path to the p4merge binary, but I have it on PATH
because I installed it with [scoop](https://scoop.sh/).

## Install p4merge with scoop

To get scoop, from the PowerShell execute:

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

*p4merge* is in the [**extras**
scoop bucket](https://github.com/lukesampson/scoop-extras), add the bucket first
to be able to install it easily:

```shell
scoop bucket add extras
```

then you can install p4merge

```shell
scoop update
scoop search p4merge
scoop install p4merge
```

To list all you installed scoop apps with PowerShell:

```powershell
(scoop list) | sls '^  (\w+)' |% { $_.matches.groups[1].value }
```

## Full .gitconfig

My full `.gitconfig` is below. It `[include]`s two paths `.gitaliases` and
`.gitmorealiases`, they are both just text files in my home directory, i.e.
they are siblings of my global `.gitconfig` file. They contain, you guessed
it, **git aliases**.
A large collection of aliases is [available
here](https://github.com/GitAlias/gitalias). And [here is a very useful blog
post / tutorial](https://haacked.com/archive/2014/07/28/github-flow-aliases/)
introducing you to the usefulness of aliases.

<script src="https://gist.github.com/chhh/c226cd37725ee6deb7a0.js"></script>
