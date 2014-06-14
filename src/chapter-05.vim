" 5 Strict Mapping
" http://learnvimscriptthehardway.stevelosh.com/chapters/05.html


echo "Delete this line"

" vim run dd with \
nmap - dd
nmap \ -

" remove mappings
"help nunmap
nunmap -
nunmap \

" 5.1
" it does not stop
"nmap dd O<esc>jddk
