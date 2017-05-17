if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set autoindent
set backspace=indent,eol,start

set hidden

syntax on
colorscheme gruvbox
set background=dark

set number

""TAB BEHAVIOR""
""Default to 4 spaces""
set expandtab
set shiftwidth=4
let &softtabstop = &shiftwidth


set ignorecase
set smartcase

set incsearch
set hlsearch

set laststatus=2
set ruler
set wildmenu

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif

if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))
  set shell=/bin/bash
endif

if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif
