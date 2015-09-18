" 13 Buffer-Local Abbreviation
" http://learnvimscriptthehardway.stevelosh.com/chapters/13.html

iabbrev <buffer> --- &mdash;
"Hello &mdand; world.

" 13.1
autocmd FileType python     :iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>

" 13.2
iabbrev <buffer> return return;
" disable old one as training
iabbrev <buffer> return NOPENOPENOPE
