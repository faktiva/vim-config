"
" vim configuration by Emiliano 'AlberT' Gabrielli <emiliano.gabrielli@gmail.com>
" feel free to use
"
" Intended for PHP and Symfony coding
"


" {{{  Settings

" Use filetype plugins, e.g. for PHP
filetype plugin on

" Show nice info in ruler
set ruler
set laststatus=2

set tabstop=4
set expandtab

set shiftwidth=4
set softtabstop=4

match errorMsg /^[\t]\+/
match errorMsg /\s\+$/

" Show line numbers by default
set number
set norelativenumber

" Use incremental searching
set incsearch

" }}}

" {{{ php_cs_fixer

let g:php_cs_fixer_level = "psr2"           " which level ?
let g:php_cs_fixer_config = "default"       " configuration
let g:php_cs_fixer_verbose = 1              " Return the output of command if 1, else an inline information.

" }}}
