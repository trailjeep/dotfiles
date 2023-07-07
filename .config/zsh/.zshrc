# Important:
# echo 'export ZDOTDIR=$HOME/.config/zsh' | sudo tee -a /etc/zsh/zprofile
#

# must be before p10k instant prompt
if $(command -v fortune >/dev/null); then
	cols=$(tput cols)
	fortune -e "$FORPATH/my-collected-quotes" | fold -s -w "$cols"
	echo
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
# 16.2.5 Initialisation
# 16.2.6 Input/Output
setopt CORRECT
setopt CORRECT_ALL
setopt INTERACTIVE_COMMENTS
# 16.2.7 Job Control
# 16.2.8 Prompting
# 16.2.9 Scripts and Functions
# 16.2.10 Shell Emulation
# 16.2.11 Shell State
# 16.2.12 Zle
########################################

source ~/.zplug/init.zsh

# Plugins
source $ZDOTDIR/plugins.zplug

# local
#zplug "$ZDOTDIR/aliases", from:local, use:"*.zsh"
for file in "$ZDOTDIR"/aliases/*.zsh; do source "$file"; done
for file in "$ZDOTDIR"/functions/*.zsh; do source "$file"; done

# Install plugins if there are plugins that have not been installed
if ! zplug check; then # --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load #--verbose

# Load and initialise completion system
autoload -Uz compinit
compinit

# keybinds
bindkey '^ ' autosuggest-accept

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
