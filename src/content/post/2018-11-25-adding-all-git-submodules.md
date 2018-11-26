
+++
date = 2018-11-25
draft = false
tags = ["git", "submodule", "git-submodule", "howto"]
title = "Adding all existing submodules to a git repo"
math = false
summary = """
You have a git repo which contains sub-directories which are git repos
themselves and now you want them to become submodules. Here's a quick automatic
way to add them all.
"""

[header]
image = ""
caption = ""

+++

You have a git repo (a directory) which contains sub-directories which are git
repos themselves and now you want them to become submodules. Here's a quick
automatic way to add them all.

- Remove `-maxdepth` if you want to recursively dig deeper than 1 level.
- Assumes that each submodule has a remote named `origin`, uses that remote's
  url.

### Preview command

```bash
for x in $(find . -mindepth 1 -maxdepth 1 -type d) ; do if [ -d "${x}/.git" ] ; then cd "${x}" ; origin="$(git config --get remote.origin.url)" ; cd - 1>/dev/null; echo git submodule add "${origin}" "${x}" ; fi ; done
```
Will **only print** the submodule commands to be executed, but NOT execute them.

### Actual command

```bash
for x in $(find . -mindepth 1 -maxdepth 1 -type d) ; do if [ -d "${x}/.git" ] ; then cd "${x}" ; origin="$(git config --get remote.origin.url)" ; cd - 1>/dev/null; git submodule add "${origin}" "${x}" ; fi ; done
```
Will **execute** the actual submodule commands.

## Readable versions

- Preview

```bash
for x in $(find . -mindepth 1 -maxdepth 1 -type d) ; do 
  if [ -d "${x}/.git" ] ;
    then cd "${x}" ;
    origin="$(git config --get remote.origin.url)" ;
    cd - 1>/dev/null;
    echo git submodule add "${origin}" "${x}" ;
  fi ;
done
```

- Execute

```bash
for x in $(find . -mindepth 1 -maxdepth 1 -type d) ; do 
  if [ -d "${x}/.git" ] ; 
    then cd "${x}" ; 
    origin="$(git config --get remote.origin.url)" ; 
    cd - 1>/dev/null; 
    git submodule add "${origin}" "${x}" ; 
  fi ; 
done
```

*Credit (modified from an answer here)*:  
https://stackoverflow.com/questions/10606101/automatically-add-all-submodules-to-a-repo
