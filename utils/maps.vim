" =========================
" Map Leader key is space
" =========================
let mapleader=" "
set shell=bash


" =========================
" Relative Number
" =========================
nmap <F5> :set nvrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a


" =========================
" Save and Quit shorcuts
" =========================
nmap <Leader>w :w<CR>
nnoremap WW :w <CR>


" =========================
" Clipboard
" =========================
" Paste system clipboard with Ctrl + v
map <C-v> "+p
" Cut to system clipboard with Ctrl + x
vnoremap <C-x> "+d
"nnoremap <C-x> "+dd
inoremap <C-x> <ESC>"+ddi
" Copy to system clipboard with Ctr + c
vnoremap <C-c> "+y
nnoremap <C-c> "+yy
inoremap <C-c> <ESC>"+yyi


" =========================
" NERDTree
" =========================
nmap <Leader>q :q <bar> :NERDTreeClose<CR>
nnoremap qq :q <bar> :NERDTreeClose <CR>


" =========================
" Node
" =========================
nnoremap <Leader>x :!node %<cr>


" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>
