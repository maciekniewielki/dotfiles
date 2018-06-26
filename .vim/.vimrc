" ================ STANDARD VIMRC CONFIG ================ 
set nocompatible
" Load plugins
execute pathogen#infect()

set enc=utf-8   " set displayed encoding

" Theme, font and syntax highlighting
filetype on     " identify file based on extension/content
syntax on       " turn on syntax highlighting 
colorscheme Tomorrow-Night      " select scheme
if has("win32") " set font for the gui version of Vim
    set guifont=Menlo\ Regular:h14
else
    set guifont=Menlo\ 14  
endif
" Fixes
set backspace=indent,eol,start  " fix backspace in Windows to work as expected

" Useful remaps
nnoremap ; :
nnoremap <f3> mzggVGg?`z
nnoremap <Up> k
nnoremap <Down> j
nnoremap <Left> h
nnoremap <Right> l
nnoremap <f2> :nohlsearch<cr>

" For window switching
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

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
nnoremap <leader>sv :source $MYVIMRC<cr>

" opening vimrc in split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" pasting from clipboard
nnoremap <leader>p "+p

" cancel word highlighting with Esc
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" ================ PLUGINS CONFIG ================ 
filetype plugin on  " turn on filetype deduction for plugins


" --------- LIGHTLINE STATUS BAR CONFIG ---------
set laststatus=2    " fix lighline status bar
set noshowmode      " turn off default mode bar

" Replace default filename in the lightline status bar
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'RelativePathLightLine'
      \ }
      \ }
 
" Show full path of filename
function! RelativePathLightLine()
    return expand('%')
endfunction

" Add the the current git path to status bar
" Also add the hex code for current character to status bar
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }
