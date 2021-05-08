let NERDTreeQuitOnClose=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['^node_modules$','\.git$', '\.idea$', '\.vscode$', '\.history$']
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

nnoremap <A-S-Left> :tabprevious<CR>
nnoremap <A-S-Right> :tabnext<CR>

" Shortcuts for switching the buffers
map <C-N> :bnext<CR>
map <C-M> :bprev<CR>
"imap <C-N> <Esc>:bnext<CR>i
"imap <C-M> <Esc>:bprev<CR>i

