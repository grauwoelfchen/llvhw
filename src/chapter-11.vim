" 11 Buffer-Local Options and Mappings
" http://learnvimscriptthehardway.stevelosh.com/chapters/11.html

echo "Learn Vimscript the Hard Way"

nnoremap <leader>d dd
nnoremap <buffer> <leader>x dd

" <buffer> is bad form, use <localeader>

setlocal wrap
setlocal nowrap

setlocal number
setlocal nonumber

" help
" setl[ocal]

" first mapping more specific than second
nnoremap <buffer> Q x
nnoremap Q dd

" help local-options
"
" when splitting a window, the local options are copied to the new window.
" when editing a new buffer, its local option values must be initialied.

" :set changes local and global option values.
" :setlocal changes only local option value.

" help setl[ocal]

" help maplocal
" <localeader> uses maplocalleader, instead of mapleader

" I will try, for now
"
" let g:mapleader ","
" let g:maplocalleader "\\"
