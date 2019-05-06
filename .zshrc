awsauth () {
    $HOME/Documents/dev/aws-auth-saml-linux-osx-bash/auth.sh "$@"
    [[ -r "$HOME/.aws/sessiontoken" ]] && . "$HOME/.aws/sessiontoken"
}

export NVM_AUTO_USE=true

export GOPATH=$HOME/go/Documents/dev/go

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/jmontagu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

DEFAULT_USER="jmontagu"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-nvm
    git
    dotenv
    vscode
    last-working-dir
    gitignore
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

prompt_dir() {
    prompt_segment blue black '%3/'
}
