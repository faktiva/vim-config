"
" vim configuration by Emiliano 'AlberT' Gabrielli <emiliano.gabrielli@gmail.com>
" feel free to use
"
" Intended for PHP and Symfony coding
"

"  {{{  Settings 

" Use filetype plugins, e.g. for PHP
filetype plugin on

" Show nice info in ruler
set ruler
set laststatus=2

set tabstop=4
set shiftwidth=4
set softtabstop=0

set noexpandtab
match errorMsg /^[\t]\+/
match errorMsg /\s\+$/

" Show line numbers by default
set number
set norelativenumber

" Use incremental searching
set incsearch

 " }}}  

