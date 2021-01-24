# Automatic Void Ricer

Have you heard of ricing? Maybe from r/unixporn, or maybe from your favorite unixTuber?? Then you've come to the right place.

This is a KISS autoricer which was written from scratch in like 2 weeks(it's not really that hard it's just simple bashscripting).

## Void Linux

Void Linux is a really lightweight desktop oriented Linux which is not necessarily that good for beginners if you go the minimalistic route but easier if youre installing a DE flavour.

Void Linux has runit as an init system and uses LibreSSL instead of OpenSSL, it has an extremely fast package manager and quite some packages too.

## Installation

Installation is pretty simple but its strictly for the XBPS package manager (Void Linux Only) just run the following command:

```
bash install
```

This install is meant for fresh installations of Void Linux and may overwrite your previous files.

I hold no responsibility over anything that gets broken during the install. If any bug was found please create an issue and Ill get to it when I can.

## DWM/HWM(The Holy Window Manager of Linux "Elitists")

This Window Manager is *extremely* hard to use and configure. I am a certified System Engineer and have been using GNU/Linux 1990 so for you to understand and configure dwm to my level is just unimaginable.

Jokes aside, there isn't much you're going to configure dwm, just apply some patches and change the colors and some keybindings and youre set. There are some custom bashscripts in config/sucklessutils/addons\_dwm/ which don't really require a lot of bash scripting knowledge but may come in handy from time to time.

Patches used in this build:
> Attachaside
> Pertag
> Uselessgap

I change the config.deh.h of dwm (and slstatus too) which in return doesnt break my dwm when applying patches. If youre going to use this build continue editing everything in config.def.h preferably.
