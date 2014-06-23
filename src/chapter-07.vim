" 7 Editing Your Vimrc
" http://learnvimscriptthehardway.stevelosh.com/chapters/07.html

" Editing Mapping

let mapleader = ","
" $MYVIMRC is empty for boot with `-u` option
nnoremap <leader>ev :<c-u>vsplit $MYVIMRC<cr>

" Exercise
"nnoremap <Leader>.e :<C-u>edit $MYVIMRC<Return>
"nnoremap <Leader>.s :<C-u>source $MYVIMRC<Return>

" help myvimrc

" unix
" $HOME/.vimrc
" $HOME/.vim/vimrc

" exrc option
" from current directory
" 1. .vimrc
" 2. _vimrc
" 3. .exrc
