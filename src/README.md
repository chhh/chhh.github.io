# Notes

## Updating the repo

If you want to clone the source of the site, you should know that the theme
([Academic](https://github.com/gcushen/hugo-academic)) is a submodule, so to
clone: `git clone --recurse-submodules https://github.com/chhh/chhh.github.io.git`

If you already have the repo cloned and want to pull in the latest state of
upstream changes, do `git submodule update` or `git submodule update --init`.

Use `git submodule update --remote` to automatically pull in all the changes from
upstream and update the local refs.

To test locally just run `hugo serve` from the _/src_ directory.

## Configuring custom domain name

This GitHub repo is named `chhh.github.io` and is owned by user `chhh`.
On GitHub this convention (repo named `<username>.github.io`) means that it will
automatically be hosted as a website for the user.  

Custom domain name forwarding is controlled by the file `CNAME` at the root
level of the repo.

Here with Hugo, it is put into `src/static` folder, which is copied to top level
at the build event.

## Ecosystem

* **[Academic Admin](https://github.com/sourcethemes/academic-admin):** An admin tool to import publications from BibTeX or import assets for an offline site
* **[Academic Scripts](https://github.com/sourcethemes/academic-scripts):** Scripts to help migrate content to new versions of Academic
