"
" PHP specific settings
"

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


set list
set listchars=tab:>-,trail:-
" highlight leading tabs
match errorMsg /^[\t]\+/

" Use a skeleton for new files
if !filereadable(expand('%'))
	0r ~/.vim/extras/php/skeleton.php
endif

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=~/.vim/extras/php/funclist.txt dictionary+=~/.vim/extras/php/funclist.txt
" Use the dictionary completion
set complete-=k complete+=k


" {{{ Wrapping
" Linewidth to endless
set textwidth=0
" Do not wrap lines automatically
set nowrap

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]       " cursors will now wrap
" }}}

" {{{ tabbing config

" ctrl-w+n creates a new split, so I've mapped ctrl-w+t+n to create a new tab, and ctrl-w+t+t to move to the next tab
noremap <C-W>tn :tabnew<CR>
noremap <C-W>tt :tabnext<CR>

" very few schemes have tab highlighting in yet, so lets set this outselves...
hi TabLine            term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill        term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel         term=reverse  ctermfg=white ctermbg=lightblue guifg=white guibg=blue

" always show the tabline...
set showtabline=2

" }}} tabbing config

" {{{ Symfony Code Templates

autocmd BufNewFile */validate/*.yml 0r ~/.vim/extras/symfony/validate.yml
autocmd BufNewFile */config/*-schema.yml 0r ~/.vim/extras/symfony/schema.yml

" validation class...
map! =symv   class myUnnamedValidator extends sfValidator<CR>{<CR>public function execute (&$value, &$error)<CR>{<CR>if ($value)<CR>{<CR>$error = $this->getParameter('my_error');<CR>return false;<CR>}<CR>return true;<CR>}<CR><CR>public function initialize ($context, $parameters = null)<CR>{<CR>parent::initialize($context, $parameters);<CR>$this->getParameterHolder()->add($parameters);<CR>$this->getParameterHolder()->set('my_error', 'Invalid');<CR>return true;<CR>}<CR>}

" }}} Symfony Code Templates


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

