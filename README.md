# Automatic Void Ricer

This repo contains my dotfiles, dwm, slstatus, and a bunch of custom bashscripts (two from [ChanderG](https://github.com/ChanderG/my-dwm))

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

## Usage

This setup has quite some tweaks that are personalized. I do encourage you to look into how to modify your own DWM, and your own setup too since you may need to look into a lot of keybindings to get started.

I change the config.deh.h of dwm (and slstatus too) which in return doesnt break my dwm when applying patches. If youre going to use this build continue editing everything in config.def.h preferably.
