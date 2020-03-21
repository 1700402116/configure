"reset KEY: leader to space
let mapleader=" "
syntax on

set number
"show relativenumber
set relativenumber
set cursorline
set wrap
set showcmd
"auto completion
set wildmenu 

set hlsearch
exec "nohlsearch"
set incsearch

noremap k 5k
noremap j 5j
noremap h 5h
noremap l 5l
noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

call plug#begin('~/.vim/autoload/plug')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()


color snazzy

