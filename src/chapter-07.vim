" 7 Editing Your Vimrc
" http://learnvimscriptthehardway.stevelosh.com/chapters/07.html

" Editing Mapping

let mapleader = ","
" $MYVIMRC is empty with `-u` option
nnoremap <leader>ev :<c-u>vsplit $MYVIMRC<cr>
