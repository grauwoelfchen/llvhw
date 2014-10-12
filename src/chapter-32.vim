" 32 Case Study: Grep Operator, Part One
" http://learnvimscriptthehardway.stevelosh.com/chapters/32.html

echo "max = 10"
echo ""
echo "print \"Starting\"  "
echo ""
echo "for i in range(max):"
echo "    print \"Counter:\", i"
echo ""
echo "print \"Done\""

"help :grep
"help :make
" if [!] is not given the first error is jumped to.
" You can now move through the errors with commands like `:cnext` and
" `:cprevious`
"help :clist
"help quickfix-window
"  :cope[n]
"  :ccl[ose

"help :vimgrep

" grep operator

"help
"nnoremap <leader>g :grep -R <cword> .<cr>
"  <cWORD> is replaced with the WORD under the cursor
"  It will be matched WORD such as foo-bar
"nnoremap <leader>g :grep -R <cWORD> .<cr>
"  Most shells treat single-quated text as literal
"nnoremap <leader>g :grep -R '<cWORD>' .<cr>
" escape for word such as `that's`
"nnoremap <leader>g :execute "grep -R '<cWORD>' ."<cr>
"nnoremap <leader>g :execute "grep -R " . shellescape("<cWORD>") . " ."<cr>

"help escape()
"help shellescape()

"echom shellescape("<cWORD>") ;; => '<cWORD>'
"echom expand("<cWORD>")
"echom shellescape(expand("<cWORD>"))

"nnoremap <leader>g :exe "grep -R " . shellescape(expand("<cWORD>")) . " ."<cr>

" this dose not jump to first result
"nnoremap <leader>g :exe "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>

" open quickfix-window
"nnoremap <leader>g :exe "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

" with silent
"nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

"help :silent
