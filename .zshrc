# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source "$HOME/.cargo/env"

# User configuration
export PATH="/home/peter/.local/bin:$PATH"
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
# export MANPATH="/usr/local/man:$MANPATH"

# Alias
alias ll='ls -alF'

chd (){
    cd "$(find $HOME/code -type d -not -path "*/.git/*" | fzf)"
}

git_fetch (){
    local branch=$1
    if [ -z $branch ]; then
        local branch="main"
    fi
    git fetch origin --prune
    git fetch . origin/main:main
}
