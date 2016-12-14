""" vimrc """

" ~/.vim
"    - autoload
"       - pathogen
"    - bundle
"       - nerdtree
"       - supertab
"       - vim-coffee-script
"    - syntax
"       - less.vim

" http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

" http://www.vim.org/scripts/script.php?script_id=3590
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.css set filetype=less

syntax on
set expandtab
set autoindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number
set incsearch
set ruler
set iskeyword+=_,$,@,%,#
set formatoptions-=cro

au FileType * setlocal formatoptions-=c
au FileType * setlocal formatoptions-=r
au FileType * setlocal formatoptions-=o

" turn off all bells
set noerrorbells
set t_vb=

" omni completion
"   http://vim.wikia.com/wiki/Omni_completion
filetype plugin on
set ofu=syntaxcomplete#Complete

set mouse=a

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer
