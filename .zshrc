export LC_ALL=en_US.UTF-8
export VISUAL=nvim
export EDITOR="$VISUAL"


export ZSH="$HOME/.oh-my-zsh"
bindkey -v

# eza 
zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'dirs-first' yes

# zoxide
export ZOXIDE_CMD_OVERRIDE='cd'

# eza
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'icons' yes

# plugins
plugins=(git zoxide eza zsh-interactive-cd starship)


# zsh plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

if type brew &>/dev/null; then
          FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

          autoload -Uz compinit
          compinit
fi

source $ZSH/oh-my-zsh.sh

alias c='clear'
alias n='nvim'
alias ls='eza --icons=always --sort=name --group-directories-first'
alias lt='eza -T --icons=always --sort=name --group-directories-first'
alias la='eza -a --icons=always --sort=name --group-directories-first'
alias ll='eza -l --icons=always --sort=name --group-directories-first'
alias lla='eza -l -a --icons=always --sort=name --group-directories-first'


source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.4.1
