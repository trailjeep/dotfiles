##################################################
# File:         ~/.bash_prefs
# Created:      2010-08-09
# Modified:     2018-04-16
# Comment:      \alias to override
##################################################
 
#=================================================
# Shell Options
# http://www.gnu.org/software/bash/manual/bashref.html#The-Shopt-Builtin
#=================================================
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkwinsize
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s gnu_errfmt
shopt -s histappend
shopt -s nocaseglob
shopt -s nullglob
shopt -s expand_aliases

#=================================================
# Variables
#=================================================

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL="ignorespace:erasedups"
export HISTIGNORE="&:ls:bg:fg"
export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export PAGER="/usr/bin/less"
# export GREP_OPTIONS='--color=auto' # DEPRECATED
export PS2="continue-> "
export PS3="select-> "
export PS4='$0.$LINENO+ '
export INPUTRC="$HOME/.inputrc"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"
export PATH="$HOME/.local/bin/:/usr/lib/ccache/bin/:$PATH"
export STOW_DIR="$HOME/dotfiles"
 
# directories
www='/var/www/html'
wiki='/var/www/html/wiki.sacco.me/dokuwiki'
news='/var/www/html/news.sacco.me/FreshRSS'
dls='~/Downloads'
docs='~/Documents'
pics='~/Pictures'
pub='~/Public'
tunes='~/Music'
movies='~/Videos'
 
# ANSI colors
BLK='\e[0;30m'
BLU='\e[0;34m'
GRN='\e[0;32m'
CYN='\e[0;36m'
RED='\e[0;31m'
PPL='\e[0;35m'
BRN='\e[0;33m'
LTGRY='\e[0;37m'
DKGRY='\e[1;30m'
LTBLU='\e[1;34m'
LTGRN='\e[1;32m'
LTCYN='\e[1;36m'
LTRED='\e[1;31m'
LTPPL='\e[1;35m'
YEL='\e[1;33m'
WHT='\e[1;37m'
NON='\e[0m'
 
# tput colors
# BLK="$(tput setaf 0)"
# RED="$(tput setaf 1)"
# GRN="$(tput setaf 2)"
# YEL="$(tput setaf 3)"
# BLU="$(tput setaf 4)"
# MAG="$(tput setaf 5)"
# CYN="$(tput setaf 6)"
# WHT="$(tput setaf 7)"
# NON="$(tput sgr0)"
 
#=================================================
# Prompt
#=================================================
 
PS_DATM="\D{%F %r}"
 
prompt() {
  if [ "$UID" -eq "0" ];
    then PS1="\n\[$LTRED\]\u\[$WHT\]@\[$LTBLU\]\H\[$WHT\]:\[$LTCYN\]\w \[$YEL\]${PS_DATM}\n\[$LTRED\]#\[$NON\] "
    else PS1="\n\[$LTGRN\]\u\[$WHT\]@\[$LTBLU\]\H\[$WHT\]:\[$LTCYN\]\w \[$YEL\]${PS_DATM}\n\[$LTGRN\]$\[$NON\] "
  fi
}
 
PROMPT_COMMAND="prompt"
 
#=================================================
# Aliases
#=================================================

# search bash history with <- & ->
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# alt-h = open manpage
bind '"\eh": "\C-a\eb\ed\C-y\e#man \C-y\C-m\C-p\C-p\C-a\C-d\C-e"'

#-------------------------------------------------
# SSH / SCP
# ssh -v -l username -p port ip_address
# scp -p PORT
#-------------------------------------------------
alias taz='ssh -l admin -p 22 TAZ'
alias nailah='ssh -l root -p 22 NAILAH'
alias maisie='ssh -l root -p 22 MAISIE'

alias irc='irssi -n trailjeep -c freenode'
 
#-------------------------------------------------
# Modified Commands
#-------------------------------------------------
alias cd..='cd ..'
alias datm='date "+[ %F %A %r %Z ]"'
alias hg='history -a;history -n;history | grep'
alias psa='ps auwx'
alias cp='cp -p'
alias man='man -a'
alias ping='ping -c 10'
alias openports='netstat -nape --inet'
alias ss='xwd -root | convert xwd:- ~/screenshot.png' # depends imagemagick
alias ws='xwd -frame | convert xwd:- ~/windowshot.png' # depends imagemagick
alias clip='xclip' # input to clipboard use xclip
alias clop='xclip -o' # output from clipboard use xclip
 
# grep ignore case & color
alias egrep='egrep -i --color=auto'
alias fgrep='fgrep -i --color=auto'
alias grep='grep -i --color=auto'
 
# ls
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -halF'
alias ls='ls --color=auto'
alias lm='ls -alF | more'
 
# nav
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias kdesu='kdesudo'
alias avconv='ffmpeg'

alias locate='locate -i'
alias gunzip='gunzip -k'
alias bunzip2='bunzip2 -k'

# sudo -> su
# alias su='/usr/bin/sudo -s'
 
# apt
alias upd='apt update'
alias upg='apt update && apt upgrade'
alias upgd='apt update && apt full-upgrade'
alias pkgcln='dpkg --configure -a && apt install -f && apt autoremove -y && apt autoclean -y && apt clean'

# pacman
alias pms='pacman -Ss'   # search for pkg
alias pmq='pacman -Q'    # query pkg info
alias pmqi='pacman -Qi'  # query detailed pkg info
alias pmql='pacman -Ql'  # query pkg files
alias pmi='sudo pacman -S'    # install pkg
alias pmr='sudo pacman -Rns'  # remove pkg + unneeded deps + conf
alias pmy='sudo pacman -Syy'  # force sync repos
alias pmu='sudo pacman -Syyu' # full system upgrade
alias pmo='pacman -Qdt'  # list orphans
alias pmor='sudo pacman -Rns $(pacman -Qtdq)' # recursively remove orphans
alias pmfy='sudo pacman -Fy'  # sync file db
alias pmfs='pacman -Fs'  # find pkg providing file

# yay
alias yay='yay --sudoloop' # chrome always times out

# stow verbose
alias stow='stow -v'

# pip always install --user
alias pip='echo "ALWAYS use: \"\pip install --user\""'

# dd progress
alias dd='dd status=progress'

# rm interactive
alias rm='rm -i'

# ifconfig deprecated (net-tools) -> ip as reminder
alias ifconfig='echo -e "\n** Deprecated: use ip **\n"; ip a'

# diskspace free/used human readable
alias df='df -h'
alias du='du -hx'
 
# more is less
alias more='less'

alias vi='vim'
 
# clear screen
alias cls='clear;uname -a;echo;lsb_release -ds;echo;date "+[ %F %A %r %Z ]";echo;fortune;echo'

alias md='mkdir'
alias distro='lsb_release -a'

# external ip
alias extip='dig +short myip.opendns.com @resolver1.opendns.com'

# pyTivo (web interface :9032)
alias pytivo-start='ssh root@MAISIE "/usr/bin/python ~/bin/pytivo/pyTivo.py &"'
alias pytivo-stop='ssh root@MAISIE "pkill -SIGINT -f ~/bin/pytivo/pyTivo.py"'

# weather & moon phase
# https://github.com/chubin/wttr.in http://wttr.in/:help
alias wx='curl "http://wttr.in/06437"'
alias moon='curl "http://wttr.in/moon"'

# restart plasma
alias r='echo "Restarting Plasma..."; kquitapp5 plasmashell && kstart5 plasmashell > /dev/null 2>&1'
# logout self
alias lout='loginctl terminate-user `whoami`'

# wrong command executed
alias fix='`!!:$`'

# calc plasmoid
alias calc='plasmawindowed org.kde.plasma.calculator >/dev/null 2>&1 &'

# spotify downloader
alias spotdl='/usr/bin/python ~/src/spotify-downloader/spotdl.py'

#=================================================
# Unused
#=================================================
 
#-------------------------------------------------
# Solaris
#-------------------------------------------------
# alias md5sum='digest -va md5'
# alias sha1sum='digest -va sha1'
# alias psa='ps -ef'
 
#=================================================
# Functions
#=================================================

# backup file
bup() { cp -a "$1" "$1.`date +%s`.ORG"; }

# resize /tmp tmpfs
rsz-tmp() { sudo mount -o remount,size="$1",noatime /tmp; }

# encrypt/decrypt strings compatible w/dokuwiki plugin encrypted passwords
encrypt() { echo "$1" | openssl aes-256-cbc -pbkdf2 -e | openssl base64 -e; }
decrypt() { echo "$1" | openssl base64 -d | openssl aes-256-cbc -pbkdf2 -d; }

# erase sensitive info fr/history
rmhist() {
  [ "$1" = "" ] && { echo "Must specify a pattern!"; return 1; }
  i=`history | grep -c "$1"`
  [ "$i" -eq 1 ] && { echo "No matches found!"; history -d $((HISTCMD-1)); return 0; }
  echo -n "Found $i matches. Removing entry #'s: "
  until [ "$i" -eq 0 ]; do
    n=`history | grep -m 1 "$1" | awk '{print $1}'`
    history -d "$n"
    echo -n "$n "
    ((--i))
  done
}

# Uncompress the file passed as an argument (thanks stackoverflow)
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar x $1       ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

# yakuake b/g blur
if [ "$DISPLAY"x != x -a -x /usr/bin/xdotool ]; then
  yakuake=$(xdotool search --class yakuake)
  konsole=$(xdotool search --class konsole)
  terms="$yakuake $konsole"
  for id in $terms; do
    xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $id
  done
fi
