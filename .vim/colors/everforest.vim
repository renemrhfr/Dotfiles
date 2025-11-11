" everforest.vim
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "everforest"

" Define colors
let s:bg = "#2b3339"
let s:fg = "#d3c6aa"
let s:red = "#e67e80"
let s:orange = "#e69875"
let s:yellow = "#dbbc7f"
let s:green = "#a7c080"
let s:aqua = "#83c092"
let s:blue = "#7fbbb3"
let s:purple = "#d699b6"
let s:gray = "#7a8478"
let s:bg_dim = "#323d43"
let s:bg_visual = "#3c474d"

" Set background
set background=dark

" Apply highlights using execute
execute 'hi Normal guifg=' . s:fg . ' guibg=' . s:bg . ' ctermfg=White ctermbg=Black'
execute 'hi Comment guifg=' . s:gray . ' ctermfg=Gray'
execute 'hi Constant guifg=' . s:orange . ' ctermfg=208'
execute 'hi String guifg=' . s:green . ' ctermfg=Green'
execute 'hi Identifier guifg=' . s:blue . ' ctermfg=Cyan'
execute 'hi Statement guifg=' . s:red . ' ctermfg=Red'
execute 'hi PreProc guifg=' . s:purple . ' ctermfg=Magenta'
execute 'hi Type guifg=' . s:aqua . ' ctermfg=Cyan'
execute 'hi Special guifg=' . s:purple . ' ctermfg=Magenta'
execute 'hi Underlined guifg=' . s:fg . ' gui=underline ctermfg=White cterm=underline'
execute 'hi Error guifg=' . s:red . ' guibg=' . s:bg_visual . ' ctermfg=Red ctermbg=DarkRed'
execute 'hi Todo guifg=' . s:yellow . ' guibg=' . s:bg_visual . ' ctermfg=Yellow ctermbg=DarkYellow'
execute 'hi CursorLine guibg=' . s:bg_dim . ' ctermbg=236'
execute 'hi LineNr guifg=' . s:gray . ' ctermfg=Gray'
execute 'hi CursorLineNr guifg=' . s:fg . ' ctermfg=White'
execute 'hi Visual guibg=' . s:bg_visual . ' ctermbg=238'
execute 'hi StatusLine guifg=' . s:fg . ' guibg=' . s:bg_dim . ' ctermfg=White ctermbg=236'
execute 'hi StatusLineNC guifg=' . s:gray . ' guibg=' . s:bg_dim . ' ctermfg=Gray ctermbg=236'
execute 'hi VertSplit guifg=' . s:bg_dim . ' guibg=' . s:bg_dim . ' ctermfg=Gray ctermbg=Gray'
execute 'hi Pmenu guifg=' . s:fg . ' guibg=' . s:bg_dim . ' ctermfg=White ctermbg=236'
execute 'hi PmenuSel guifg=' . s:fg . ' guibg=' . s:bg_visual . ' ctermfg=White ctermbg=238'
execute 'hi Function guifg=' . s:aqua . ' ctermfg=Cyan'
execute 'hi Keyword guifg=' . s:red . ' ctermfg=Red'
execute 'hi Operator guifg=' . s:purple . ' ctermfg=Magenta'

" netrw highlights
execute 'hi netrwDir guifg=' . s:blue . ' guibg=' . s:bg . ' ctermfg=Cyan'
execute 'hi netrwExe guifg=' . s:green . ' guibg=' . s:bg . ' ctermfg=Green'
execute 'hi netrwSymLink guifg=' . s:purple . ' guibg=' . s:bg . ' ctermfg=Magenta'
execute 'hi netrwPlain guifg=' . s:fg . ' guibg=' . s:bg . ' ctermfg=White'
execute 'hi netrwMarkFile guifg=' . s:yellow . ' guibg=' . s:bg_visual . ' ctermfg=Yellow ctermbg=238'
execute 'hi netrwTreeBar guifg=' . s:gray . ' guibg=' . s:bg . ' ctermfg=Gray'
