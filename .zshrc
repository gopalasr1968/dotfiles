# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

[[ -f $HOME/.profile ]] && source $HOME/.profile

#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
#typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/srinivas/.oh-my-zsh"

# path to Macports.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

#Path to Python
#export PATH="/usr/local/bin/python3.9:$PATH"
export PYTHONPATH="Users/srinivas/opt/anaconda3/lib/python3.8/site-packages":$PYTHONPATH
export CC='gcc-11'

#Path to Ruby.
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="robbyrussell"
#ZSH_THEME='fino-time'
#ZSH_THEME="spaceship"
#source ~/.oh-my-zsh/custom/themes/myspaceship.zsh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# for some reasons autosuggestions not launching from oh-my-zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# User Configuration
plugins=( 
    # other plugins...
    zsh-autosuggestions
    git
    zsh-syntax-highlighting
    # zsh-aliases-exa
    vi-mode
    copyfile
    copybuffer
    dirhistory
    vscode
    web-search)
source $ZSH/oh-my-zsh.sh

# Key-bindings
bindkey -s '^o' 'ranger^M'


# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#alias zshconfig="vim ~/.zshrc"
#alias ohmyzsh="vim ~/.oh-my-zsh"

# Python aliases
#alias python=/usr/local/bin/python3.9
alias python=/Users/srinivas/opt/anaconda3/bin/python3
#alias pip="/usr/local/bin/pip3"
export LC_ALL=en_US.UTF-8

# Other Plugins (zsh)
#source ~/.fzf.zsh



# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Auto Jump Plugin
 [[ -s /Users/srinivas/.autojump/etc/profile.d/autojump.sh ]] && source /Users/srinivas/.autojump/etc/profile.d/autojump.sh
    autoload -U compinit && compinit -u


# Expand the history size.
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTCONTROL=erasedups:ignoredups:ignorespace

alias c="clear"
alias ping="ping -c 5"
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
alias mount='mount | column -t'
alias wget="wget -c"
alias vi='vim'
alias v='vim'
alias h="history | grep "
alias less='less -R'

alias grep='grep --color'
alias t='tail -f'

alias h='history'
alias hgrep="fc -El 0 | grep"
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

# disk aliases
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias wget="wget -c"
alias top="htop"
alias mkdir="mkdir -pv"

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }

# Set the new vim
alias vi='nvim'
alias vim='nvim'
#export EDITOR='nvim'
#export EDITOR="/usr/local/bin/mate -w"
export EDITOR=vim

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/srinivas/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/srinivas/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/srinivas/opt/anaconda3/etc/profile.d/conda.sh"
    else
       export PATH="/Users/srinivas/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
#
#
# Deactive conda vm manually
conda activate

# <<< conda initialize <<<

# Node JS Setings
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
 #[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/sbin:$PATH"


# export Kitty config & Autocompletion
export KITTY_CONFIG_DIRECTORY="/Users/{$USER}/.config/kitty"
export PATH=$PATH:~/usr/local/bin/

autoload -Uz compinit 
compinit 

# for starship theme.
eval "$(starship init zsh)"

# Completion for kitty 
kitty + complete setup zsh | source /dev/stdin
# for bare dotfiles repository.
alias config='/usr/local/bin/git  --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
# config --local status.showUntrackedFiles no

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

