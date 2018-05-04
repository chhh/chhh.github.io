# Notes

If you want to clone the source of the site, you should know that the theme
([Academic](https://github.com/gcushen/hugo-academic)) is a submodule, so to
clone: `git clone --recurse-submodules https://github.com/dmtavt/dmtavt.github.io.git`

If you already have the repo cloned and want to pull in the latest state of
upstream changes, do `git submodule update`.

Use `git submodule update --remote` to automatically pull in all the changes from
upstream and update the local refs.

To test locally just run `hugo serve` from the _/src_ directory.