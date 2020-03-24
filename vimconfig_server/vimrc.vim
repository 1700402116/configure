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

map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

map <LEADER><left> <C-w>h
map <LEADER><right> <C-w>l
map <LEADER><up> <C-w>k
map <LEADER><down> <C-w>j

map tn :tabe<CR>
map tr :+tabnext<CR>
map tl :-tabnext<CR>

call plug#begin('~/.vim/autoload/plug')

Plug 'vim-airline/vim-airline'

call plug#end()

