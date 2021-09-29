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


    " Git
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-fugitive'

    " IDE
    Plug 'neoclide/coc.nvim'
    Plug 'tpope/vim-commentary'
    Plug 'ryanoasis/vim-devicons'
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

