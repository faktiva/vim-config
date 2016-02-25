# vim-configuration
My favourite vim configurations made portable

Installation:
---

- just clone the repo into your home `.vim` directory

    ```
    git clone https://github.com/drAlberT/vimcfg4php.git .vim
    ```
- and insert the following to `.vimrc`:

    ```
    " Source all settings
    if filereadable(glob("~/.vim/vimrc.local"))
        source ~/.vim/vimrc.local
    endif
    ```
- then checkout the submodules in *bundles/*

    ```
    git submodule update --init
    ```
