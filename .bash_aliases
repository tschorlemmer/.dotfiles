# Create the alias for updating/managing dotfiles
alias config="/usr/bin/git --git-dir=$HOME/.df-git --work-tree=$HOME"

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "(%s)")'; PS1='\[\e[96m\]${PS1_CMD1}\[\e[35m\]\u\[\e[37m\]@\[\e[32m\]\H\[\e[37m\]:\[\e[91m\]\W\[\e[37m\]\$\[\e[0m\] '

alias n="nvim"
alias lg="lazygit"

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

if command -v fzf 2>&1 >/dev/null
then
    source /usr/share/doc/fzf/examples/key-bindings.bash
fi

# if command -v oh-my-posh
# then
#     if [ -f ~/.omp.json ]
#     then
#         eval "$(oh-my-posh init bash --config ~/.omp.json)"
#     else
#         eval "$(oh-my-posh init bash)"
#     fi
# fi

update_sudo_display() {
    temp=$(xauth -f ~tschorle/.Xauthority list|tail -1)
    sudo xauth add $temp
}
