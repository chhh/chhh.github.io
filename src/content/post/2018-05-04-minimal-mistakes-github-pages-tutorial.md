---
date: "2018-05-04T00:00:00-07:00"
draft: true
header:
  caption: ""
  image: ""
math: true
summary: "\r\nThe theme does provides quick-start instructions, but I found them to
  be\r\nconfusing at times for people who know nothing about Jekyll, Ruby, themes
  etc.\r\nSo I'm documenting my experience of using the theme. The emphasis is on
  being\r\nable to do everything without a local installation of Jekyll, thus Ruby.\r\n"
tags:
- jekyll
- minimal-mistakes
- github-pages
title: Starter guide for Minimal Mistakes theme for Jekyll hosted on github pages
---

My account on GitHub is [chhh](http://github.com/chhh) and account-level
GitHub-Pages page was already [in use](https://chhh.github.io). So the first
thing is to register an organization, an org on GitHub looks just like a regular
account, with its own name etc, but instead of a single person owning it there
might be several owners.

## Create an organization on GitHub

Login to GitHub with your account, in the top right corner click your _avatar_,
click _Settings_. Then click _Organizations_ in the menu-list on the left side,
now in the top right corner there's a _New Organization_ button.

Done.

## Clone minimal-mistakes repo

Navigate to [minimal-mistakes repository on GitHub](https://github.com/mmistakes/minimal-mistakes).
Top right corner, click the _Fork_ button, when presented with choice as to which
which account to fork to, select your newly created org.

This is important as we will get `<your-org-name>.github.io` domain name this way
automatically.

## Minimal required configuration

#### Telling github-pages which theme to use

Navigate to your cloned repo. In the root directory of file listing search for
file `_config.yml` and click it, an editor will open. In the top right corner of
the editor click the _pen icon_ to start editing. Uncomment the `remote_theme`
property, which should be somewhere at the top around line 14, it should look 
like this now:

```yml
remote_theme           : "mmistakes/minimal-mistakes"
```

#### Initial domain name configuration

Navigate to the main page of your repo, click _Settings_ tab somewhere at the top
of the page. Change _Repository Name_ field to `<your-org-name>.github.io`.

#### Confirm it works

Navigate to `https://<your-org-name>.github.io`, if it works you should see something
like the following:
![Barebones minimal-mistakes website](barebones-minimal-mistakes-site.png)

## Setting up custom domain name

Mapping `<your-org-name>.github.io` to a custom domain name.

**TODO**: describe CNAME.