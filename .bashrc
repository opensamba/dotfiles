# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace

# append to the history file, don't overwrite it

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
# Set some customization to history command
shopt -s histappend
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=500000
HISTTIMEFORMAT='%F %T:  '
shopt -s checkwinsize




# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

color_prompt=yes
PS1='[\[\033[01;38m\]\u@\h\[\033[00m\]:\W]\$ '
unset color_prompt force_color_prompt

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -lFh'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias Update='sudo aptitude update '
alias Aggiorna='sudo aptitude upgrade '
alias Find='sudo aptitude search '
alias Show='sudo aptitude show '
alias Install='sudo aptitude install '
alias Remove='sudo aptitude remove'
alias service="sudo /usr/sbin/invoke-rc.d"
alias logall="tail -f /var/log/syslog /var/log/auth.log"
#alias wrestart='sudo modprobe -r iwlagn && sudo modprobe  iwlagn'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Set a local path to the script i wrote
PATH="$PATH:/sbin/:~/.bin:~/.bin/Kasat"
# Set a path for autocomplete in python
export PYTHONSTARTUP="$HOME/.pythonrc"


# I hate the ^C when i press Control+C so I delete it
stty -echoctl

#I like fortunes messages at startup
echo -en "\E[37;1m";
fortune -s
tput sgr0
