" General (NVIM defaults)
set updatetime=100
set nocompatible
set incsearch
set display=lastline
set history=10000
set autoread
set hlsearch
set showcmd
set ruler
set autoindent
set wildmenu
set smarttab
set ttyfast
set t_Co=256
syntax enable
filetype plugin indent on

" General (more)
scriptencoding utf-8
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set splitbelow
set splitright
set ignorecase
set smartcase
set scrolloff=1
set laststatus=1
set undolevels=50000
set undoreload=50000
set smartindent
set backup
set backupdir=~/.vim/backup
set backspace=indent,eol,start
set directory=~/.vim/swap
set viewdir=~/.vim/view
set undofile
set undodir=~/.vim/undo


" Bind clear search highlight to window redraw
nnoremap <C-l> :nohlsearch<CR><C-l>

" Place mouse at last location
autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
