" 31 Basic Regular Expressions
" http://learnvimscriptthehardway.stevelosh.com/chapters/31.html

echo "max = 10"
echo ""
echo "print \"Starting\"  "
echo ""
echo "for i in range(max):"
echo "    print \"Counter:\", i"
echo ""
echo "print \"Done\""

set hlsearch incsearch

"execute "normal! gg/print\<cr>"
"execute "normal! gg/print\<cr>n"
"execute "normal! G?print\<cr>"

" E486: Pattern not found:
"execute "normal! gg/for .+ in .+:\<cr>"
"execute "normal! gg/for .\\+ in .\\+:\<cr>"
"execute 'normal! gg/for .\+ in .\+:\<cr'

" Vim has 4 different modes of parsing regular expressions

"execute "normal! gg" . '/for .\+ in .\+:' . "\<cr>"

" 31.5 Very Magic
"execute "normal! gg" . '/\vfor .+ in .+:' . "\<cr>"
" `\v` tells vim to use very magic

"help magic
" \m magic
" \M nomagic
" \v very magic '0' - '9', 'a' - 'z', 'A' - 'Z' and '_' have special meaning
" \V very nomagic

"help pattern-overview
"help match

nnoremap / /\v
nnoremap <leader>w :match Error /\v\s+$/<cr>
nnoremap <leader>W :%s/  *$//<cr>

"help nohlsearch

nnoremap <silent> <M-h> :<C-u>nohlsearch<CR>
nnoremap <silent> <M-l> :<C-u>nohlsearch<CR><C-l>
