" Re-Map Leader Key
let mapleader = " "
let maplocalleader = " "

" Map <leader>jr to find references (approximated with search)
nnoremap <leader>jr :vimgrep /<c-r><c-w>/j %<CR>:copen<CR>

" Save file with <leader>w
nnoremap <leader>w :w<CR>

" Quit with <leader>q
nnoremap <leader>q :q<CR>

" Create splits with <leader>sv and <leader>sh (vertical/horizontal)
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

" Resize splits with <leader>= and <leader>
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>_ :vertical resize -5<CR>

" Quickfix list navigation
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>

" Toggle fold with <leader>z
nnoremap <leader>z za

" Move lines up/down with <CTRL-j>/<CTRL-k>
nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv

" Center cursor after jumping
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" File Explorer with LEADER+e
nnoremap <leader>e :Explore<CR>

" Map <leader>xq to show errors (open quickfix list)
nnoremap <leader>xq :copen<CR>

" Map <leader>f to format (re-indent) the current buffer
nnoremap <leader>f gg=G<C-o>

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

" Quick rename current word (substitute word under cursor)
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Reload current vimrc (or sourced file)
nnoremap <leader><leader> :so %<CR>

" Enable basic completion with <C-n>
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

" Grep search - cursor positioned for search term
nnoremap <leader>fg :vimgrep //gj **/*<Left><Left><Left><Left><Left><Left><Left><Left>

" Grep for word under cursor
nnoremap <leader>fw :vimgrep /<C-r><C-w>/gj **/*<CR>:copen<CR>

" Recent files using oldfiles (like Telescope oldfiles)
nnoremap <leader>fr :browse oldfiles<CR>

" Clear search highlighting with <Esc><Esc> or <leader>/
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" Search for visually selected text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" ============================================================================
" BUFFER MANAGEMENT (Tab-like workflow)
" ============================================================================
" Close buffer without closing window
nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>

" List and switch buffers easily
nnoremap <leader>bb :ls<CR>:b<Space>

" Delete all buffers except current
nnoremap <leader>bD :%bd<bar>e#<bar>bd#<CR>

" Buffer navigation
nnoremap <leader>[ :bprevious<CR>
nnoremap <leader>] :bnext<CR>

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
