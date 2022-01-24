call plug#begin('~/.vim/plugged')

    " Syntax
    Plug 'sheerun/vim-polyglot'

    " Theme
    Plug 'dracula/vim', { 'as': 'dracula' }

    " Status Bar
    Plug 'itchyny/lightline.vim'

    " Navigation
    Plug 'preservim/nerdtree'
    Plug 'christoomey/vim-tmux-navigator'

    " Typing
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'

    " Autocomplete
    Plug 'sirver/ultisnips'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Git
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-fugitive'

    " IDE
    Plug 'tpope/vim-commentary'
    Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/vim-easy-align'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'airblade/vim-rooter'
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'mhinz/vim-signify'
    Plug 'yggdroot/indentline'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'

    " Javascript or Typescript

    " Python
    Plug 'vim-scripts/indentpython.vim'
    Plug 'vim-syntastic/syntastic'
    Plug 'nvie/vim-flake8'

call plug#end()

