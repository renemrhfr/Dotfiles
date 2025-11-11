" Re-Map Leader Key
let mapleader = " "
let maplocalleader = " "

" Map <leader>jr to find references (approximated with search)
au FileType java nnoremap <leader>jr :vimgrep /<c-r><c-w>/j %<CR>:copen<CR>

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


" --- Completion ---
" Enable basic completion with <C-n> (mimics LazyVim's completion)
set completeopt=menu,menuone
inoremap <C-n> <C-x><C-n>
inoremap <C-p> <C-x><C-p>


" Toggle file explorer SIDEBAR with <leader>e
nnoremap <leader>e :Lexplore<CR>

" Open file explorer in current window
nnoremap <leader>E :Explore<CR>


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

" Quick buffer switching by number
nnoremap <leader>1 :buffer 1<CR>
nnoremap <leader>2 :buffer 2<CR>
nnoremap <leader>3 :buffer 3<CR>
nnoremap <leader>4 :buffer 4<CR>
nnoremap <leader>5 :buffer 5<CR>
nnoremap <leader>6 :buffer 6<CR>
nnoremap <leader>7 :buffer 7<CR>
nnoremap <leader>8 :buffer 8<CR>
nnoremap <leader>9 :buffer 9<CR>
