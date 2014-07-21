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
ack-grep
ctags
```

Create tags file in every project:
```shel
ctags -R --languages=php -f tags.vendors vendor/ #for vendors
ctags -R --languages=php --exclude=vendor . #for sources
```
