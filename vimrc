"""""""""""""""""""""""""""""""""""""""""""
" .vimrc
" Author: Wojciech Inglot 
" Mail: wojciech@inglot.net.pl
" Based on many other vimrc found over the internet.
"""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""
" PATHOGEN
"""""""""""""""""""""""""""""""""""""""""""
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" enable file detection
filetype plugin indent on
syntax on

"""""""""""""""""""""""""""""""""""""""""""
" GENERAL
"""""""""""""""""""""""""""""""""""""""""""
" turn off modelines to prevent securuty vulnerability
set nomodeline
" always show status line
set laststatus=2
" set encoding to utf-8
set encoding=utf-8
" set tags directory
set tags+=~/.vim/tags/cpp
" colorscheme
colorscheme vombato
" automatically cd into the directory that the file is in
autocmd bufenter * execute "chdir ".escape(expand("%:p:h"), ' ')
" lots of cool vim things
set nocompatible
" more powerfull backspace
set backspace=2
" keep 100 lines of command history
set history=100
" show cursor position all the time
set ruler
" files with lower priority
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" show currently typed command
set showcmd
" copyindent from prev line
set autoindent
" spaces instead of tab character
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
" spellcheck
if version >= 700
   set spl=pl spell
   set nospell
endif
" cool file name tab completion
set wildmenu
set wildmode=list:longest,full
" mouse support
set mouse=a
" line numbers
set number
" ignore case and smartcase
set ignorecase
set smartcase
" incremental search and highlight
set incsearch
set hlsearch

" gui stuff
if has('gui_running')
  map <s-insert> <middlemouse>
  map! <s-insert> <middlemouse>
  set guioptions-=m
  set guioptions-=T
  set guifont=Ubuntu\ Mono\ for\ Powerline\ 13
endif

"""""""""""""""""""""""""""""""""""""""""""
" FILETYPES
"""""""""""""""""""""""""""""""""""""""""""
autocmd filetype python set omnifunc=pythoncomplete#Complete
autocmd filetype javascript set omnifunc=javascriptcomplete#Completejs
autocmd filetype html set omnifunc=htmlcomplete#Completetags
autocmd filetype css set omnifunc=csscomplete#Completecss
autocmd filetype xml set omnifunc=xmlcomplete#Completetags
autocmd filetype php set omnifunc=phpcomplete#Completephp
autocmd filetype c set omnifunc=ccomplete#Complete
autocmd filetype cpp set omnifunc=omni#cpp#complete#Main

"""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""
" notes
let g:notes_directory = '~/Pulpit/AGH/Notatki'
let g:notes_suffix = '.note'
let g:notes_rules_text = 1

" powerline
let g:Powerline_symbols = 'fancy'

" omnicppcomplete
let OmniCpp_MayCompleteDot = 1 
let OmniCpp_MayCompleteArrow = 1 
let OmniCpp_MayCompleteScope = 1
let OmniCpp_NamespaceSearch = 2
let OmniCpp_SelectFirstItem = 2
let OmniCpp_ShowPrototypeInAbbr = 1

autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone

"""""""""""""""""""""""""""""""""""""""""""
" MAPPING
"""""""""""""""""""""""""""""""""""""""""""

nnoremap ; :
inoremap jj <esc>
let mapleader = ','
" Buffers from other programs (Ctrl+c and Ctrl+v)
nnoremap <leader>p "+gp
nnoremap <leader>y "+yy
vnoremap <leader>y "+y
" Select all. Same as Ctrl+a
nnoremap <leader>a VG

nnoremap <leader>n :NERDTreeToggle<cr>
