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
alias ls='ls -lah --color=auto'
alias bashrc='nvim ~/.bashrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias ..='cd ..'
alias q='exit'
alias py='python3'
alias ree='reboot'
alias smi='sudo make install'
alias rr='ranger'
alias p='sudo pacman'
alias doi='cd ~/.steam/steam/steamapps/common/dayofinfamy;./dayofinfamy_linux'
alias bright='echo 255 > /sys/class/backlight/amdgpu_bl0/brightness'
alias vim='nvim'
alias ckMemLeak='valgrind --leak-check=full --show-leak-kinds=all'

#Git aliases
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gpo='git push origin'
alias gp='git pull'
alias gf='git fetch'
alias gck='git checkout'
alias gb='git branch'
alias gm='git merge'
