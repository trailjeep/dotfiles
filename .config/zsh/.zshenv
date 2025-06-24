export ED="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export SUDO_EDITOR="/usr/bin/nvim"
export TERMINAL="/usr/bin/kitty"
export PAGER="/usr/bin/bat"

export DIFFPROG="/usr/bin/meld" # "nvim -d"

export INPUTRC="$HOME/.inputrc"

export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
export SAVEHIST=10000 
export HISTSIZE=10000
export HISTORY_IGNORE="(h3*mp|k0*d3)"

# ls
export LS_OPTIONS='--color=auto -A -F -X -B -h -v -b -T 0 --group-directories-first --quoting-style=shell-escape --time-style=iso'
# git
export GIT_CONFIG_PARAMETERS="'user.name=$USER@$HOSTNAME'"

export COWPATH="$HOME/.local/share/cows"
export FORPATH="$HOME/.local/share/fortune"


### ZSH plugins
# MichaelAquilina/zsh-you-should-use
export YSU_MESSAGE_POSITION="after"	# before|after
export YSU_MODE=ALL					# BESTMATCH|ALL
# zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff" #,bg=cyan,bold,underline"
# zsh-users/zsh-history-substring-search
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=standout
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=underline
HISTORY_SUBSTRING_SEARCH_PREFIXED=true
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=true
# web-search
ZSH_WEB_SEARCH_ENGINES=(
	reddit	"https://www.reddit.com/search/?q="
	arch	"https://wiki.archlinux.org/index.php?search="
	aur		"https://aur.archlinux.org/packages?K="
	amazon	"https://www.amazon.com/s?k="
)

# nnn
export NNN_PLUG='f:fzopen;l:launch;p:preview-tui;z:autojump'
#export NNN_COLORS=''
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_OPTS="dDHio"
export SPLIT='v' # kitty vert split
