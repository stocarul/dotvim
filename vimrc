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

" original repos on github
Bundle "myusuf3/numbers.vim"
Bundle "tpope/vim-fugitive"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "evidens/vim-twig"
Bundle "vim-scripts/easytags.vim"
Bundle "tomtom/checksyntax_vim"
Bundle "Raimondi/delimitMate"
Bundle "spf13/PIV"

Bundle "vim-scripts/L9"
Bundle "vim-scripts/FuzzyFinder"
Bundle "ervandew/supertab"

" Snipmate's dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
" Snipmate
Bundle "garbas/vim-snipmate"

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

syntax enable
set enc=utf-8
set background=dark

" Set Auto-indent options
set cindent
set smartindent
set autoindent

" Enable Spell Checking
set spell

set nowrap

" Turn on Line numbers
set number

" Set Tabs and spacing for PHP as recommended by PEAR and Zend
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show a status bar
set ruler
set laststatus=2

"Set Search options highlight, and wrap search
set hls is " highlight search text throughout the document.
set wrapscan " wrap the scan around the document
set ic "ignore case in search

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

nnoremap <C-t> :NERDTreeToggle<CR>

map <C-h> <C-w>h
map <C-Left> <C-w>h

map <C-j> <C-w>j
map <C-Down> <C-w>j

map <C-k> <C-w>k
map <C-Up> <C-w>k

map <C-l> <C-w>l
map <C-Right> <C-w>l

imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

" Disable auto folding for php
let g:DisableAutoPHPFolding = 1

" Show lines that exceed 120 characters
match ErrorMsg '\%120v.\+'

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
