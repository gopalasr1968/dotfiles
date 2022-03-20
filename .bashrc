# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init bash pre)"

export CLICOLOR=1


if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
eval "$(fig init bash post)"

