set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required


syntax on
set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='kirik'


set showcmd
set ignorecase
set smartcase
set expandtab
set smarttab
set hlsearch
set number
set noswapfile
set autoindent

set shiftwidth=4
set softtabstop=4
set scrolloff=8
set sidescrolloff=10

set timeoutlen=1000
set ttimeoutlen=0

" for cross-terminal clipboard support
set clipboard=unnamed
set clipboard^=unnamedplus

source ~/.vim/colors/airblader.vim

" this next line is needed to enable your custom colors:
syntax enable
