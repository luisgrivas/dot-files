# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export BROWSER="/mnt/c/Program Files/Google/Chrome/Application/chrome.exe"

export ZSH_THEME=robbyrussell

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13

export ZOXIDE_CMD_OVERRIDE='cd'

# User configuration
#eza
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'dirs-first' yes

plugins=(git zoxide eza zsh-vi-mode)

export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

source $ZSH/oh-my-zsh.sh # por alguna razon, aqui jala

# alias
alias n='nvim'
alias c='clear'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# eval "$(starship init zsh)" For the moment this is broken
