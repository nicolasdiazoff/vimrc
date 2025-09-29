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
map <C-v> "+p
vnoremap <C-x> "+d
inoremap <C-x> <ESC>"+ddi
vnoremap <C-c> "+y
nnoremap <C-c> "+yy
inoremap <C-c> <ESC>"+yyi

" =========================
" NERDTree
" =========================
nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
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
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <C-h> <cmd>Telescope help_tags<cr>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" =========================
" Coc.nvim completion mappings (C-1 y C-2)
" =========================
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <C-Space> coc#refresh()

" Tab y Shift-Tab
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
	\ coc#pum#visible() ? coc#pum#next(1) :
	\ coc#expandableOrJumpable() ? '<C-r>=coc#rpc#request("doKeymap", ["snippets-expand-jump",""])<CR>' :
	\ <SID>check_back_space() ? "\<Tab>" : coc#refresh()

inoremap <silent><expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


" =========================
" Prettier on save
" =========================
autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.json,*.css,*.md,*.html PrettierAsync
