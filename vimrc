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

