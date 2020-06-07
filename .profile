[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="vim"
export TERMINAL="st"
export BROWSER="opera"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	startx
fi
