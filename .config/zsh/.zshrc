# Important:
# echo 'export ZDOTDIR=$HOME/.config/zsh' | sudo tee -a /etc/zsh/zprofile

########################################
# https://zsh.sourceforge.io/Doc/Release/Options.html
########################################
# 16.2.1 Changing Directories
setopt AUTO_CD
setopt CDABLE_VARS
setopt CD_SILENT
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
setopt PUSHD_TO_HOME
# 16.2.2 Completion
setopt GLOB_COMPLETE
setopt LIST_PACKED
setopt LIST_TYPES
# 16.2.3 Expansion and Globbing
setopt NO_CASE_GLOB
setopt EXTENDED_GLOB
# 16.2.4 History
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
# setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
# 16.2.5 Initialisation
# 16.2.6 Input/Output
setopt CORRECT
#setopt CORRECT_ALL
setopt INTERACTIVE_COMMENTS
# 16.2.7 Job Control
# 16.2.8 Prompting
# 16.2.9 Scripts and Functions
# 16.2.10 Shell Emulation
# 16.2.11 Shell State
# 16.2.12 Zle
########################################

# oh-my-posh init
#eval "$(oh-my-posh init zsh --config ~/.prompt.omp.json)"

find "$ZDOTDIR"/aliases -mindepth 1 -maxdepth 1 ! -name ".*" | while read file; do source "$file"; done
find "$ZDOTDIR"/functions -mindepth 1 -maxdepth 1 ! -name ".*" | while read file; do source "$file"; done

# Load and initialise completion system
autoload -Uz compinit
compinit

# miniplug
source "$HOME/.local/share/miniplug.zsh"
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'zsh-users/zsh-syntax-highlighting' # <histsubsrch
miniplug plugin 'zsh-users/zsh-history-substring-search'
miniplug plugin 'zap-zsh/sudo'
miniplug plugin 'agkozak/zsh-z'
miniplug load

# keybinds
bindkey '^ ' autosuggest-accept
bindkey \^U backward-kill-line
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
# zsh-history-substring-search configuration
bindkey '^[[A' history-substring-search-up # or '\eOA'
bindkey '^[[B' history-substring-search-down # or '\eOB'
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

zshaddhistory() {
	[[ $1 != 'rmh '* ]]
}

# set tabwidth to match vim
# caveat: ls alias to ls -T 0
# but using eza so not apply
tabs -4

# nnn cd on quit
#if [ -f /usr/share/nnn/quitcd/quitcd.bash_sh_zsh ]; then
#    source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh
#fi

fpath=(~/.config/zsh/ $fpath)


if $(command -v fortune >/dev/null); then
	echo "-------------------------------------------------------------------------------"
	cols=$(tput cols)
	fortune -e "$FORPATH/my-collected-quotes" | fold -s -w "$cols"
	echo "-------------------------------------------------------------------------------"
fi

if $(command -v khal >/dev/null); then
	#khal list today 2d --format "{blue}{start-end-time-style} {green}{title} {description}"
	khal list today --format "{blue}{start-end-time-style} {green}{title} {description}"
	echo "-------------------------------------------------------------------------------"
fi


# bitwarden-cli (bw)
# takes too long
#eval "$(bw completion --shell zsh); compdef _bw bw;"

export PATH="$PATH:$HOME/bin:$HOME/.local/share/bin"

# Created by `pipx` on 2024-04-24 20:21:44
export PATH="$PATH:/home/jeff/.local/bin"

export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Starship prompt                                                                                            
eval "$(starship init zsh)"
