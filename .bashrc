export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games/:/usr/games:/sbin:/usr/sbin:/home/kikin/.scripts

#If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

#Append to the history file, don't overwrite it
shopt -s histappend

#For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

#Check the window size after each command and, if necessary,
#Update the values of LINES and COLUMNS.
shopt -s checkwinsize

#Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

#echo -e "\e[1;31mDistribution:"
#cat /etc/os-release  | grep "VERSION"
#echo -e "\e[1;31mUptime:\e[m"
#uptime
#echo -e "\e[1;31mKernel version:"
#uname -mrs
echo -e "\e[1;31mlogged users:"
last | grep -i "still"
#echo -e "Last terminal login:"
#lastlog | grep -v "Nikdy"
echo -e "\e[1;31mZombie processes:"
ps axo pid,cmd,state | grep Z | grep -v grep
#echo -e "Last 3 sudo commands used:"
#cat /var/log/auth.log | grep -i "sudo" | grep -i tty | tail -n3 | cut -d ";" -f4
#echo -e "ARP:"
#arp -n | grep "\."
#echo -e "DNS:"
#nmcli | grep -i "server\|dns"
#echo -e "IP:"
#echo "Eth:"
#ifconfig enp1s0 | grep inet
#echo "Wlan:"
#ifconfig wlp2s0 | grep inet

#Read aliases form ~/.bash_aliases
[ -f ~/.bash_aliases ] && source ~/.bash_aliases || echo "Alias file read failure" 

source /usr/share/git/completion/git-prompt.sh
PS1="\[\e[1;31m\]["
[ $(id -u) -eq 0 ] && PS1+="\[\e[1;34m\]BACHA PYČO " || PS1+="\[\e[1;34m\]\u "
PS1+="\[\e[m\]"
PS1+="\[\e[1;32m\]\w\[\e[1;31m\]]\[\e[1;36m$(__git_ps1)\[\e[m\] "
export PS1
xset b off
