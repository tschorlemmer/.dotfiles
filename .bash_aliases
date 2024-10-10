# Create the alias for updating/managing dotfiles
alias config="/usr/bin/git --git-dir=$HOME/.df-git --work-tree=$HOME"

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "(%s)")'; PS1='\[\e[96m\]${PS1_CMD1}\[\e[35m\]\u\[\e[37m\]@\[\e[32m\]\H\[\e[37m\]:\[\e[91m\]\W\[\e[37m\]\$\[\e[0m\] '

alias n="nvim"
alias lg="lazygit"


