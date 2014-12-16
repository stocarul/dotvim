dotvim
======

My `.vim` directory!

Clone it into `.vim` folder:
```vim
git clone --recursive https://github.com/stocarul/dotvim.git .vim
```

Add to `~/.vimrc`:
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
ctags
ack-grep
jshint
```

Create tags files in every project:
```shel
#for vendors
ctags -R --languages=php \
--PHP-kinds=+cf \
--regex-PHP="/trait ([^ ]*)/\1/c/" \
-f tags.vendors vendor

#for sources
ctags -R --languages=php \
--PHP-kinds=+cf \
--regex-PHP="/trait ([^ ]*)/\1/c/" \
--exclude=.git \
--exclude=app \
--exclude=vendor \
--exclude=bin \
--exclude=web \
.
```
