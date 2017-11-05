
syntax on 
filetype off
filetype plugin indent on 
"filetype plugin on


"for ctags"
set noautochdir

execute pathogen#infect()

"for indenting C files"
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
set softtabstop=4

set smarttab

set nocompatible 
set modelines=0

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline "give u a lenghty cursor for the current line 
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set undofile
     
   "the folowing are to handle searches
let mapleader = ","
"nnoremap / /\v ""hdon't know clearly for what purpose these are needed 
"vnoremap / /\v
set ignorecase
set smartcase
"set gdefault  -- by enabling this we can replace the word in the entire file 
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

  "the following are to handle the long lines correctly
set wrap
set textwidth=72 
autocmd Filetype gitcommit setlocal spell textwidth=72
set formatoptions=qrn1
 "set colorcolumn=150 "this command generates a red at coloumn length given 
 
  "the following will help vim beginners to use hjkl keys rather than up and down arrows 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

  "the following will help to ignore F1 key which u may use instead of using Esc key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

  "to replace ':' key with ';' and make a key easier to save a file or entering keys"
nnoremap ; :

  "to use jj for emulating Esc key functionality to return to normal mode form insert mode
inoremap jj <ESC>

  "also there are custom 'leader' functions which u can use to make your own functions  
  "will write some of my own later 

  "shortcut to split screen vertically ',w'
nnoremap <leader>w <C-w>v<C-w>l

  "to navigate among the split screens use ctrl+ h,j,k,l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

  "should install plugins 
  "Ack
  "YankRing
