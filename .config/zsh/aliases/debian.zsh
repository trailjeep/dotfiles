# apt
if $(command -v apt >/dev/null 2>&1); then
	alias apts='apt-cache search'
	alias aptupd='sudo apt update'
	alias aptupg='sudo apt update && sudo apt upgrade'
	alias aptupgd='sudo apt update && sudo apt full-upgrade'
	alias pkgcln='sudo dpkg --configure -a && sudo dpkg -C && sudo apt install -f && sudo apt autoremove -y && sudo apt autoclean -y && sudo apt -y clean'
	alias aptin='sudo apt install'
	alias aptun='sudo apt-get autoremove'
	alias aptunp='sudo apt-get autoremove --purge'
	alias aptpkgs='dpkg-query -W --showformat='${Package} ${Status}\n' | grep -v deinstall | cut -d" " -f1'
	alias dpin='dpkg -i'
fi
