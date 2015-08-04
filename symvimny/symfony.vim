" Automatically reload .vimrc when changing
autocmd! bufwritepost .vimrc source %

colorscheme default
set background=dark

" use spaces rather then tabs, with a width of 2
set tabstop=2
set shiftwidth=2
set expandtab


" this will show tabs and trailing spaces
set list
set listchars=tab:>-,trail:-


" Auto indent after a {
set autoindent
set smartindent

" Linewidth to endless
set textwidth=0

" Do not wrap lines automatically
set nowrap

" Show line numbers by default
set number

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=~/.vim/symvimny/funclist.txt dictionary+=~/.vim/symvimny/funclist.txt
" Use the dictionary completion
set complete-=k complete+=k

" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

set ignorecase                  " caseinsensitive searches-
set showmode                    " always show command or insert mode-
set ruler                       " show line and column information-
set showmatch                   " show matching brackets
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]       " cursors will now wrap


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

" validation class...
map! =symv   class myUnnamedValidator extends sfValidator<CR>{<CR>public function execute (&$value, &$error)<CR>{<CR>if ($value)<CR>{<CR>$error = $this->getParameter('my_error');<CR>return false;<CR>}<CR>return true;<CR>}<CR><CR>public function initialize ($context, $parameters = null)<CR>{<CR>parent::initialize($context, $parameters);<CR>$this->getParameterHolder()->add($parameters);<CR>$this->getParameterHolder()->set('my_error', 'Invalid');<CR>return true;<CR>}<CR>}

" }}} Symfony Code Templates

:autocmd BufNewFile */validate/*.yml 0r ~/.vim/symvimny/validate.yml
:autocmd BufNewFile */config/*-schema.yml 0r ~/.vim/symvimny/schema.yml
:autocmd BufNewFile */config/*-schema.xml 0r ~/.vim/symvimny/schema.xml

