
set nocompatible  " .vimrc file exists, vim will start in nocompatible mode.

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai                 " does auto indent
set number  
set hlsearch
set ruler
highlight Comment ctermfg=green


"additional settings start from here
set showcmd            " to show commands available in VIM; to use cmds start typing ':'
set encoding=utf-8     " the encoding that is displayed 


"for searching in a file 
set ignorecase          " case insensitive
set smartcase           " use case if any caps used 
set incsearch           " show match as search proceeds
set showmatch
set hlsearch            " search highlighting


"settings for text width, line breaks etc 
set wrap                "  enforcing wrapping of text 
set textwidth=72        "  specifying width of text 
set colorcolumn=74      "  specifying the colorcolumn width 
set wrapmargin=0        "  do not know but it works  
set linebreak           "  breaks line, instead of having a single line for displaying  
set showbreak=..        "  shows a symbols specified when a line has been wrapped 
set nolist              "  don't show any symbols at the end of a line we will use line number to figure that out 
set formatoptions+=t    "  to wrap text on fly while typing 
autocmd VimResized * | set columns=72  " to handle column width when terminals are resized 


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

let mapleader = ","  "mapping leader key to ',' 

"shortcut to split screen vertically ',w'
nnoremap <leader>w <C-w>v<C-w>l

"to navigate among the split screens use ctrl+ h,j,k,l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l




