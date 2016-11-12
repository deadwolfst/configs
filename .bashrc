#
# ~/.bashrc
#


export XDG_CONFIG_HOME=$HOME/cloud/Documents/LinuxFiles/.config
export BROWSER=yandex-browser-beta
export CONFIGS=$HOME/cloud/Documents/LinuxFiles/.config
#export I3_CONF=$CONFIGS/i3/
export PATH=$PATH:$CONFIGS/i3/scripts/bin:$HOME/bin/
export EDITOR=vim
export PAGER=vimpager
export VISUAL=vim
export WINEPREFIX=$HOME/.config/wine
update_i3_config

if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color'
alias ll='ls -L --color=auto'
alias la='ls -A --color=auto'
alias mkdir='mkdir -p -v'
alias shwhite='ssh kirill@37.139.42.102 -p 2222'
alias shhelios='ssh s191681@helios.cs.ifmo.ru -p 2222'
alias shlhelios='ssh s191681@helios.cs.ifmo.ru -p 2222 -L 1521:localhost:1521'
alias shbasador='ssh a120504_basador@a120504.ftp.mchost.ru'
alias shappstory='ssh a120504_story@a120504.ftp.mchost.ru'
alias shjino='ssh kirill@ovz1.app-labs.z8qgz.vps.myjino.ru -p 49235'

PS1='[\u@\h \W]\$ '
set -o emacs

if [ -f ~/.local/lib/python*/site-packages/powerline/bindings/bash/powerline.sh ]; then
	source ~/.local/lib/python*/site-packages/powerline/bindings/bash/powerline.sh
fi
