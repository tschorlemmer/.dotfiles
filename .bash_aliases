#!/usr/bin/env bash

# Configure prompt
source /usr/share/git/git-prompt.sh
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "(%s)")'; PS1='\[\e[96m\]${PS1_CMD1}\[\e[35m\]\u\[\e[37m\]@\[\e[32m\]\H\[\e[37m\]:\[\e[91m\]\W\[\e[37m\]\$\[\e[0m\] '

# Create aliases
alias n="nvim"
alias lg="lazygit"
alias ls='ls --color=auto'
alias la='ls -al --color=auto'
alias grep='grep --color=auto'

# Add local bin to path if it exists
if [ -f $HOME/.local/bin ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Load in local if it exists
if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi

# If we have fzf ensure that we have fzf binds
if command -v fzf 2>&1 >/dev/null
then
	eval "$(fzf --bash)"
fi

update_sudo_display() {
    temp=$(xauth -f ~tschorle/.Xauthority list|tail -1)
    sudo xauth add $temp
}
