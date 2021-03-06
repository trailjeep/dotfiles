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

shopt -s autocd			# Assume "cd" if cmd matches dir name
#shopt -s cdable_vars	# Assume args to "cd" which don't match dir refer to var
shopt -s cdspell		# Autocorrect typos with "cd"
shopt -s checkhash		# Check if hashed cmds exist before exec
shopt -s checkjobs		# Check stopped/running jobs before exit
shopt -s checkwinsize	# Update win size after every cmd
shopt -s cmdhist		# Try and save multi-line cmds as single entry
shopt -s direxpand		# Use word expansion for dir names
shopt -s dirspell		# Try to autocorrect typos during dir completion
shopt -s dotglob		# Include hidden files and dirs in expansion
shopt -s extglob		# Enable extended pattern matching features
shopt -s globstar		# Enable support for recursive globbing via "**"
shopt -s histappend		# Append to history file instead of overwriting
#shopt -s nullglob		# Allow filename patterns matching no files to expand to null string
shopt -s gnu_errfmt
shopt -s expand_aliases

#=================================================
# Variables
#=================================================

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

#CDPATH="."				# : sep list of dirs for "cd" search path
HISTSIZE=250000			# Max cmds to retain in history
HISTFILESIZE=5000		# Max lines to retain in history
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "		# Save time & display format
HISTCONTROL="ignoreboth"	# Don't insert dup cmds or lines with a leading space
HISTIGNORE="bg:clear:exit:fg:history:enc*:dec*"	# Exclude patterns from history
PROMPT_COMMAND="history -a"	# Save cmd to history before next prompt
#PROMPT_DIRTRIM=4		# Trailing dirs to retain (subject to prompt string)

export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export PAGER="/usr/bin/less"
# export GREP_OPTIONS='--color=auto' # DEPRECATED
export PS2="continue-> "
export PS3="select-> "
export PS4='$0.$LINENO+ '
export INPUTRC="$HOME/.inputrc"
# export LC_COLLATE="C"
# export LC_TIME=en_DK.UTF-8
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
# export LANGUAGE=en_US.UTF-8
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"
export PATH="/usr/lib/ccache/bin/:$PATH"
export STOW_DIR="$HOME/dotfiles"
export PET_GITHUB_ACCESS_TOKEN=`/bin/cat $HOME/.creds/pet` 
export LESS=-R
export LESSOPEN='|pygmentize -g %s'
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export LS_OPTIONS='--color=auto -A -F -X -B -h -v -b -T 0 --group-directories-first --quoting-style=shell-escape --time-style=iso'
export PIP_USER=true	# PIP install as user - should already be default

# cheat
export CHEAT_EDITOR='/bin/vi'
export CHEAT_USER_DIR="$HOME/.local/share/cheat"
export CHEAT_PATH="$HOME/.local/share/cheat:/usr/share/cheat"
export CHEAT_COLORS='true' # requires python-pygments
export CHEAT_COLORSCHEME='dark' # must be 'light' (default) or 'dark'
export CHEAT_HIGHLIGHT='yellow' # requires termcolor

# git
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWBRANCHREMOTE=1
export GIT_PS1_SHOWUPSTREAM="verbose"

# directories
www='/var/www/html'
dls='~/Downloads'
docs='~/Documents'
pics='~/Pictures'
pub='~/Public'
tunes='~/Music'
movs='~/Videos'
 
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
 
#PS_DATM="\D{%F %r}"
 
#prompt() {
#  if [ "$UID" -eq "0" ];
#    then PS1="\n\[$LTRED\]\u\[$WHT\]@\[$LTBLU\]\H\[$WHT\]:\[$LTCYN\]\w \[$YEL\]${PS_DATM}\n\[$LTRED\]#\[$NON\] "
#    else PS1="\n\[$LTGRN\]\u\[$WHT\]@\[$LTBLU\]\H\[$WHT\]:\[$LTCYN\]\w \[$GRN\]`__git_ps1` \[$YEL\]${PS_DATM}\n\[$LTGRN\]$\[$NON\] "
#  fi
#}
 
#PROMPT_COMMAND="prompt"
 
if [ -x $HOME/.local/bin/dogsay -a -x /usr/bin/fortune ]; then 
        IFS=", " read -r -a dogs <<< `$HOME/.local/bin/dogsay -l | sed 's/Possible dogs are: //'`
        dog=${dogs["$[RANDOM % ${#dogs[@]}]"]}
        #/usr/bin/fortune -ces art cookie definitions humorists law love magic medicine men-women miscellaneous news paradoxum people pets platitudes politics science songs-poems tao wisdom work | sed -e 's|/usr/share/fortune//||' -e 's/%//' | $HOME/.local/bin/dogsay -d "$dog"
		/usr/bin/fortune -e "$HOME"/.local/share/fortune | "$HOME"/.local/bin/dogsay -d "$dog"
fi



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
alias scrs='xwd -root | convert xwd:- ~/screenshot.png' # depends imagemagick
alias ws='xwd -frame | convert xwd:- ~/windowshot.png' # depends imagemagick
alias clip='xclip' # input to clipboard use xclip
alias clop='xclip -o' # output from clipboard use xclip
 
# grep ignore case & color
alias egrep='egrep -i --color=auto'
alias fgrep='fgrep -i --color=auto'
alias grep='grep -i --color=auto'
 
alias diff='diff --color=auto'


# ls
alias l='ls -CF'
alias la='ls -A'
# alias ll='LC_COLLATE=C ls -halF --color=auto'
alias ll='ls -l $LS_OPTIONS'
alias ls='ls $LS_OPTIONS'
# alias ls='ls --color=auto'
alias lm='ls -alF | more'
[ -x /usr/bin/lsd ] && alias ll='lsd -alF --date=date --group-dirs=first'

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
alias pkgcln='dpkg --configure -a && dpkg -C && apt install -f && apt autoremove -y && apt autoclean -y && apt -y clean'

# pacman
#alias pms='pacman -Ss'   # search for pkg
alias pms='function _pms(){ expac -Ss "%n|%v|%d" $1 | column -t -s"|" | sort; };_pms'
alias pmq='pacman -Q'    # query pkg info
alias pmqi='pacman -Qi'  # query detailed pkg info
alias pmql='pacman -Ql'  # query pkg files
alias pmi='sudo pacman -S'    # install pkg
alias pmr='sudo pacman -Rns'  # remove pkg + unneeded deps + conf
alias pmy='sudo pacman -Syy'  # force sync repos
alias pmu='sudo pacman -Syyuu' # full system upgrade / enable downgrade
alias pmd='sudo pacman -Syyuuw --noconfirm' # just download updates
alias pmid='sudo pacman -Suu --noconfirm && sudo pacdiff' # install downloaded
alias pmo='pacman -Qdt'  # list orphans
alias pmor='sudo pacman -Rns $(pacman -Qtdq)' # recursively remove orphans
alias pmfy='sudo pacman -Fy'  # sync file db
alias pmfs='pacman -Fs'  # find pkg providing file
alias rl1='sudo systemctl isolate rescue.target' # systemd single user mode - no x
alias rl3='sudo systemctl isolate multi-user.target' # systemd multi-user mode with networking - no x
alias rl5='sudo systemctl isolate default.target' # systemd multi-user mode+graphical+networking

alias g='git'	# git
# alias yay='yay --sudoloop' # deprecated no longer use yay
alias dcs='dconf dump / | grep -i'					# search dconf values and keys
alias gss='gsettings list-recursively | grep -i'	# search dconf values and keys
alias stow='stow -v'	# stow verbose
alias dd='dd status=progress'	# dd progress
alias rm='rm -i'	# rm interactive
alias ifconfig='echo -e "\n** Deprecated: use ip **\n"; ip a'
alias df='df -h'	# disk free human readable
alias du='du -hx'	# disk usage human readable
alias more='less'	# less is more
alias vi='vim'
alias diff='colordiff'
 
alias cava='/bin/konsole --nofork --profile cava --hide-menubar --hide-tabbar -qwindowtitle cava &'
alias tunes='/bin/konsole --nofork --profile tunes --hide-menubar --hide-tabbar -qwindowtitle tunes &'
alias glmviz='glmviz config-stereo-jeff &'
alias vis1='glmviz'
alias vis2='cava'

alias podplay='mplayer -af scaletempo -speed 1.5 '	# mplayer play podcasts @1.5x

alias cls='clear;uname -a;echo;lsb_release -ds;echo;date "+[ %F %A %r %Z ]";echo;fortune;echo' # clear screen

# ANSI colors
alias ansi-colors='for attr in $(seq 0 1); do for fg in $(seq 30 37); do for bg in $(seq 40 47); do printf "\033[$attr;${bg};${fg}m$attr;$fg;$bg\033[m "; done; echo; done; done'

alias md='mkdir'
alias distro='lsb_release -a'

# external ip
alias extip='dig +short myip.opendns.com @resolver1.opendns.com'

# pyTivo (web interface :9032)
# alias pytivo-start='ssh root@MAISIE "/usr/bin/python ~/bin/pytivo/pyTivo.py &"'
# alias pytivo-stop='ssh root@MAISIE "pkill -SIGINT -f ~/bin/pytivo/pyTivo.py"'
# minidlna
#alias dlna-start='ssh root@NAILAH "/bin/systemctl start minidlna &"'
alias dlna-pr0n='ssh root@NAILAH "/bin/systemctl stop minidlna; /bin/sed -i -e \"s|db_dir=/var/cache/minidlna/Movies|db_dir=/var/cache/minidlna/pr0n|\" -e \"s|media_dir=V,/mnt/Movies|media_dir=V,/mnt/pr0n|\" /etc/minidlna.conf; /bin/systemctl start minidlna"'
alias dlna-movies='ssh root@NAILAH "/bin/systemctl stop minidlna; /bin/sed -i -e \"s|db_dir=/var/cache/minidlna/pr0n|db_dir=/var/cache/minidlna/movies|\" -e \"s|media_dir=V,/mnt/pr0n|media_dir=V,/mnt/Movies|\" /etc/minidlna.conf; /bin/systemctl start minidlna"'
alias dlna-stop='ssh root@NAILAH "/bin/systemctl stop minidlna &"'
alias dlna-rescan='ssh root@MAISIE "minidlnad -R && systemctl force-reload minidlna"' # rescan minidlna media dirs (webstats=:8200)

# weather & moon phase
# https://github.com/chubin/wttr.in http://wttr.in/:help
alias wx='curl "http://wttr.in/06437"'
alias moon='curl "http://wttr.in/moon"'

# restart plasma moved to script 'r' in ~/.local/bin/ so i could use w/krunner
# alias r='echo "Restarting Plasma..."; kquitapp5 plasmashell && kstart5 plasmashell > /dev/null 2>&1'
# logout self
alias lout='loginctl terminate-user `whoami`'

# wrong command executed
alias fix='`!!:$`'

# calc plasmoid
alias calc='plasmawindowed org.kde.plasma.calculator >/dev/null 2>&1 &'

# Rename files to UTF8, special chars to _, & lowercase
# deprecated configured in ~/.detoxrc
# alias detox='detox -s utf_8 -s lower'

alias matrix='tmatrix -t `echo "$USER@$HOSTNAME"`'

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

# cd = cd+ll
function cd() {
	new_directory="$*";
	if [ $# -eq 0 ]; then 
		new_directory=${HOME};
	fi;
	builtin cd "${new_directory}" && ll
}

# backup file
bup() { cp -a "$1" "$1.`date +%s`.ORG"; }

# resize /tmp tmpfs
rsz-tmp() { sudo mount -o remount,size="$1",noatime /tmp; }

# encrypt/decrypt strings compatible w/dokuwiki plugin encrypted passwords
encstr() { echo "$1" | openssl aes-256-cbc -pbkdf2 -e -k "$2" | openssl base64 -e; }
decstr() { echo "$1" | openssl base64 -d | openssl aes-256-cbc -pbkdf2 -d -k "$2"; }
encfl() { openssl aes-256-cbc -pbkdf2 -e -k "$2" -in "$1" -out "$1".dat; }
decfl() ( openssl aes-256-cbc -pbkdf2 -d -k "$2" -in "$1" -out ${1%.dat}; )
encdir() ( tar cz "$1" | openssl aes-256-cbc -pbkdf2 -e -k "$2" -out ${1%/}.dat; )
decdir() { openssl aes-256-cbc -pbkdf2 -d -k "$2" -in "$1" | tar xz; }

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
  history -w
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

####################
### Window Setup ###
####################

# Set the window title to "user@host:dir" if this is an xterm or rxvt terminal
case "$TERM" in
    xterm*|rxvt*) PS1="\[\e]0;\u@\h: \w\a\]$PS1" ;;
esac

##########################
### Command Completion ###
##########################

# Enable more powerful command completion if available
if [[ -f /etc/bash_completion ]] && ! shopt -oq posix; then
    # shellcheck source=/dev/null
    source /etc/bash_completion
fi

# Typing "!!<space>" will replace "!!" with the previous command
bind Space:magic-space

# yakuake b/g blur
#if [ "$DISPLAY"x != x -a -x /usr/bin/xdotool ]; then
#	sleep 2
#	yakuake=$(xdotool search --class yakuake)
#	#konsole=$(xdotool search --class konsole)
#	terms="$yakuake"
#	for id in $terms; do
#		xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $id
#	done
#fi

#if [[ $(ps --no-header -p $PPID -o comm | grep -Ev '^(yakuake|konsole)$' ) ]]; then
#        for wid in $(xdotool search --pid $PPID); do
#            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
#fi
sleep 1
if [[ $(ps --no-header -p $PPID -o comm) =~ ^yakuake$ ]]; then
        for wid in $(xdotool search --pid $PPID); do
            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi

