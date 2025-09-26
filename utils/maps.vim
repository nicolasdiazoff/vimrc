" =========================
" Leader key
" =========================
let mapleader=" "
set shell=bash

" =========================
" General
" =========================
" Toggle relative number with F5
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a

" Save shortcuts
nmap <Leader>w :w<CR>
nnoremap WW :w<CR>

" =========================
" Clipboard (system integration)
" =========================
" Using `set clipboard=unnamedplus` in init.vim
" VS Code style mappings kept for convenience
map <C-v> "+p
vnoremap <C-x> "+d
inoremap <C-x> <ESC>"+ddi
vnoremap <C-c> "+y
nnoremap <C-c> "+yy
inoremap <C-c> <ESC>"+yyi

" =========================
" NERDTree
" =========================
nnoremap <Leader>e :NERDTreeToggle<CR>   " Toggle file explorer
nnoremap <Leader>f :NERDTreeFind<CR>     " Locate current file
nmap <Leader>q :q <bar> :NERDTreeClose<CR>
nnoremap qq :q <bar> :NERDTreeClose<CR>

" =========================
" Node.js
" =========================
nnoremap <Leader>x :!node %<CR>

" =========================
" Reload config & install plugins
" =========================
nnoremap <silent><leader>1 :source ~/.config/nvim/init.vim \| :PlugInstall<CR>

" =========================
" Telescope (fuzzy finder)
" =========================
" Ctrl+P: find files
nnoremap <C-p> <cmd>Telescope find_files<cr>
" Ctrl+F: search text
nnoremap <C-f> <cmd>Telescope live_grep<cr>
" Ctrl+B: list buffers
nnoremap <C-b> <cmd>Telescope buffers<cr>
" Ctrl+H: help
nnoremap <C-h> <cmd>Telescope help_tags<cr>

" Leader key style mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" =========================
" Coc.nvim essentials
" =========================
" Only include mappings you actually use
" Go to definition / type / implementation / references
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Format selected code using Coc + Prettier
"xmap <leader>f  <Plug>(coc-format-selected)
" Format current line or selection in normal mode
"nnoremap <leader>f  <Plug>(coc-format-selected)


" Show diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<CR>

" Format current buffer or selection
command! -nargs=0 Format :call CocAction('format')
"xmap <leader>f  <Plug>(coc-format-selected)

" Rename symbol
"nmap <leader>rn <Plug>(coc-rename)
