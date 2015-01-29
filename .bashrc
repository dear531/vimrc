# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

if [[ "$TERM" == "xterm" ]];
then
	export LANGUAGE=en_US.UTF-8
fi
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
