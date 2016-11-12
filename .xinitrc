#!/bin/bash
xinput set-prop 14 318 2 2 2 2

#i3 configuration
update_i3_config

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
exec i3
