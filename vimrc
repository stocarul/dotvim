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

Bundle "altercation/vim-colors-solarized"

Bundle "myusuf3/numbers.vim"
Bundle "tpope/vim-fugitive"

Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"

Bundle "tomtom/checksyntax_vim"
Bundle "Raimondi/delimitMate"

" phpcomplete extended (with symfony extension)
Bundle "Shougo/vimproc"
Bundle "Shougo/unite.vim"
Bundle "m2mdas/phpcomplete-extended"
Bundle "m2mdas/phpcomplete-extended-symfony"

Bundle "evidens/vim-twig"
Bundle "ervandew/supertab"

Bundle "mileszs/ack.vim"
Bundle "vim-scripts/nerdtree-ack"

Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
Bundle "stocarul/ultisnips-symfony2"

Bundle "kien/ctrlp.vim"

Bundle "Lokaltog/vim-easymotion"
Bundle "goldfeld/vim-seek"

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

if has('gui_running')
    colorscheme solarized
endif

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

" Set Search options highlight, and wrap search
set hls is " highlight search text throughout the document.
set wrapscan " wrap the scan around the document
set ic "ignore case in search

" Custom shortcuts
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

" Nerd Tree shortcut
nnoremap <C-t> :NERDTreeToggle<CR>

" Split's shortcuts
map <C-h> <C-w>h
map <C-H> <C-w>h<C-w>_
map <C-Left> <C-w>h

map <C-j> <C-w>j
map <C-J> <C-w>j<C-w>_
map <C-Down> <C-w>j

map <C-k> <C-w>k
map <C-K> <C-w>k<C-w>_
map <C-Up> <C-w>k

map <C-l> <C-w>l
map <C-L> <C-w>l<C-w>_
map <C-Right> <C-w>l

" Show lines that exceed 120 characters
match ErrorMsg '\%120v.\+'

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete_extended#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Remove trailing sapces
autocmd BufWritePre * :%s/\s\+$//e

" Use ack-grep instead of ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" first set path
set path+=**

" Paste toggle
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" Set default base number as 10
set nrformats=

" Exclude some files from ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*~,*.zip,*/cache/*
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

" Change default key for easy motion
let g:EasyMotion_leader_key = '<Leader>'

" Allow counts for vim-seek
let g:seek_subst_disable = 1

" phpcomplete-extended
let g:phpcomplete_index_composer_command = "composer"
imap <C-Space> <C-x><C-o>
imap <C-@> <C-x><C-o>

" Cut, copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+"
