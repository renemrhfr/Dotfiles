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


" --- Java-Specific Settings ---
au FileType java setlocal syntax=java

" Enable enhanced highlighting for Java
let java_highlight_functions = 1
let java_highlight_all = 1

" Set Java-specific indentation (4 spaces, consistent with Java conventions)
au FileType java setlocal tabstop=4 shiftwidth=4 expandtab

" Enable folding based on Java syntax (e.g., methods, classes)
au FileType java setlocal foldmethod=syntax

" Highlight Java-specific keywords (enhance built-in highlighting)
au FileType java hi link javaIdentifier Identifier
au FileType java hi link javaType Type
au FileType java hi link javaStatement Statement
au FileType java hi link javaConstant Constant

