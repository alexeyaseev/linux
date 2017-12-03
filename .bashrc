# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# User specific aliases and functions
PS1="\n\[\`if [[ \$? = "0" ]]; then echo '\e[32m\u@\h\e[0m'; else echo '\e[31m\u@\h\e[0m' ; fi\`:\$PWD\n\$ "
