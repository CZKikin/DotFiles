#[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.zshrc ]] && . ~/.zshrc

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="opera"
export MANPAGER="nvim -c 'set ft=man' -"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	startx
fi
