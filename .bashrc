# .bashrc

# alias
alias ls='ls --color';
alias ll='ls -l --color';
alias grepc='grep -n -I --color=always --exclude=cscope.out --exclude=tags --exclude="\.*"' 
             # -n          : show line number.
             # -I          : ignore binary files.
             # --color     : force enable color.
             # --exclude=? : exclude tags, cscope files.

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions


alias mtkslt001="ssh mtkslt001"

# Prompt
PS1="[\u@\h(\A) \W]\$ "

# P4 Setting
# export P4HOST=mtkspf05
# export P4PORT=3042
# export P4USER=ying-chieh.chen
# export P4CLIENT=ws03_louis_

export PATH=$PATH:/mtkoss/git
