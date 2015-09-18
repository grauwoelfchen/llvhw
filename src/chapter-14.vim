" 14 Autocommand Groups
" http://learnvimscriptthehardway.stevelosh.com/chapters/14.html

"autocmd BufWrite * :echom "Writing buffer!"
"write
"messages
" two separate autocommands will be created
"autocmd BufWrite * :echom "Writing buffer!"

"autocmd BufWrite * :sleep 200m
"autocmd BufWrite * :sleep 200m
"autocmd BufWrite * :sleep 200m

" in new vim instance
augroup testgroup
  autocmd BufWrite * :echom "Foo"
  autocmd BufWrite * :echom "Bar"
augroup END

" this is also combined
augroup testgroup
  autocmd BufWrite * :echom "Baz"
augroup END

" with clear
augroup testgroup
  autocmd!
  autocmd BufWrite * :echom "Cats"
augroup END

" 14.4 Using Autocommands in Your Vimrc
augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

" Exercises
" * When group is not specified, Vim uses the default group
" * The default group does not have name
" * :doautocmd, :doautoall
" * The group name can contain any chars without space
" * 'end' is reserved
"help autocmd-groups

augroup uncompress
  au!
  au BufEnter *.gz %!gunzip
augroup END
