
if has('win32') || has('win64')
    let &shell='cmd.exe'
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin indent on
syntax on

let mapleader = " "

set noerrorbells
set nowrap
" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

"------------------------------------

set number 
set relativenumber " current line has its number, rest is relative
set incsearch "incremental search
set hlsearch " highlight search results
set autoindent

set expandtab " On pressing tab, insert spaces instead of the tab character
set tabstop=4 " show existing tab with 2 spaces width
set softtabstop=4
set shiftwidth=4 " when indenting with '>', use 4 spaces width

autocmd vimenter * colorscheme gruvbox


set path=**

set wildmenu

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25

command! MakeTags !ctags -R .

inoremap kj <esc>
noremap! <silent> kj <esc>
vnoremap <silent> kj <esc>
onoremap <silent> kj <esc>
map Y y$

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
