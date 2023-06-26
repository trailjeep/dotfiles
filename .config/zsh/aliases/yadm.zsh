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
	alias ypl='yadm pull'
	alias yd='yadm diff'
	alias ydc='yadm diff --cached'
	alias yalt='yadm alt'
	alias yrmt='yadm remote -v'
	alias ycb='yadm clone --bootstrap'
	alias ycn='yadm clone --no-bootstrap'
	alias ycl='yadm config --get-all local.class'
	alias yupd='yadm add -u && yadm commit -m $(date -u +%Y%m%dT%H%M%SZ) && yadm push'
fi
