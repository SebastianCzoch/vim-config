"""""""""""""""""""""""""""""""""""""""""""
" .vimrc
" Author: Wojciech Inglot 
" Mail: wojciech@inglot.net.pl
" Based on many other vimrc found over the internet
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
" Always show status line
set laststatus=2
" Set encoding to UTF-8
set encoding=utf-8
" Set tags directory
set tags+=$HOME/.vim/tags
" Colorscheme
colorscheme badwolf
" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
" Lots of cool vim things
set nocompatible
" More powerfull backspace
set backspace=2
" Keep 50 lines of command history
set history=100
" Show cursor position all the time
set ruler
" Files with lower priority
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" Show currently typed command
set showcmd
" Copyindent from prev line
set autoindent
" Spaces instead of tab character
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
" Spellcheck
if version >= 700
   set spl=pl spell
   set nospell
endif
" Cool tab completion
set wildmenu
set wildmode=list:longest,full
" Mouse support
set mouse=a
" Line numbers
set number
" Ignore case and smartcase
set ignorecase
set smartcase
" Incremental search and highlight
set incsearch
set hlsearch

" GUI stuff
if has('gui_running')
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
  set guioptions-=m
  set guioptions-=T
endif

"""""""""""""""""""""""""""""""""""""""""""
" FILETYPES
"""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"""""""""""""""""""""""""""""""""""""""""""
" FILETYPES
"""""""""""""""""""""""""""""""""""""""""""
" Notes
let g:notes_directory = '~/Pulpit/AGH/Notatki'
let g:notes_suffix = '.note'
let g:notes_rules_text = 1

" Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""""""""""""""""
" MAPPING
"""""""""""""""""""""""""""""""""""""""""""

nnoremap ; :
inoremap jj <Esc>
let mapleader = ','
nnoremap <leader>p "+gp
nnoremap <leader>n :NERDTreeToggle<cr>
