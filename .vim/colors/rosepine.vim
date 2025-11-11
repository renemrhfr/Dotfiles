" rosepine.vim
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "rosepine"

" Define colors
let s:base = "#191724"
let s:surface = "#1f1d2e"
let s:overlay = "#26233a"
let s:text = "#e0def4"
let s:love = "#eb6f92"
let s:pine = "#31748f"
let s:gold = "#f6c177"
let s:rose = "#ebbcba"
let s:muted = "#6e6a86"
let s:highlight = "#2a2837"

" Set background
set background=dark

" Apply highlights using execute
execute 'hi Normal guifg=' . s:text . ' guibg=' . s:base . ' ctermfg=White ctermbg=Black'
execute 'hi Comment guifg=' . s:muted . ' ctermfg=Gray'
execute 'hi Constant guifg=' . s:gold . ' ctermfg=Yellow'
execute 'hi String guifg=' . s:gold . ' ctermfg=Yellow'
execute 'hi Identifier guifg=' . s:pine . ' ctermfg=Cyan'
execute 'hi Statement guifg=' . s:love . ' ctermfg=Red'
execute 'hi PreProc guifg=' . s:rose . ' ctermfg=Magenta'
execute 'hi Type guifg=' . s:pine . ' ctermfg=Cyan'
execute 'hi Special guifg=' . s:rose . ' ctermfg=Magenta'
execute 'hi Underlined guifg=' . s:text . ' gui=underline ctermfg=White cterm=underline'
execute 'hi Error guifg=' . s:love . ' guibg=' . s:highlight . ' ctermfg=Red ctermbg=DarkRed'
execute 'hi Todo guifg=' . s:gold . ' guibg=' . s:highlight . ' ctermfg=Yellow ctermbg=DarkYellow'
execute 'hi CursorLine guibg=' . s:surface . ' ctermbg=236'
execute 'hi LineNr guifg=' . s:muted . ' ctermfg=Gray'
execute 'hi CursorLineNr guifg=' . s:text . ' ctermfg=White'
execute 'hi Visual guibg=' . s:highlight . ' ctermbg=238'
execute 'hi StatusLine guifg=' . s:text . ' guibg=' . s:surface . ' ctermfg=White ctermbg=236'
execute 'hi StatusLineNC guifg=' . s:muted . ' guibg=' . s:surface . ' ctermfg=Gray ctermbg=236'
execute 'hi VertSplit guifg=' . s:overlay . ' guibg=' . s:overlay . ' ctermfg=Gray ctermbg=Gray'
execute 'hi Pmenu guifg=' . s:text . ' guibg=' . s:surface . ' ctermfg=White ctermbg=236'
execute 'hi PmenuSel guifg=' . s:text . ' guibg=' . s:highlight . ' ctermfg=White ctermbg=238'
execute 'hi Function guifg=' . s:pine . ' ctermfg=Cyan'
execute 'hi Keyword guifg=' . s:love . ' ctermfg=Red'
execute 'hi Operator guifg=' . s:rose . ' ctermfg=Magenta'

" netrw highlights
execute 'hi netrwDir guifg=' . s:pine . ' guibg=' . s:base . ' ctermfg=Cyan'
execute 'hi netrwExe guifg=' . s:gold . ' guibg=' . s:base . ' ctermfg=Yellow'
execute 'hi netrwSymLink guifg=' . s:rose . ' guibg=' . s:base . ' ctermfg=Magenta'
execute 'hi netrwPlain guifg=' . s:text . ' guibg=' . s:base . ' ctermfg=White'
execute 'hi netrwMarkFile guifg=' . s:gold . ' guibg=' . s:highlight . ' ctermfg=Yellow ctermbg=238'
execute 'hi netrwTreeBar guifg=' . s:muted . ' guibg=' . s:base . ' ctermfg=Gray'


