# More complicated aliases
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


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
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gpull='git pull'
