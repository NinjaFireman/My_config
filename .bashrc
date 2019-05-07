#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sudo='sudo '
alias vim='nvim'
#PS1='[\u@\h \W]\$ ' - original
#PS1='\e[00;32m\][\u\[\033[00;33m\]@\[\033[00;36m\]\h \W]\$ \e[m '
PS1="\[\033[1;34m\][\u@\h:\w]$\[\033[0m\] "
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx
fi
export EDITOR=nvim
export PATH="$HOME/.cargo/bin:$PATH"
neofetch
