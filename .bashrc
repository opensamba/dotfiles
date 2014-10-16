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
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

PS1="[\[\033[01;32m\]\u@\h\[\033[00m\]:\W]\$ "
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# some more ls aliases
alias ll='ls -lFh'
alias la='ls -A'
alias l='ls -CF --color=no'
alias Update='sudo pacman -Syy '
alias Aggiorna='sudo pacman -Su '
alias Find='sudo pacman -Ss '
alias Show='sudo pacman -Si'
alias Install='sudo pacman -S '
alias Remove='sudo pacman -R'
alias d="sudo dhcpcd eth0"
alias logall="journalctl -b -f"
alias sysc="sudo systemctl"
#alias wrestart='sudo modprobe -r iwlagn && sudo modprobe  iwlagn'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Set a local path to the script i wrote
PATH="$PATH:~/.bin:~/.bin/Kasat"
# Set a path for autocomplete in python
export PYTHONSTARTUP="$HOME/.pythonrc"

# Set some customization to history command
shopt -s histappend
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=500000
HISTTIMEFORMAT='%F %T:  '

# I hate the ^C when i press Control+C so I delete it
stty -echoctl

#I like fortunes messages at startup
echo -en "\E[33;1m";
fortune -s
tput sgr0
