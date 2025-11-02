syntax on
" Themes
colorscheme everforest
set termguicolors

" Re-Map Leader Key
let mapleader = " "
let maplocalleader = " "

set number
set relativenumber

set cursorline
set smoothscroll

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

" Show matching brackets/parentheses
set showmatch

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

" --- Java-Specific Settings ---
" Enable Java syntax highlighting (built-in)
au FileType java setlocal syntax=java

" Enable enhanced highlighting for Java
let java_highlight_functions = 1
let java_highlight_all = 1

" Set Java-specific indentation (4 spaces, consistent with Java conventions)
au FileType java setlocal tabstop=4 shiftwidth=4 expandtab

" Enable folding based on Java syntax (e.g., methods, classes)
au FileType java setlocal foldmethod=syntax
au FileType java setlocal foldlevelstart=1

" Map <leader>jd to jump to definition (using Vim's built-in tags, if available)
au FileType java nnoremap <leader>jd :tag <c-r><c-w><CR>
" Note: For <leader>jd to work, you need a tags file. Run `ctags -R .` in your project directory.

" Map <leader>jr to find references (approximated with search)
au FileType java nnoremap <leader>jr :vimgrep /<c-r><c-w>/j %<CR>:copen<CR>
" Opens quickfix list with matches for the word under cursor

" Highlight Java-specific keywords (enhance built-in highlighting)
au FileType java hi link javaIdentifier Identifier
au FileType java hi link javaType Type
au FileType java hi link javaStatement Statement
au FileType java hi link javaConstant Constant

" --- LazyVim-Inspired Keybindings ---
" Save file with <leader>w (mimics LazyVim's quick save)
nnoremap <leader>w :w<CR>

" Quit with <leader>q (mimics LazyVim's quick quit)
nnoremap <leader>q :q<CR>

" Buffer navigation (mimics LazyVim's [b and ]b for previous/next buffer)
nnoremap <leader>[ :bprevious<CR>
nnoremap <leader>] :bnext<CR>

" Split window navigation (mimics LazyVim's <C-h/j/k/l> for moving between splits)
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" Create splits with <leader>sv and <leader>sh (vertical/horizontal)
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

" Resize splits with <leader>= and <leader>- (mimics LazyVim's resizing)
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>_ :vertical resize -5<CR>

" Quickfix list navigation (mimics LazyVim's [q and ]q)
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>

" Toggle fold with <leader>z (mimics LazyVim's folding)
nnoremap <leader>z za

" Move lines up/down with <ALT-j>/<ALT-k> (mimics LazyVim's line movement)
nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv

" Center cursor after jumping (mimics LazyVim's zz for centering)
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" File Explorer with LEADER+e
nnoremap <leader>e :Explore<CR>

" --- Java-Specific Autocommands ---
" Auto-generate tags file on saving Java files (if ctags is installed)
"au BufWritePost *.java silent! !ctags -R .

" Set makeprg to compile Java files with javac
"au FileType java setlocal makeprg=javac\ %

" Map <leader>m to compile the current Java file
"au FileType java nnoremap <leader>m :make<CR>:copen<CR>

" Map <leader>r to run the Java program (assumes main class is the file name)
"au FileType java nnoremap <leader>r :!java %:r<CR>

" --- Status Line ---
" Simple status line showing file name, line/column, and file type
set statusline=%F%m%r%h%w\ [%{&filetype}]\ %=%l:%c\ %P

" --- Performance Optimizations ---
" Limit syntax highlighting for large files (improves performance)
set synmaxcol=300

" Disable swap files to avoid clutter (LazyVim avoids swap files)
set noswapfile

" --- Completion ---
" Enable basic completion with <C-n> (mimics LazyVim's completion)
set completeopt=menu,menuone
inoremap <C-n> <C-x><C-n>
inoremap <C-p> <C-x><C-p>

" --- Miscellaneous ---
" Map <leader>e to show errors (open quickfix list)
nnoremap <leader>xq :copen<CR>

" Map <leader>f to format (re-indent) the current buffer
nnoremap <leader>f gg=G<C-o>

" --- ThePrimeagen-Style Keymaps (Vim-compatible) ---

" Move selected lines up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Join lines without jumping
nnoremap J mzJ`z

" Keep cursor centered while scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Keep cursor centered when searching
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste without overwriting clipboard
xnoremap <leader>p "_dP

" Yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Copy from system clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Delete without overwriting clipboard
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Escape alternative
inoremap <C-c> <Esc>

" Disable Ex mode
nnoremap Q <nop>

" Quickfix navigation
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>zz

" Location list navigation
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" Quick rename current word (substitute word under cursor)
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Reload current vimrc (or sourced file)
nnoremap <leader><leader> :so %<CR>

" Better Netrw settings (built-in file explorer)
let g:netrw_banner = 0          " Hide the banner (cleaner look)
let g:netrw_liststyle = 3       " Tree view (like NvimTree/Neo-tree)
let g:netrw_browse_split = 4    " Open in previous window
let g:netrw_altv = 1            " Open splits to the right
let g:netrw_winsize = 25        " 25% width for explorer
let g:netrw_keepdir = 0         " Keep current directory synced
let g:netrw_localcopydircmd = 'cp -r'

" Toggle file explorer SIDEBAR with <leader>e
nnoremap <leader>e :Lexplore<CR>

" Open file explorer in current window
nnoremap <leader>E :Explore<CR>

" FUZZY FINDER (Telescope alternative using built-in features)
" Search down into subfolders for fuzzy finding
set path+=**
" Ignore common directories
set wildignore+=**/node_modules/**,**/.git/**,**/target/**,**/*.class,**/__pycache__/**

" Fuzzy file search with <leader>ff (like Telescope find_files)
nnoremap <leader>ff :find

" Search in current directory only
nnoremap <leader>fF :find %:h/

" Find in buffers (like Telescope buffers)
nnoremap <leader>fb :ls<CR>:b<Space>

" Grep search (like Telescope live_grep) - cursor positioned for search term
nnoremap <leader>fg :vimgrep //gj **/*<Left><Left><Left><Left><Left><Left><Left><Left>

" Grep for word under cursor
nnoremap <leader>fw :vimgrep /<C-r><C-w>/gj **/*<CR>:copen<CR>

" Recent files using oldfiles (like Telescope oldfiles)
nnoremap <leader>fr :browse oldfiles<CR>

" Enhanced matching
set matchtime=2                 " Blink matching brackets for 0.2s
set matchpairs+=<:>             " Also match < and > (useful for HTML/Java generics)

" Highlight matching parens more visibly
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta gui=bold guifg=magenta

" Always show sign column (prevents text jumping when signs appear)
set signcolumn=yes

" Better command-line height for messages
set cmdheight=2

" Don't pass messages to completion menu
set shortmess+=c

" Clear search highlighting with <Esc><Esc> or <leader>/
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" Search for visually selected text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Better quickfix window management
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>lc :lclose<CR>

" ============================================================================
" BUFFER MANAGEMENT (Tab-like workflow)
" ============================================================================
" Close buffer without closing window
nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>

" List and switch buffers easily
nnoremap <leader>bb :ls<CR>:b<Space>

" Delete all buffers except current
nnoremap <leader>bD :%bd<bar>e#<bar>bd#<CR>

" Simple auto-closing brackets
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap " ""<Left>
inoremap ' ''<Left>

" Java template command - inserts main class boilerplate
command! Psvm call s:InsertJavaMain()
function! s:InsertJavaMain()
    call append(line('.')-1, [
        \ 'class Test {',
        \ '    public static void main(String[] args) {',
        \ '        ',
        \ '    }',
        \ '}'
        \ ])
endfunction

" Compile and run Java (combined command)
command! RunJava execute '!javac % && java %:r'
nnoremap <leader>rj :RunJava<CR>

" ============================================================================
" ENHANCED STATUS LINE (more informative)
" ============================================================================
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %f\                       " File path
set statusline+=%#LineNr#
set statusline+=\ %m%r%h%w                  " Modified/readonly flags
set statusline+=%=                          " Right side
set statusline+=%#CursorColumn#
set statusline+=\ %y                        " File type
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%                      " Percentage through file
set statusline+=\ %l:%c                     " Line:column
set statusline+=\

" ============================================================================
" TERMINAL MODE ENHANCEMENTS (Vim 8+)
" ============================================================================
if has('terminal')
    " Open terminal in split
    nnoremap <leader>tt :terminal<CR>
    nnoremap <leader>tv :vertical terminal<CR>
endif
