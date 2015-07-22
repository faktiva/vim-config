# vim-configuration
My favourite vim configurations made portable


Just insert the following to `.vimrc`:

```
" Source local settings
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
```
