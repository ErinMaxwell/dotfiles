# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth
# show time/date stamps for items in history
export HISTTIMEFORMAT='%F %T  '

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Allow us to edit all '!' history commands before executing
shopt -s histverify

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

case $(uname -s) in
"Linux")
    PS1='\u@\H:\w\n\$ '
    alias ls='ls -FC --color=none'
;;
"Darwin")
    PS1='\u@\h:\w\n\$ '
    alias ls='ls -FC'
;;
*)
    echo "Configuring for UNKNOWN OS"
;;
esac

unset color_prompt force_color_prompt

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
