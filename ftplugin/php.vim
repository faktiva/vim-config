
" PHP specific settings

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" highlight leading tabs
match errorMsg /^[\t]\+/

" Enable lint checking for PHP files
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

if !filereadable(expand('%'))
	0r ~/.vim/extras/php/skeleton.php
endif

" {{{ Php-CS-Fixer plugin
let g:php_cs_fixer_level = "psr2"           " which level ?
let g:php_cs_fixer_config = "default"       " configuration
let g:php_cs_fixer_verbose = 1              " Return the output of command if 1, else an inline information.
" }}}

" {{{ Php-Doc plugin
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
" }}}

" {{{ Php-Syntax plugin
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd BufNewFile,BufRead * :call PhpSyntaxOverride()
augroup END
" }}}

" {{{ Symfony settings
if filereadable(glob("~/.vim/extras/symfony/symfony.vim"))
  source ~/.vim/extras/symfony/symfony.vim
endif
" }}}

