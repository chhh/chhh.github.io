+++
date = 2018-02-19
lastmod = 2018-02-19
draft = false
tags = ["windows", "android", "wifi", "tethering"]
title = "Solving problems with tethering wifi from an Android phone"
math = true
summary = """
If your tethered (from a phone to a *windows* computer) internet connection
drops after a few seconds of being established, this post might be for you.
"""

[header]
image = ""
caption = ""

+++

Once I tried to connect from Win10 to a hotspot running off Google Pixel 2
(Android 8.1.0)  connected to T-Mobile (tethering) and it worked for a while,
but one day it just broke. Connection would work for 5-10 seconds allowing
to load one website maybe, but then it threw some DNS errors. Setting DNS
server manually didn't help, also `ping 8.8.8.8` timed out.

The solution (**from elevated cmd prompt**):

```cmd
netsh int ip reset c:\resetlog.txt
netsh winsock reset catalog
ipconfig /flushdns
```

And restart the computer.

Taken from [this question @ answers.microsoft.com](https://answers.microsoft.com/en-us/windows/forum/windows8_1-networking/dns-server-isnt-responding-no-wifi-internet/c6bb4b4c-6d8b-4f9d-8ca4-d03e6c414363?auth=1).
