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

" Enable folding
set foldmethod=indent
set foldlevel=99

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

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" Initialize plugin system
call plug#begin('~/.vim/plugged')

    " Theme
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'itchyny/lightline.vim'

    " Navigation
    Plug 'preservim/nerdtree'
    Plug 'christoomey/vim-tmux-navigator'

    " Git
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-fugitive'

    " IDE
    Plug 'neoclide/coc.nvim'
    Plug 'tpope/vim-commentary'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/vim-easy-align'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'airblade/vim-rooter'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'mhinz/vim-signify'
    Plug 'yggdroot/indentline'

    " Javascript or Typescript

    " Python
    Plug 'vim-scripts/indentpython.vim'
    Plug 'vim-syntastic/syntastic'
    Plug 'nvie/vim-flake8'

call plug#end()

