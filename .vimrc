" Load plugins
execute pathogen#infect()

set enc=utf-8   " set displayed encoding

" Theme, font and syntax highlighting
filetype on     " identify file based on extension/content
syntax on       " turn on syntax highlighting 
colorscheme Tomorrow-Night      " select scheme
set guifont=Menlo\ Regular:h18  " set font for the gui version of Vim

" Fixes
set backspace=indent,eol,start  " fix backspace in Windows to work as expected

" Various settings
set number                  " line numbering
set lines=35 columns=150    " terminal size
set tabstop=4       " tab width is 4 spaces
set shiftwidth=4    " indents will have this space width
set softtabstop=4   " sets the number of columns for a TAB.
set expandtab       " expand TABs to spaces.
set history=200     " command history length
set hlsearch        " highlight found words in word search

" Leader key bindings
let mapleader=","   " set leaderkey
" sourcing vimrc
if has("win32")
    map <leader>s :source $HOME\.vim\.vimrc<CR>
else
    map <leader>s :source ~/.vimrc<CR>
endif
" pasting from clipboard
nmap <leader>p "+p
" cancel word highlighting with Esc
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Plugins
filetype plugin on  " turn on filetype deduction for plugins
