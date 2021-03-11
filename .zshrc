# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/kikin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games/:/usr/games:/sbin:/usr/sbin:/home/kikin/.scripts

source ~/.aliases 
source /usr/share/git/completion/git-prompt.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt prompt_subst
PROMPT='%F{red}[%(?.%F{green}√.%F{red}%?)%f %B%F{green}%1~%F{red}%b]%f%F{cyan}$(__git_ps1)%f ' 

