syntax enable
colorscheme tomorrow-night-eighties
let g:NumberToggleTrigger="nt"
set number
filetype plugin on

" Enable search highlighting
set hlsearch

" " Incrementally match the search
set incsearch

" bindings for ag and ctrlp
nnoremap <leader>' :Ag
nnoremap <leader>, :CtrlP<CR>

" bindings for clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p

call pathogen#infect()
call pathogen#helptags()

filetype indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set encoding=utf-8
