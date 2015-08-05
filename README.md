# vim-configuration
My favourite vim configurations made portable


Just clone the repo into your home `.vim` directory and insert the following to `.vimrc`:

```
" Source all settings
if filereadable(glob("~/.vim/vimrc.local"))
    source ~/.vim/vimrc.local
endif
```

Then checkout the submodules in bundles/ running `git submodule update --init`
