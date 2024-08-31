# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# terminal history size
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups

# User specific aliases and functions
. /usr/share/git-core/contrib/completion/git-prompt.sh
PS1='\n\[\033[0;`if [[ \$? = "0" ]]; then echo 32m; else echo 31m; fi`\]\u@\h\[\033[00m\]:$PWD\[\033[33m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")\n\$ \[\033[00m\]'
