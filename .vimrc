" Specify a directory for plugins
" - For Neovim: stdpath('data').'/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'

call plug#end()

set number
let mapleader=";"

inoremap jk <esc>
vnoremap jk <esc>
inoremap <esc> <nop>
vnoremap <esc> <nop>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap q :q<cr>
nnoremap qq :q!<cr>
nnoremap fw :w<cr>
nnoremap fl :NERDTreeToggle<cr>
nnoremap <leader>l $
vnoremap <leader>l $ 
nnoremap <leader>a 0
vnoremap <leader>a 0

set shiftwidth=4
