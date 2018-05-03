"""""""""""""""""""""""""""""""""""""
"       basic vim configuration
"""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" general configs
""""""""""""""""""""""""""""""

" set incompatible with vi
set nocompatible
filetype on

" line numbers
set number
set relativenumber

" set unix line endings
set fileformat=unix
set fileformats=unix,dos

" encoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" auto remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" show special characters
exec "set listchars=eol:\uAC,tab:>-,trail:~"
set list

" backups and dirs
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


""""""""""""""""""""""""""""""
" key mappings
""""""""""""""""""""""""""""""
" map : to ;
nnoremap ; :

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" map leader key to , (comma)
let mapleader = ","

" map-leader-q-to-previous-w-to-next-buffer
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>
noremap <leader>x :bd<CR>

" toggle relative numbering
noremap <leader>tr :set relativenumber!<CR>


" split to tab
nmap <leader>tn :tabedit %<CR>
nmap <leader>td :tabclose<CR>

" splits - vertical and horizontal
nmap <leader>ss :sp <CR>
nmap <leader>sv :vsp <CR>


""""""""""""""""""""""""""""""
" styling
""""""""""""""""""""""""""""""
set t_Co=256
syntax on


""""""""""""""""""""""""""""""
" tabs and indentation
""""""""""""""""""""""""""""""
" use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" auto indent
set ai

" smart indent
set si

" highlight text over 80
set colorcolumn=80


""""""""""""""""""""""""""""""
" status line
""""""""""""""""""""""""""""""
" always show the status line
set laststatus=2
