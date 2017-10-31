# `vim` configuration for enhanced _WebDevs_ / _SysAdmins_

An _**easy to deploy**_ set of pre-configured `VIM` plugins and configurations targeted to make Web Developers and System Administrators more happy ;)

## Installation:

- clone the repo into **your home `.vim`** directory

    ```Shell
    git clone https://github.com/faktiva/vim-config.git ~/.vim
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

- **[Better Whitespace](https://github.com/ntpeters/vim-better-whitespace)**
- [CSS colors](https://github.com/ap/vim-css-color)
- [Editorconfig](https://github.com/editorconfig/editorconfig-vim) _[add Editorconfig support](http://editorconfig.org/)_
- **[GIT.vim](https://github.com/motemen/git-vim) _(GIT integration)_**
- [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides)
- **[NERDTree](https://github.com/scrooloose/nerdtree) _(Directory tree explorer)_**
- [Pathogen](https://github.com/tpope/vim-pathogen) _(Vim plugin manager)_
- [PHP CS Fixer](https://github.com/stephpy/vim-php-cs-fixer) _(integrate [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer))_
- [PHP-Doc](https://github.com/Rican7/php-doc-modded)
- **[PHP manual](https://github.com/alvan/vim-php-manual)**
- **[Sparkup](https://github.com/rstacruz/sparkup) _(write HTML code faster)_**
- **[Terraform](https://github.com/hashivim/vim-terraform) _(adds a `:Terraform` command that runs terraform, with tab completion of subcommands)_**
- [Vim-Symfony](https://github.com/docteurklein/vim-symfony)
- [Web Indent](https://github.com/vim-scripts/JavaScript-Indent) _(Javascript and HTML indenter)_

### Enhanced Syntax highlight

- **[API Blueprint](https://github.com/kylef/apiblueprint.vim.git)**
- **[CSS](https://github.com/JulesWang/css.vim)**
- [Elixir](https://github.com/elixir-editors/vim-elixir)
- **[HTML5](https://github.com/othree/html5.vim)**
- **[Javascript](https://github.com/pangloss/vim-javascript)**
- **[JSON](https://github.com/elzr/vim-json)**
- [JSX](https://github.com/mxw/vim-jsx.git)
- [Markdown](https://github.com/tpope/vim-markdown)
- [NGINX](https://github.com/chr4/nginx.vim.git)
- **[PHP](https://github.com/StanAngeloff/php.vim)**
- [Python](https://github.com/mitsuhiko/vim-python-combined)
- [Puppet](https://github.com/puppetlabs/puppet-syntax-vim.git)
- **[Router OS](https://github.com/faktiva/vim-config/blob/master/ftplugin/rsc.vim)** (`.rsc`)
- **[Terraform](https://github.com/hashivim/vim-terraform)** (`*.tf`, `*.tfvars`, and `*.tfstate`)
- **[TWIG](https://github.com/lumiliet/vim-twig)**
- [XSL](https://github.com/vim-scripts/XSLT-syntax)
- **[YAML](https://github.com/stephpy/vim-yaml)**

