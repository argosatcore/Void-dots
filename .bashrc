# _____ _            ____                              
#|_   _| |__   ___  | __ )  ___  _   _ _ __ _ __   ___ 
#  | | | '_ \ / _ \ |  _ \ / _ \| | | | '__| '_ \ / _ \
#  | | | | | |  __/ | |_) | (_) | |_| | |  | | | |  __/
#  |_| |_| |_|\___| |____/ \___/ \__,_|_|  |_| |_|\___|
#                                                      
#    _               _         ____  _          _ _   
#   / \   __ _  __ _(_)_ __   / ___|| |__   ___| | |  
#  / _ \ / _` |/ _` | | '_ \  \___ \| '_ \ / _ \ | |  
# / ___ \ (_| | (_| | | | | |  ___) | | | |  __/ | |_ 
#/_/   \_\__, |\__,_|_|_| |_| |____/|_| |_|\___|_|_(_)
#        |___/                                        

#Environmental Variables:
	export EDITOR="nvim"
	export PAGER="less"
	export MANPAGER='nvim +Man!'
	export BROWSER="firefox"
	export TERM="xterm-256color"
	bind 'set completion-ignore-case on'
	shopt -s cdspell
	complete -d cd

#Bash prompt:
	PS1='\[\033[00;00m\][';
	PS1+='\[\033[01;91m\]\w';
	PS1+='\[\033[00;00m\]]';
	PS1+='\[\033[01;32m\]⊙ ';
	PS1+='\[\033[00;00m\]';

#Aliases:
	alias ll='ls -alF'
	alias la='ls -A'
	alias l='ls -CF'
	alias c='clear'
	alias poweroff='loginctl poweroff'
	alias reboot='loginctl reboot'
	alias suspend='loginctl suspend'
	alias v='nvim'
	alias n='nnn'
	alias xq='xbps-query -Rs'
	alias xu='sudo xbps-install -Su'
	alias xi='sudo xbps-install -S'
	alias xr='sudo xbps-remove -R'
	alias packages='xbps-query -Rs \* | wc -l'
	alias clean='sudo xbps-remove -Oo'
	alias lk='vkpurge list'
	alias kk='sudo vkpurge rm'
	alias sbrc='source /home/carlos/.bashrc'
	alias svrc='source /home/carlos/.vimrc'
	alias trim='sudo fstrim /'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
	
# Vim mode:
	set -o vi
bind 'set show-mode-in-prompt on'
bind 'set vi-ins-mode-string +'
bind 'set vi-cmd-mode-string -'

# If not running interactively, don't do anything
	[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
	HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
	shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
	HISTSIZE=1000
	HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
	shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
	[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#NNN's environmental variables:

	#Bookmarks
		export NNN_BMS='d:/home/carlos/Documents;u:/home/user/Cam Uploads;D:~/Downloads/'

	#Plugins
		export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:dragdrop;t:nmount;v:preview-tui;z:fzcd'
	
	#Archive
		export NNN_ARCHIVE="\\.(7z|bz2|gz|tar|tgz|zip)$"
	
	#Trash
		export NNN_TRASH=1


