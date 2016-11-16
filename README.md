# `vim` configuration for enhanced _WebDevs_ / _SysAdmins_

An _**easy to deploy**_ set of pre-configured `VIM` plugins and configurations targeted to make Web Developers and System Administrators more happy ;)

## Installation:

- clone the repo into **your home `.vim`** directory

    ```Shell
    git clone https://github.com/faktiva/vimcfg4php.git .vim
    ```

- insert the following to `.vimrc`:

    ```VimL
    " Source all settings
    if filereadable(glob("~/.vim/vimrc.local"))
        source ~/.vim/vimrc.local
    endif
    ```

- then install the submodules inside _`bundles/`_

    ```Shell
    git submodule update --init
    ```

## Features

The following plugins are installed and configured:

### Color Schemes

- [Darcula](https://github.com/blueshirts/darcula.git)
- [Molokai](https://github.com/tomasr/molokai.git) _(used by default)_
- [Solarized](https://github.com/altercation/vim-colors-solarized.git)

### Vim enhancers

- [Pathogen](https://github.com/tpope/vim-pathogen.git) _(Vim plugin manager)_
- **[NERDTree](https://github.com/scrooloose/nerdtree) _(Directory tree explorer)_**
- **[Fugitive](https://github.com/tpope/vim-fugitive.git) _(GIT integration)_**
- [CSApprox](https://github.com/godlygeek/csapprox)
- [Editorconfig](https://github.com/editorconfig/editorconfig-vim)
- [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides)
- **[Better Whitespace](https://github.com/ntpeters/vim-better-whitespace)**
- **[Sparkup](https://github.com/rstacruz/sparkup.git) _(write HTML code faster)_**
- **[PHP manual](https://github.com/alvan/vim-php-manual.git)**
- [PHP CS Fixer](https://github.com/stephpy/vim-php-cs-fixer.git) _(integrate [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer))_
- [CSS colors](https://github.com/ap/vim-css-color)
- [Vim-Symfony](https://github.com/docteurklein/vim-symfony.git)
- [PHP-Doc](https://github.com/Rican7/php-doc-modded.git)
- [Web Indent](https://github.com/vim-scripts/JavaScript-Indent.git) _(Javascript and HTML indenter)_

### Enhanced Syntax highlight

- **[CSS](https://github.com/JulesWang/css.vim.git)**
- **[HTML5](https://github.com/othree/html5.vim.git)**
- **[Javascript](https://github.com/pangloss/vim-javascript.git)**
- **[JSON](https://github.com/elzr/vim-json.git)**
- [Markdown](https://github.com/tpope/vim-markdown.git)
- [nginx](https://github.com/moskytw/nginx-contrib-vim.git)
- **[PHP](https://github.com/StanAngeloff/php.vim.git)**
- [Python](https://github.com/mitsuhiko/vim-python-combined.git)
- **[TWIG](https://github.com/lumiliet/vim-twig.git)**
- [XSL](https://github.com/vim-scripts/XSLT-syntax.git)
- **[YAML](https://github.com/stephpy/vim-yaml)**
- **[Router OS](https://github.com/faktiva/vimcfg4php/blob/master/ftplugin/rsc.vim)** (`.rsc`)
