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
set modeline
" always show status line
set laststatus=2
" set encoding to utf-8
set encoding=utf-8
" colorscheme
colorscheme cobaltish
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
  set guifont=Ubuntu\ Mono\ for\ Powerline\ 11
endif

"""""""""""""""""""""""""""""""""""""""""""
" FILETYPES
"""""""""""""""""""""""""""""""""""""""""""
"autocmd filetype javascript set omnifunc=javascriptcomplete#Completejs
"autocmd filetype html set omnifunc=htmlcomplete#Completetags
"autocmd filetype css set omnifunc=csscomplete#Completecss
"autocmd filetype xml set omnifunc=xmlcomplete#Completetags
"autocmd filetype php set omnifunc=phpcomplete#Completephp
"autocmd filetype c set omnifunc=ccomplete#Complete
"autocmd filetype cpp set omnifunc=omni#cpp#complete#Main

"""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""
" powerline
let g:Powerline_symbols = 'fancy'

" autocomplete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"""""""""""""""""""""""""""""""""""""""""""
" MAPPING
"""""""""""""""""""""""""""""""""""""""""""

nnoremap ; :
inoremap jj <esc>

" Redo
nnoremap r :redo<cr>

" Map the new <leader>
let mapleader = ','

" Buffers from other programs (Ctrl+c and Ctrl+v)
nnoremap <leader>p "+gp
nnoremap <leader>y "+yy

vnoremap <leader>y "+y
vnoremap <leader>p "+gp

" Select all. Same as Ctrl+a
nnoremap <leader>a ggVG

" Moving between buffers 
nnoremap <leader>m <C-w>
nnoremap <leader>n :NERDTreeToggle<cr>

" FuzzyFinder file search
nnoremap <leader>f :FufFile<cr>
nnoremap <leader>g :FufFile **/<cr>
nnoremap <leader>h :FufLine<cr>

" Current file directory
nnoremap <leader>cd :cd %:p:h<cr>
