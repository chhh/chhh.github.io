+++
date = 2019-09-29
draft = true
tags = ["audio", "open-source", "music"]
title = "Set up multi-room audion at home without Sonos"
math = false
summary = """
Attempt to set up multiroom audio at home using open-source components
and cheapo hardware.
"""

[header]
image = ""
caption = ""

+++

# General plan

**Mopidy** (https://github.com/mopidy/mopidy/) is a music server which supports
many backends. Google Music is one of them. Can output audio to a named pipe.

**Snapcast** (https://github.com/badaix/snapcast) is a multi-room client-server
audio player that can read from a named pipe!

Clients (speakers) are then connected to Snapcast server and their volume can
be individually controlled by the Snapcast-server.


## Music players that can control Mopidy or MPD
- https://www.pimusicbox.com/
- https://www.runeaudio.com/clients/


## Raspberry Pi audio boards
- JustBoom (https://www.justboom.co/product-guide/)  
![justboom-rpi-hats-infographic](justboom-rpi-hats-infographic.png)
