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

Required commands:
```shel
c compiler
ack-grep
jshint
```

Build the vimproc bundle
```shel
cd bundle/vimproc/
make
```
