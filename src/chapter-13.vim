" 13 Buffer-Local Abbreviation
" http://learnvimscriptthehardway.stevelosh.com/chapters/13.html

:iabbrev <buffer> --- &mdand;
"Hello &mdand; world.

" 13.1
:autocmd FileType python     :iabbrev <buffer> iff if:<left>
:autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
