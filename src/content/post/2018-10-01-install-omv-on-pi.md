---
date: "2018-10-01T00:00:00-07:00"
draft: false
header:
  caption: ""
  image: ""
math: false
summary: "\r\nWalkthrough reminder for myself how to install OMV on Pi and set \r\nup
  backup to an external HDD.\r\n"
tags:
- omv
- openmediavault
- pi
- raspberry-pi
title: Installing OMV 4 (Open Media Vault) to Raspberry Pi 3+
---

## Setting up Raspberry Pi
Download the [OMV](https://www.openmediavault.org) image (yes, [the binaries are
hosted at sourceforge](https://sourceforge.net/projects/openmediavault/files/)
still) and burn it to an SD card using [Etcher](https://etcher.io/). 

Default loing/password is (IIRC): admin/openmediavault. I highly recommend
setting up a preferred fixed IP address for you Pi on the router.

## Using all the space on the system SD card
I used a 64GB card, but OMV only needs a gig or so. Reboot once, the partition
for OMV will be be auto-resized. A third partition on the SD card will be
created, but without a filesystem, check it out with `lsblk` command. Remember
the name of the partition.

To add a filesystem to this partition use :
```shell
mkfs.ext4 -L <your-label> /dev/<the-partition-name>
```
You can now go to the `Web Console -> Storage -> File Systems`, locate the new
partition and Mount it. It can now be used to store the data.

## Setting up an HDD
I have a 1TB 2.5" HDD (HGST Travelstar 7K1000, [Amazon
link](http://a.co/d/3vifPYg)) in a simple USB 3 enclosure. The Pi struggled to
power the HDD though, so I bought an powered USB hub (Anker 4-port powered USB
hub, [Amazon link](http://a.co/d/bqRz17R)). Haven't tried it yet, but it's quite
possible you can power up to 4 HDDs this way and use them all with a single Pi.

Just plug the HDD in the hub, the hub into wall power and the Pi - you're ready
to go. Reboot the Pi. Go to the web admin console. `Storage -> Disks`, check
that you see the new HDD there, probably as `/dev/sda1`.`Storage -> File Systems
-> +Create` (there's a button in the top row), create a new *ext4* filesystem on
the HDD.

## Creating a shared folder available from your local network
To enable file sharing using this HDD check that `Services -> SMB/CIFS` is
enabled. `Access Right Management -> Shared Folders -> +Add` and add a folder on
the hard drive. You might also need to go to `Access Right Management -> User`
and add a new user, click `Privileges` and grant the new user access to the
shared folder.

On Windows you can now open Explorer and `Map network drive`. Put in an address
like `\\192.168.1.176\my-share`. If all was right, it should ask you for
login/password. Check the box *log in using different credentials* and supply
the username and password for the user that you've just created through OMV
admin web page.

## Setting up backup of your cloud-based storage to the local HDD connected to Pi
Log in to RPi from ssh. Install RClone (https://rclone.org). Worked fine from
the script installation for me. Run `rclone configure` to set up Google Drive
integration. When asked to do "interactive" setup, say No. Then you can just
copy the given link and follow it on another computer with an actual browser.
Lynx won't do, as the Google authentication page needs javascript.

Give it a go while ssh'ed into the Pi. When everything works, you can go to the
OMV admin panel `System -> Scheduled Jobs`, which is basically a UI for adding
cron jobs, and add your `rclone sync` or `rclone copy` command to run, e.g.
every night at 3AM.
