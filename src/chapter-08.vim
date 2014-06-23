" 8 Abbreviations
" http://learnvimscriptthehardway.stevelosh.com/chapters/08.html

echo "Hello, world!"

" help iabbrev
" ia[bbrev]
" inua[bbrev]
iabbrev adn and
iabbrev waht what
iabbrev tehn then

"abclear
"ia teht then

" non-keyword charatcter
" set iskeyword?
" iskeyword=@,48-57,_,192-255,#
" help isfname
" without letter,number and underscore

iabbrev @@ grauwoelfchen@gmail.com
iabbrev ccopy Copyright 2014 Yasuhiro Asaka, all right reserved.

inoremap ssig --<cr>grauwoelfchen<cr>grauwoelfchen@gmail.com
iunmap ssig
iabbrev ssig --<cr>grauwoelfchen<cr>grauwoelfchen@gmail.com


" Exercise
" try
iabbrev <expr> idn strftime('%a, %d. %b. %Y')
iabbrev <expr> idt strftime('%Y-%m-%dT%H:%M:%S') 
