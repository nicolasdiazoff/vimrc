" nicolasdiazoff vimrc settings
" Author and maintainer: Nicolás Díaz <nicolasdiazoff@gmail.com>
" Public backup: http://github.com/nicolasdiazoff/vimrc
"
" LICENSE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" suit your needs and to make the changes yours. Attribution to this vimrc
" is not required although is thanked.

" Stop acting like classic vi
set nocompatible            " disable vi compatibility mode
set history=1000            " increase history size
set noswapfile              " don't create swapfiles
set nobackup                " don't backup, use git!

" Enable filetype
filetype indent plugin on

" Persist undo history between file editing sessions.
set undofile
set undodir=~/.vim/undodir

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode
set hidden

" Use a specific pipe ch
set fillchars+=vert:\┊

set laststatus=1        " always show statusbar
set wildmenu            " enable visual wildmenu

set mouse=a
set numberwidth=1
set showcmd
set ruler
set clipboard=unnamed
set noshowmode

" Modify indenting settings
set autoindent              " autoindent always ON.
set sw=2
set tabstop=2
set shiftwidth=4
set expandtab
set nofoldenable

set nowrap              " don't wrap long lines
set number              " show line numbers
set showmatch           " higlight matching parentheses and brackets
nmap <F8> :Prettier<CR>

" Relative numbering is pretty useful for motions (3g, 5k...). However I'd
" prefer to have a way for switching relative numbers with a single map.
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a

" Map Leader key is space
let mapleader=" "

" Save and Quit shorcuts
nmap <Leader>w :w <CR>
nmap <Leader>q :q <bar> :NERDTreeClose<CR>
nnoremap WW :w <CR>
nnoremap qq :q <bar> :NERDTreeClose <CR>

" Copy and paste in clipboard
map <Leader>y "+y<CR>
map <Leader>p "+p<CR>
