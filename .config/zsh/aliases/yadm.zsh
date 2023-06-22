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
fi
