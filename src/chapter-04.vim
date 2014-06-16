" 4 Modal Mapping
" http://learnvimscriptthehardway.stevelosh.com/chapters/04.html

" nmap, vmap, imap

echo 'Delete this line'
echo 'Change this to uppercase'

nmap \ dd
vmap \ U

" 4.1
" The mapping the same key to do different this depending on which mode user is,
" may be bad idea.
" e.g. help i_CTRL-U

" 4.2
echo ""
echo 'Delete this line at isert mode'

" doesn't work. just puts two ds
imap <c-d> dd
" after delete, backs to normal mode
imap <c-d> <esc>dd
" It works expectedly :) i brings back to insert mode
imap <c-d> <esc>ddi

" 4.3
" problem at first char of word
imap <c-u> <esc>viwUi
imap <c-u> <esc>viwU`]a
" doesn't work, after U <c-o> brings to back insert mode
"imap <c-u> <c-o>viwU`]ia
" <esc> moves cursor to out of words from first char of word
" cursol is placed by `] last inserted character in this case
" sometimes cursor blinks
imap <c-u> <c-o>viwU<esc>`]a
" i<c-u><c-o>a<c-u><c-o>a<c-u>...
imap <c-u> <c-o>viwU<c-o>`]<c-o>a

"help `
"help ]
"help `]
"imap <c-u> <esc>gUiw`]a

nmap <c-u> viwU

" it brings cursor to first char
" U at visual mode
"help v_U

