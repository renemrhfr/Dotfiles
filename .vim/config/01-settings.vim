syntax on

colorscheme everforest
set termguicolors
set signcolumn=auto

set number
set relativenumber

set cursorline

set tabstop=4
set shiftwidth=4
set expandtab

set smartindent

" Show results as you type and highlight search
set incsearch
set hlsearch

" Case-insensitive unless uppercase is used
set ignorecase
set smartcase

" Active clicking and scrolling
set mouse=a

" Filetype detection
filetype on
filetype indent on

" File encodings
set encoding=utf-8
set fileencoding=utf-8

" Show command being typed in the bottom right
set showcmd

" Always show the status line
set laststatus=2

" Command-Line completion
set wildmenu
set wildmode=longest:full,full

" Keep 8 lines visible above/below cursor
set scrolloff=8

" Creates an undo file to persist undo history across sessions
set undofile
set undodir=~/.vim/undo

" Faster refresh rate (Default is 4000)
set updatetime=50


" Allow switching buffers without saving (otherwise Vim makes warning "no last
" write since..."
" set hidden

" --- Performance Optimizations ---
" Limit syntax highlighting for large files (improves performance)
set synmaxcol=50

" Disable swap files to avoid clutter (LazyVim avoids swap files)
set noswapfile


" FUZZY FINDER (Telescope alternative using built-in features)
" Search down into subfolders for fuzzy finding
set path+=**
" Ignore common directories
set wildignore+=**/node_modules/**,**/.git/**,**/target/**,**/*.class,**/__pycache__/**


set matchtime=2                 " Blink matching brackets for 0.2s
set matchpairs+=<:>             " Also match < and > (useful for HTML/Java generics)

" Show matching brackets/parentheses
set showmatch
hi MatchParen gui=bold guibg=#3c4841 guifg=#a7c080 cterm=bold ctermbg=none ctermfg=108

" Better command-line height for messages
set cmdheight=2

" Don't pass messages to completion menu
set shortmess+=c



" --- Status Line ---
" Simple status line showing file name, line/column, and file type
" set statusline=%F%m%r%h%w\ [%{&filetype}]\ %=%l:%c\ %P

set statusline=
set statusline+=%#StatusLineNC#\ %f\                " file path (dim)
"set statusline+=%#StatusLine#\ %m%r%h%w             " flags (bright)
set statusline+=%=                                  " switch to right side
set statusline+=%#StatusLine#\ %y\                 " filetype
set statusline+=\ %{&fenc?&fenc:&enc}\[%{&ff}\]\    " encoding+format
set statusline+=\ %p%%\ %l:%c\                     " % + line:col
