" nicolasdiazoff Neovim settings
" Author: Nicolás Díaz <nicolasdiazoff@gmail.com>
" Repo: https://github.com/nicolasdiazoff/vimrc

" -----------------------------------------------------------
" General
" -----------------------------------------------------------
set nocompatible
set history=1000
set noswapfile
set nobackup
set undofile
set undodir=~/.config/nvim/undodir

" -----------------------------------------------------------
" UI
" -----------------------------------------------------------
set encoding=utf-8
set number
set numberwidth=1
set showcmd
set ruler
set noshowmode
set nowrap
set showmatch
set foldmethod=indent
set foldlevel=99
set nofoldenable
set mouse=a

" statusline
set laststatus=3        " global statusline (nvim>=0.7)
set wildmenu
set fillchars+=vert:\┊

" -----------------------------------------------------------
" Clipboard
" -----------------------------------------------------------
set clipboard=unnamedplus   " usar portapapeles del sistema

" -----------------------------------------------------------
" Indent
" -----------------------------------------------------------
set autoindent
set sw=2
set tabstop=2
set shiftwidth=4
set expandtab

" -----------------------------------------------------------
" Filetypes
" -----------------------------------------------------------
filetype indent plugin on

" -----------------------------------------------------------
" Source extra config
" -----------------------------------------------------------
" Ajustar rutas al nuevo ~/.config/nvim
so ~/.config/nvim/utils/maps.vim
so ~/.config/nvim/utils/plugins.vim

