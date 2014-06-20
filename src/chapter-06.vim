" 6 Leaders
" http://learnvimscriptthehardway.stevelosh.com/chapters/06.html

" normaly these keys are not needed
" -,H,L,<space>,<cr>,<bs>

echo "Delete this line"
echo "Next line"

"nnoremap -d dd
" this doesn't work expectedly at the end line in buffer
"nnoremap -c ddO
"nnoremap -c ddi
" this doesn't work expectedly without at the end line
"nnoremap -c ddo

"let mapleader = "-"
let mapleader = ","

" why use <leader>
" * it make it easy to change later
" * someone can understnad what it is, and copy immediatoly
" * many plugins use <leader> for its key-mapping

nnoremap <leader>d dd

" this does not have any effect against above mapping <leader>d
let mapleader = "\\"
" \c
noremap <leader>c ddO

"let localleader = "\\"

" help mapleader
" if "mapleader" is not set or empty, a backslash is use instead.
" "mapleader" is used at the moment the mapping is defined

" help localleader
" in global plugin, <leader> should be used
" in filetype plugin, <localreader> should be used

" if <leader> and <localreader> is not equal (can be equal), it reduces
" the chance of clash of mappings. (there is a smaller chance)



