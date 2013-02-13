"
" START VUNDLE CONFIGURATION
"
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle. Required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle "myusuf3/numbers.vim"
Bundle "tpope/vim-fugitive"
Bundle "scrooloose/nerdtree"
" vim-scripts repos
" non github repos
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"
" END VUNDLE CONFIGURATION
"


nnoremap <C-t> :NERDTreeToggle<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

syntax enable
set enc=utf-8
set background=dark

set cindent
set nowrap

set expandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2

map <F2> :w<CR>
imap <F2> <ESC>:w<CR>a

map <F3> :tabnew<CR>
imap <F3> <ESC>:tabnew<CR>

map <F5> :tabprev<CR>
imap <F5> <ESC>:tabprev<CR>a

map <F6> :tabnext<CR>
imap <F6> <ESC>:tabnext<CR>a

nmap <F8> <F2>:!php "%<.php"<CR>
imap <F8> <F2><ESC>:!php "%<.php"<CR>

nmap <F9> <F2>:!g++ -O2 -W -Wall -static -lm -o "%<" "%<.cpp"; time ./"%<"<CR>
imap <F9> <F2><ESC>:!g++ -O2 -W -Wall -static -lm -o "%<" "%<.cpp"; time ./"%<"<CR>

