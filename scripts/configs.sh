#!/bin/sh
files="bim/init.vim
bspwm/bspwmrc
dunst/dunstrc
fish/config.fish
kitty/kitty.conf
neofetch/config.conf
nvim/init.vim
picom.conf
polybar/config
redshift.conf
rofi/config.rasi
sxhkd/sxhkdrc"

file=$(echo -e "$files" | rofi -dmenu)
kitty nvim $HOME/.config/$file
