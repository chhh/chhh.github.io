---
date: "2018-05-07T00:00:00-07:00"
draft: false
header:
  caption: ""
  image: ""
math: true
summary: "\r\nIf you host a user/org website on github-pages you might want to change
  the\r\ndefault `username.github.io` to something nicer, like `username.com`.\r\nThis
  is a short instruction how to set up the repo and DNS configuration\r\nwith your
  DNS provider to achieve this.\r\n"
tags:
- github
title: Set up custom domain name with GitHub pages
---

## Intro

The whole process for various situations is described in [GitHub
documentation](https://help.github.com/articles/using-a-custom-domain-with-github-pages/).
This is just a reminder for myself how to properly configure top-level apex domain
redirect with GitHub Pages.



All of your `<username>.github.io` or `<orgname>.github.io` pages will be
redirected to the new custom domain, so your project pages can benefit from this
automatically. If you already have a project page like
`<username>.github.io/projectname`, this will become `<custom.domain>/projectname`.

## Sequence of actions

Let's say you own `domain.com` for the sake of example, and your github username
is `yourname`.

### On GitHub

Create a repository with name `<username>.github.io` or
`<orgname>.github.io` depending on the repo type.

Create a repo `yourname.github.io` add a file called `CNAME` with the following
contents to the root directory:

```text
domain.com
www.domain.com
```

If you prefer the name with _www_ prefix, put it at the top. Commit and push.
That's it with github.

### At DNS provider config

Add an A record:

```yml
name: @
type: A
TTL : 1h
data: [185.199.108.153, 185.199.109.153, 185.199.110.153, 185.199.111.153]
```

Add a CNAME record:

```yml
name: www
type: CNAME
TTL : 1h
data: yourname.github.io
```

With _domains.google.com_ this looks like the following:

![domains-google-com-config-screenshot](chhh-github-io-dns-config.png)

It might take several hours for the information to propagate throughout
the net and become accessible everywhere.