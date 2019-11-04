# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# Theme stuff
source ~/.dotFilesSubmodules/zsh/themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_MODE="nerdfont-complete"

# Aliases
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

# Plugins
plugins=(git)
source ~/.dotFilesSubmodules/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax highlighting should be loaded last
source ~/.dotFilesSubmodules/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
