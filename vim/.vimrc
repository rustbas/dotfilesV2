" gui settings
set guifont=JetBrains\ Mono:h12"
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

" Encoding
set encoding=utf-8

" no support with vi
set nocompatible

" Set leader key
let mapleader=' '

" Relative line number
set relativenumber

" Line&column highlighting
set cursorline
"set cursorcolumn

" Syntax highlighting 
syntax on

" Search settings
set hlsearch
set incsearch

" tabs and indents
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set smarttab
set autoindent

" fast scroll
set ttyfast

" cursor always on center
set so=30

" mouse 
set mouse=a

" system copybuffer
set clipboard=unnamedplus

" Autocomplete in shell
set wildmode=longest,list

" Fold by indents
set foldmethod=indent

" Plugins
call plug#begin("~/.config/vim/plugged")
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
call plug#end()

" NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeFileLines = 1 " Line number
let g:NERDTreeFilesIgnore = ['^__pycache__'] " Ignore dirs

" NerdCommenter

" Airline-themes
"let g:airline_theme='deus'

" Colorscheme
colorscheme molokai

"""""""""""
" HOTKEYS "
"""""""""""

"""""""""""""""""
" Common hotkey " 
"""""""""""""""""

" no highlighting
nnoremap <leader>h :nohlsearch<CR> 

" make 
nnoremap <leader>m :make<CR> 

" test
autocmd Filetype latex let @r="\\begin{Large}\n\\end{Large}"

" set transparency (MUST BE AFTER SETTING COLORSHCHEME!)
highlight Normal ctermbg=NONE
