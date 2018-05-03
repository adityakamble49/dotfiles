"""""""""""""""""""""""""""""""""""""
"       vim plugin configurations
"""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""
"       vundle
"""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all plugins here

" Basic Plugins
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plugin 'scrooloose/nerdtree' " file drawer
Plugin 'tpope/vim-fugitive' " git for vim
Plugin 'airblade/vim-gitgutter' " vim gitgutter
Plugin 'scrooloose/syntastic' " syntax checker
Plugin 'editorconfig/editorconfig-vim' " editorconfig

" Look and Feel
Plugin 'flazz/vim-colorschemes' " colorschemes
Plugin 'nathanaelkane/vim-indent-guides' " indent guides
Plugin 'vim-airline/vim-airline' " vim ariline
Plugin 'vim-airline/vim-airline-themes' " vim airline themes
Plugin 'edkolev/tmuxline.vim' " tmux airline
Plugin 'majutsushi/tagbar' " code outline tagbar
Plugin 'gko/vim-coloresque' " color square

" Autocompletion and snippets
Plugin 'mattn/emmet-vim' " html tag completion
Plugin 'tpope/vim-surround' " surrounding tags
Plugin 'jiangmiao/auto-pairs' " auto close brackets
Plugin 'ervandew/supertab' " tab for insertion
Plugin 'tpope/vim-commentary' " comment
Plugin 'tpope/vim-haml' "SASS CSS HAML
"Plugin 'digitaltoad/vim-pug' " Jade Template
Plugin 'SirVer/ultisnips' " utils snippets
Plugin 'honza/vim-snippets' " vim snippets for engine
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"Plugin 'sheerun/vim-polyglot' " language pack

" javascript
"Plugin 'pangloss/vim-javascript' " javascript
"Plugin 'ternjs/tern_for_vim' " tern for javascript

" python
"Plugin 'klen/python-mode.git' " python mode
Plugin 'davidhalter/jedi-vim' " python autocomplete

" java
"Plugin 'artur-shaik/vim-javacomplete2' " java autocomplete

" markdown
Plugin 'godlygeek/tabular'  " table alignment
Plugin 'plasticboy/vim-markdown' " vim markdown
Plugin 'suan/vim-instant-markdown' " instant markdown


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:tmuxline_powerline_separators = 0
let g:airline_theme='base16'


""""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""
let g:ctrlp_cmd = 'CtrlP .'


""""""""""""""""""""""""""""""
" colorscheme
""""""""""""""""""""""""""""""
let python_highlight_all=1
syntax on
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized

""""""""""""""""""""""""""""""
" makrdown
""""""""""""""""""""""""""""""
" map TableFormat to leader tf
noremap <leader>tf :TableFormat<CR>

""""""""""""""""""""""""""""""
" python-mode
""""""""""""""""""""""""""""""
set nofoldenable
noremap <leader>pl :PymodeLintAuto<CR>

""""""""""""""""""""""""""""""
" fugitive
""""""""""""""""""""""""""""""
noremap <leader>gs :Gstatus<CR>
noremap <leader>gc :Gcommit<CR>

""""""""""""""""""""""""""""""
" indent line
""""""""""""""""""""""""""""""
let g:indentLine_color_term = 239


""""""""""""""""""""""""""""""
" tagbar
""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>


""""""""""""""""""""""""""""""
" emmet
""""""""""""""""""""""""""""""
imap hh <C-y>,


"""""""""""""""""""""""""""""
" vim ultisnippets
""""""""""""""""""""""""""""""
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


"""""""""""""""""""""""""""""
" youcompleteme
""""""""""""""""""""""""""""""
" autoclose description buffer
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'



"""""""""""""""""""""""""""""
" java autocomplete
""""""""""""""""""""""""""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
