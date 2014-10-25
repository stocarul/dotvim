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

" Enable configuration file of each directory
Bundle "thinca/vim-localrc"

" themes and statusbars
Bundle "altercation/vim-colors-solarized"
Bundle "bling/vim-airline"

" Session management
Bundle "xolox/vim-session"
Bundle "xolox/vim-misc"

" Alignment and regions
Bundle "junegunn/vim-easy-align"
Bundle "chrisbra/NrrwRgn"

" Numbering and git
Bundle "myusuf3/numbers.vim"
Bundle "tpope/vim-fugitive"

" Automagically adds closing quotes and braces
" Easily Add, change and delete surroundings
Bundle "Raimondi/delimitMate"
Bundle "tpope/vim-surround"

" Filesystem tree (with search capability) and code commenter
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "vim-scripts/nerdtree-ack"
Bundle "mileszs/ack.vim"

" Symfony
Bundle "stocarul/vim-symfony"

" PHPUnit
Bundle "joonty/vim-phpunitqf"

" PHP Documentor
Bundle "tobyS/vmustache"
Bundle "tobyS/pdv"

" Javascript
Bundle "pangloss/vim-javascript"

" Syntax checker
Bundle "scrooloose/syntastic"

" Supports twig PHP templates
Bundle "evidens/vim-twig"

" TAB for autocompletion
Bundle "ervandew/supertab"

" Snippets
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
Bundle "stocarul/ultisnips-symfony2"

" Full path fuzzy file finder
Bundle "kien/ctrlp.vim"

" Single line and multi line navigation
Bundle "Lokaltog/vim-easymotion"
Bundle "justinmk/vim-sneak"

" Open URI with browser
Bundle "tyru/open-browser.vim"

" This Vim plugin will search for terms using the excellent Dash.app
Bundle 'rizzatti/dash.vim'

" Expand Abbreviation
Bundle "mattn/emmet-vim"

" Previewing markup files
Bundle "greyblake/vim-preview"

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

" Change the mapleader default key to ','
let mapleader = ","

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

nmap <F9> <F2>:!g++ -O2 -W -Wall -Wno-unused-function -lm -o "%<" "%<.cpp"; time ./"%<"<CR>
imap <F9> <F2><ESC>:!g++ -O2 -W -Wall -Wno-unused-function -lm -o "%<" "%<.cpp"; time ./"%<"<CR>

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

" Show lines that exceed 80 characters
match ErrorMsg '\%80v.\+'

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Remove trailing sapces
autocmd BufWritePre * :%s/\s\+$//e

" Use ack-grep instead of ack
let g:ackprg="ack-grep -H --smart-case --nocolor --nogroup --column"

" first set path
set path+=**

" Paste toggle
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" Set default base number as 10
set nrformats=

" Disable working path mode. Keep the first root.
let g:ctrlp_working_path_mode = 0

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

" Cut, copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+"

" Symfony2 command shell
map <leader>c :!./app/console -s<CR>

" Disabling the cursor/arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Open Browser configuration
nmap <Leader>o <Plug>(openbrowser-smart-search)
vmap <Leader>o <Plug>(openbrowser-smart-search)

" PHP Documentor configuration
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
map <Leader>d :call pdv#DocumentWithSnip()<CR>

"Autocomplete shortcuts
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

"Run unit test when saving a test file
:autocmd BufWritePost *Test.php :Test %

"Dash bindings
:nmap <silent> <leader>da <Plug>DashSearch

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

" Vim session
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_autosave_periodic = 1
let g:session_default_to_last = 1
let g:session_command_aliases = 1
