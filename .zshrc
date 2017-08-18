# Path to your oh-my-zsh installation.
export ZSH=/home/leonids/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lambda"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins+=(command-not-found vi-mode gitfast docker docker-compose cp vagrant gpg-agent terraform)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/home/leonids/.local/bin/"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8

export EDITOR=nvim

# vim-mode configuration
MODE_INDICATOR="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward

# export TERM=xterm
export ANSIBLE_INVENTORY=~/.ansible_hosts

fpath=(~/.zsh/completions $fpath)

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
unalias gb

alias esudo='sudo -E'

export ENV_JENKINS_URL="http://10.104.20.13:10280"
export MVN_HOME=~/tools/apache-maven-3.3.9
export PATH="${MVN_HOME}/bin:${PATH}"

source ~/tools/autoenv/activate.sh
source /etc/profile.d/vte.sh

source <(kubectl completion zsh)
#source <(minikube completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#eval $(gpg-agent --daemon --homedir /home/leonids/.gnupg 2>/dev/null)

