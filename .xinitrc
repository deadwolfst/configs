#!/bin/bash
dbus-update-activation-environment --systemd DISPLAY

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
exec i3
