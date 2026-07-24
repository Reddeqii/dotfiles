# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/reddeqii/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
export EDITOR=vim
export VISUAL=vim
export PATH=$PATH:/home/reddeqii/scripts/bin
export PATH=$PATH:/home/reddeqii/.local/bin
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

alias ls='lsd'
alias godot='cd ~/Downloads && ./Godot_v3.5-stable_x11.64 > /dev/null 2>&1'

source $ZSH/oh-my-zsh.sh
PS1='[  | %~ ]  '
