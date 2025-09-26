" =========================
" Basic Coc.nvim Settings
" =========================
" Allow hidden buffers
set hidden

" Avoid backup issues with some language servers
set nobackup
set nowritebackup

" More space for displaying messages
set cmdheight=2

" Reduce updatetime for better performance
set updatetime=300

" Avoid passing messages to completion menu
set shortmess+=c

" Always show the signcolumn
if has("patch-8.1.1564")
  " Vim 8.1+ can merge signcolumn and number column
  set signcolumn=number
else
  set signcolumn=yes
endif

" =========================
" Completion trigger
" =========================
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make Enter auto-select first completion item and trigger formatting
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" =========================
" Diagnostics navigation
" =========================
" Highlight symbol and references on cursor hold
autocmd CursorHold * silent call CocActionAsync('highlight')

" =========================
" Filetype-specific settings
" =========================
augroup mygroup
  autocmd!
  " Setup formatexpr for certain filetypes
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Show signature help on placeholder jumps
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" =========================
" Floating windows scroll behavior
" =========================
if has('nvim-0.4.0') || has('patch-8.2.0750')
  " Coc floating window scroll support
  " The actual scrolling mappings will go in maps.vim
endif

" =========================
" Selection ranges
" =========================
" Use Ctrl-S for selections (mapping moved to maps.vim)
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" =========================
" Commands
" =========================
" Format buffer
command! -nargs=0 Format :call CocAction('format')
" Fold buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)
" Organize imports
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
" Command to format the current file
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" =========================
" Statusline integration
" =========================
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
