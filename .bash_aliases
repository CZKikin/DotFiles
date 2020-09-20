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
alias bashrc='nvim ~/.bashrc'
alias vimrc='nvim ~/.vimrc'
alias ..='cd ..'
alias q='exit'
alias py='python3'
alias ree='reboot'
alias smi='sudo make install'
alias rr='ranger'
alias p='sudo pacman'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gpull='git pull'
alias doi='cd ~/.steam/steam/steamapps/common/dayofinfamy;./dayofinfamy_linux'
alias bright='echo 255 > /sys/class/backlight/amdgpu_bl0/brightness'
