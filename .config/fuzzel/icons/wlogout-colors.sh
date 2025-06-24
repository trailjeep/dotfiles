#!/bin/bash
#
# Prep:
#	cp /usr/share/wlogout/assets/*.svg  ~/.config/wlogout/icons
#	sed -i 's/path /path fill="#777777" /g' ~/.config/wlogout/icons/*.svg

#color=$(grep "color1 #" ~/.cache/wal/colors-wlogout.css | cut -d" " -f3 | tr -d ";")
color="#ccc"

shopt -s nullglob
icons=($HOME/.config/fuzzel/icons/*.svg)
shopt -u nullglob

for icon in "${icons[@]}"; do
	perl -pi -e "s/fill=\"#.*?\"/fill=\"$color\"/g;" "$icon"
done

