set t_Co=256 "256 colors
set hlsearch "highlight search
set number "show line numbers
set ignorecase "ignores case in search
set incsearch "show search result as you type
syntax on
set autowrite "save when switching buffers
set smartcase
filetype indent on
filetype plugin on
set backspace=2
set splitbelow "horizontal split below
set termwinsize=7*0

"encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"netrw
let g:netrw_banner=0 "removing banner
let g:netrw_liststyle=3
let g:netrw_winsize=10

set omnifunc=syntaxcomplete#Complete

set ls=2
set statusline=%t                                       " tail of the filename
set statusline+=%y                                      " filetype
set statusline+=%=                                      " left/right separator
set statusline+=%c\                                     " cursor column
set statusline+=%l/%L\                                  " cursor line/total lines

let mapleader = "\\"

"Bindings
nnoremap <leader>p :ls<CR>:b<Space>
nnoremap <leader>] :bn<CR>
nnoremap <leader>[ :bp<CR>
nnoremap <leader>- :bd<CR>
nnoremap <leader>t :term<CR>
nnoremap <leader>/ :nohl<CR>
nnoremap <leader>l :Lex<CR>
nnoremap <C-S> :w<CR>


