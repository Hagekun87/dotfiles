# Configuración de zsh




export ZSH="/Users/otacon/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
)

# Editor preferente
export VISUAL=nvim
export EDITOR="$VISUAL"

# Aliases
source ~/.configFiles/.alias

# Plugins zsh
source .oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source .oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

./.configFiles/.scripts/quotes.sh
