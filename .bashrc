#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

setxkbmap de
alias vim='nvim'
alias vi='nvim'

alias q='exit'
alias la='ls -a'

alias logout='loginctl terminate-user tim'
alias shutdown='shutdown now'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
export TERM='xterm-256color'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
