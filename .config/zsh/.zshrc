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

setopt NO_CASE_GLOB
setopt GLOB_COMPLETE
setopt AUTO_CD
setopt EXTENDED_HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=5000
HISTSIZE=2000
setopt SHARE_HISTORY			# share history across zsh sessions
setopt APPEND_HISTORY			# append to history
#setopt INC_APPEND_HISTORY		# adds commands as they are typed # Either set inc_append_history or share_history but not both.
setopt HIST_EXPIRE_DUPS_FIRST	# expire duplicates first
setopt HIST_IGNORE_DUPS			# do not store duplications
setopt HIST_FIND_NO_DUPS		#ignore duplicates when searching
setopt HIST_REDUCE_BLANKS		# removes blank lines from history
setopt CORRECT
setopt CORRECT_ALL


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
