# Dotfiles
#
if $(command -v yadm >/dev/null 2>&1); then
	alias ya='yadm add'
	alias yc='yadm commit --allow-empty-message --no-edit'
	alias yca='yadm commit --amend'
	alias yl='yadm list -a'
	alias yr='yadm rm --cached'
	alias ys='yadm status'
	alias yp='yadm push -u origin main'
	alias yd='yadm diff'
	alias ydc='yadm diff --cached'
	alias yalt='yadm alt'
	alias yrm='yadm remote -v'
	alias ycb='yadm clone --bootstrap'
	alias ycn='yadm clone --no-bootstrap'
fi