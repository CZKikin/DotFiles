let mapleader = ","
syntax on
set encoding=utf-8
set expandtab
set tabstop=4
set ignorecase
set smartcase


"Unmap arrow keys
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>

ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

vno <down> <Nop>
vno <up> <Nop>
vno <left> <Nop>
vno <right> <Nop>

"Navigaton
set ruler
set rnu

"Mapping f3 to toggle linenums
nmap <F3> :set nu! <CR>

"mapping leader f3 to toggle relative linenums
nmap <F4> :set rnu! <CR>

"mapping leader esc to erase search highlights 
nmap <LEADER><ESC> :noh <CR>

"autocorrect
abbr varemail krystofsadlik13@seznam.cz
abbr varname Kryštof Sádlík

"set highlights
set hlsearch

"Turning off backup aka swap shit
set nobackup
set nowritebackup
set noswapfile


"Python events

"Bash events

"Markdown events

"LaTeX events


