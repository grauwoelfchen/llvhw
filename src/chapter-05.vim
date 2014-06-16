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
" it does not stop until <C-c>
nmap dd O<esc>jddk
nunmap dd

" 5.2
" 5.3

nmap x dd
" ih delete current char. because `*noremap`
nnoremap \ x
" always use nonrecursive variants

" 5.4 Exercises
"help unmap
":num[ap]

"nmap \ dd
nnoremap \ dd
"vmap \ U
vnoremap \ U
"imap <c-d> <esc>ddi
inoremap <c-d> <esc>ddi
"imap <c-u> <esc>viwU`]a
inoremap <c-u> <esc>viwU`]a
inoremap <c-u> <c-o>viwU<esc>`]a
inoremap <c-u> <c-o>viwU<c-o>`]<c-o>a
