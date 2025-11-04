
set showtabline=2  " Always show tabline

" Custom tabline function to display buffers
function! MyTabLine()
    let s = ''
    for i in range(1, bufnr('$'))
        " Skip unlisted buffers
        if !buflisted(i)
            continue
        endif
        
        " Highlight active buffer
        if i == bufnr('%')
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        
        " Add buffer number
        let s .= ' ' . i . ':'
        
        " Add filename (tail only)
        let bufname = fnamemodify(bufname(i), ':t')
        if bufname == ''
            let bufname = '[No Name]'
        endif
        let s .= bufname
        
        " Add modified flag
        if getbufvar(i, "&modified")
            let s .= ' [+]'
        endif
        
        let s .= ' '
    endfor
    
    " Fill the rest with TabLineFill
    let s .= '%#TabLineFill#'
    return s
endfunction

set tabline=%!MyTabLine()

hi TabLine guifg=#7a8478 guibg=#2b3339 gui=none
hi TabLineSel guifg=#a7c080 guibg=#414b50 gui=bold
hi TabLineFill guibg=#232a2e
