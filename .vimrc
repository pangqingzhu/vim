filetype plugin indent on

" Plug插件管理{{{
" Specify a directory for plugins
" - For Neovim: stdpath('data').'/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/Conque-Shell'

call plug#end()
" }}}

" 常用设置{{{
set number
set foldcolumn=4
set shiftwidth=4
set hlsearch
set incsearch
set scrolloff=5
set cursorcolumn
set cursorline
"}}}

" 映射{{{
let mapleader=";"

inoremap jk <esc>
vnoremap jk <esc>
inoremap <esc> <nop>
vnoremap <esc> <nop>

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :write<cr>:source $MYVIMRC<cr>:quit<cr>

nnoremap <leader>q :q<cr>
nnoremap <leader>qq :q!<cr>

" 文件映射{{{
nnoremap <leader>fw :w<cr>
" }}}

nnoremap <leader>fl :NERDTreeToggle<cr>

" 移动{{{
nnoremap <leader>l $
vnoremap <leader>l $ 
nnoremap <leader>a 0
vnoremap <leader>a 0
"}}}

"窗口映射{{{ 
nnoremap <leader>wj <c-w>j<cr>
vnoremap <leader>wj <c-w>j<cr>
nnoremap <leader>wh <c-w>h<cr>
vnoremap <leader>wh <c-w>h<cr>
nnoremap <leader>wk <c-w>k<cr>
vnoremap <leader>wk <c-w>k<cr>
nnoremap <leader>wl <c-w>l<cr>
vnoremap <leader>wl <c-w>l<cr>
nnoremap <leader>w+ <c-w>+<cr>
vnoremap <leader>w+ <c-w>+<cr>
nnoremap <leader>w- <c-w>-<cr>
vnoremap <leader>w- <c-w>-<cr>
nnoremap <leader>w= <c-w>=<cr>
vnoremap <leader>w= <c-w>=<cr>
" }}}

nnoremap <leader>fmi :setlocal foldmethod=indent<cr>
nnoremap <leader>fmma :setlocal foldmethod=marker<cr>
nnoremap <leader>fmm :setlocal foldmethod=manual<cr>

inoremap <leader>' ''<Left>
inoremap ' <Right>
inoremap <leader>" ""<Left>
inoremap <leader>( ()<Left>
inoremap <leader>{ {}<Left><cr><esc>O
inoremap <leader>< <><Left>
inoremap <leader>[ []<Left>
inoremap <leader>` ``<Left>
nnoremap <leader>, mqA,<esc>`q
nnoremap <leader>; mqA;<esc>`q

" 搜索{{{
" nnoremap <leader>g :execute "grep -R ".shellescape(expand('<cword>'))." ."<cr>
" }}}

inoremap <leader>n <c-n>
inoremap <leader>p <c-p>

nnoremap <leader>z <esc>^i//<esc>
inoremap <leader>z <esc>^i//<esc>

nnoremap <leader>f :call FoldColumnToggle()<cr>

function! FoldColumnToggle()
    if &foldcolumn
	setlocal foldcolumn=0
    else
	setlocal foldcolumn=4
    endif
endfunction

nnoremap <leader>qf :call QuickfixToggle()<cr>

let g:quickfix_is_open=0

function! QuickfixToggle()
    if g:quickfix_is_open
	cclose
	let g:quickfix_is_open=0
	execute g:quick_return_to_window."wincmd w"
    else
	let g:quick_return_to_window=winnr()
	copen
	let g:quickfix_is_open=1
    endif
endfunction

nnoremap <leader>gs :!git status<cr>
nnoremap <leader>gc :!git add .<cr>:!git commit -m 'update'<cr>
"}}}
