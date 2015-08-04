# vim-configuration
My favourite vim configurations made portable


Just clone the repo into your home .vim directory and insert the following to `.vimrc`:

```
" Source local settings
if filereadable(glob("~/.vim/vimrc.local"))
    source ~/.vim/vimrc.local
endif
```
