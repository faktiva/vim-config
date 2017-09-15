# `vim` configuration for enhanced _WebDevs_ / _SysAdmins_

An _**easy to deploy**_ set of pre-configured `VIM` plugins and configurations targeted to make Web Developers and System Administrators more happy ;)

## Installation:

- clone the repo into **your home `.vim`** directory

    ```Shell
    git clone https://github.com/faktiva/vim-config-webdev.git ~/.vim
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
    cd ~/.vim ; git submodule update --init
    ```

## Features

The following plugins are installed and configured:

### Color Schemes

- [Darcula](https://github.com/blueshirts/darcula)
- [Molokai](https://github.com/tomasr/molokai) _(used by default)_
- [Solarized](https://github.com/altercation/vim-colors-solarized)

### Vim enhancers

- [Pathogen](https://github.com/tpope/vim-pathogen) _(Vim plugin manager)_
- **[NERDTree](https://github.com/scrooloose/nerdtree) _(Directory tree explorer)_**
- **[GIT.vim](https://github.com/motemen/git-vim) _(GIT integration)_**
- [CSApprox](https://github.com/godlygeek/csapprox)
- [Editorconfig](https://github.com/editorconfig/editorconfig-vim) _[add Editorconfig support](http://editorconfig.org/)_
- [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides)
- **[Better Whitespace](https://github.com/ntpeters/vim-better-whitespace)**
- **[Sparkup](https://github.com/rstacruz/sparkup) _(write HTML code faster)_**
- **[PHP manual](https://github.com/alvan/vim-php-manual)**
- [PHP CS Fixer](https://github.com/stephpy/vim-php-cs-fixer) _(integrate [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer))_
- [CSS colors](https://github.com/ap/vim-css-color)
- [Vim-Symfony](https://github.com/docteurklein/vim-symfony)
- [PHP-Doc](https://github.com/Rican7/php-doc-modded)
- [Web Indent](https://github.com/vim-scripts/JavaScript-Indent) _(Javascript and HTML indenter)_
- **[Terraform](https://github.com/hashivim/vim-terraform) _(adds a `:Terraform` command that runs terraform, with tab completion of subcommands)_**

### Enhanced Syntax highlight

- **[CSS](https://github.com/JulesWang/css.vim)**
- **[HTML5](https://github.com/othree/html5.vim)**
- **[Javascript](https://github.com/pangloss/vim-javascript)**
- [JSX](https://github.com/mxw/vim-jsx.git)
- **[JSON](https://github.com/elzr/vim-json)**
- [Markdown](https://github.com/tpope/vim-markdown)
- **[PHP](https://github.com/StanAngeloff/php.vim)**
- [Python](https://github.com/mitsuhiko/vim-python-combined)
- **[TWIG](https://github.com/lumiliet/vim-twig)**
- [XSL](https://github.com/vim-scripts/XSLT-syntax)
- **[YAML](https://github.com/stephpy/vim-yaml)**
- **[API Blueprint](https://github.com/kylef/apiblueprint.vim.git)**
- [NGINX](https://github.com/chr4/nginx.vim.git)
- [Puppet](https://github.com/puppetlabs/puppet-syntax-vim.git)
- **[Router OS](https://github.com/faktiva/vim-config/blob/master/ftplugin/rsc.vim)** (`.rsc`)
- **[Terraform](https://github.com/hashivim/vim-terraform)** (`*.tf`, `*.tfvars`, and `*.tfstate`)

