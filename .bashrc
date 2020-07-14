export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games/:/usr/games:/sbin:/usr/sbin:/home/kikin/.scripts
export VISUAL=vim
export EDITOR="$VISUAL"
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

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

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

#One line aliases
alias cls='clear'
alias tracert='traceroute'
alias ll='ls -lah'
alias bashrc='sudo vim ~/.bashrc'
alias vimrc='sudo vim ~/.vimrc'
alias ..='cd ..'
alias q='exit'
alias py='python3'
alias ree='reboot'
alias doup='pacman -Syu'
alias smi='sudo make install'
alias rr='ranger'
alias ins='sudo pacman -S'

#echo -e "----------------------------------------------------------------------------------------------\e[1;31mDistribution:"
#cat /etc/os-release  | grep "VERSION"
#echo -e "----------------------------------------------------------------------------------------------------\e[1;31mUptime:\e[m"
#uptime
#echo -e "--------------------------------------------------------------------------------------------\e[1;31mKernel version:"
#uname -mrs
echo -e "----------------------------------------------------------------------------------------------\e[1;31mlogged users:"
last | grep -i "still"
#echo -e "---------------------------------------------------------------------------------------Last terminal login:"
#lastlog | grep -v "Nikdy"
echo -e "------------------------------------------------------------------------------------------\e[1;31mZombie processes:"
ps axo pid,cmd,state | grep Z | grep -v grep
#echo -e "---------------------------------------------------------------------------------Last 3 sudo commands used:"
#cat /var/log/auth.log | grep -i "sudo" | grep -i tty | tail -n3 | cut -d ";" -f4
#echo -e "-------------------------------------------------------------------------------------------------------ARP:"
#arp -n | grep "\."
#echo -e "-------------------------------------------------------------------------------------------------------DNS:"
#nmcli | grep -i "server\|dns"
#echo -e "--------------------------------------------------------------------------------------------------------IP:"
#echo "Eth:"
#ifconfig enp1s0 | grep inet
#echo "Wlan:"
#ifconfig wlp2s0 | grep inet

PS1="\[\e[1;31m\]["
PS1+="\[\e[1;34m\]\u "
PS1+="\[\e[m\]"
PS1+="\[\e[1;32m\]\w\[\e[1;31m\]]\[\e[m\] "
export PS1
xset b off
