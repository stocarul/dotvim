dotvim
======

My .vim directory!

Clone it into .vim folder:
```vim
git clone --recursive https://github.com/stocarul/dotvim.git .vim
```

Add to ~/.vimrc:
```vim
source ~/.vim/vimrc
```

Install bundles:
```vim
vi ~/.vim/vimrc
:BundleInstall
```

Build vimproc:
```shel
cd bundle/vimproc/
make
```
