" 12 Autocommands
" http://learnvimscriptthehardway.stevelosh.com/chapters/12.html

echo "Learn Vimscript the Hard Way"

autocmd BufNewFile * :write
" autocmd EVENT PATTERN COMMAND

" apply only *.txt file
autocmd BufNewFile *.txt :write

" 12.2
" BufWritePre: The event will be checked just before write any file
autocmd BufWritePre *.html :normal gg=G

" 12.3 Multiple Events
autocmd BufWritePre,BufRead *.html :normal gg=G
autocmd BufNewFile,BufRead *.html setlocal nowrap

" 12.4
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

" help autocmd-events
"
" * No white space in event list
" * The command apply to all events in list
" * pre and post
