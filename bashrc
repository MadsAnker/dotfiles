#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

alias open=xdg-open
alias dwmconf="cd ~/.local/share/dwm; vim config.h"
alias todo="taskwarrior-tui"
alias vimrc="vim ~/.vimrc"
alias sdu="cd ~/reps/SDU/1_semester"
alias nws="cd ~/reps/SDU/1_semester/network_and_cybersecurity"
alias dism="cd ~/reps/SDU/1_semester/diskrete_metoder_DM549"
alias ind="cd ~/reps/SDU/1_semester/introduktion_til_datalogi"
alias inp="cd ~/reps/SDU/1_semester/introduction_to_programming_DM550"
alias lin="cd ~/reps/SDU/1_semester/linear_algebra"

set -o vi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

alias ls='ls --color=auto'
export PS1="\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]:[\[$(tput sgr0)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]]\n\[$(tput sgr0)\]\[\033[38;5;5m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
export EDITOR=/usr/local/bin/vim

#PATH="/home/mads/reps/scripts${PATH:+:${PATH}}";
PATH="/home/mads/.local/bin:/home/mads/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/mads/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mads/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mads/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mads/perl5"; export PERL_MM_OPT;
