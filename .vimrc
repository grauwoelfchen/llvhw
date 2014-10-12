set nocompatible
set nobackup
set noswapfile
set showmode
set showcmd
set autoread
set ttyfast
set vb t_vb=
set hidden

set noimcmdline
set iminsert=0

set splitbelow
set splitright

set autoindent
syntax enable

let g:mapleader = ","
let g:maplocalleader = "\\"

noremap ; :
noremap : ;

noremap j gj
noremap k gk
inoremap hl <Esc>
inoremap jk <Esc>
inoremap <Esc> <Nop>

filetype off
"" neobundle
if &runtimepath !~ '/neobundle.vim'
  set runtimepath+=$HOME/.vim/bundle/neobundle.vim
endif
call neobundle#rc(expand($HOME.'/.vim/bundle/'))

NeoBundle 'thinca/vim-quickrun', {
\  'depends': [ 'Shougo/vimproc' ]
\}
filetype plugin indent on

"" quickrun
let g:quickrun_config = {}
let g:quickrun_config['_'] = {
\  'hook/time/enable': 0,
\  'runner': 'vimproc',
\  'runner/vimproc/updatetime': 10,
\  'split': 'vertical'
\}
