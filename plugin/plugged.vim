" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" Initialize plugin system
call plug#begin('~/.vim/plugged')

    " Theme Dracula
    Plug 'dracula/vim', { 'as': 'dracula' }

    "vim-lightline
    Plug 'itchyny/lightline.vim'

    "Nerdtree and nerdtree plugin
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    "vim-coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "vim-commentary
    Plug 'tpope/vim-commentary'

    "vim-devicons
    Plug 'ryanoasis/vim-devicons'

    "vim-gitgutter 
    Plug 'airblade/vim-gitgutter'

    "vim-polyglot 
    Plug 'sheerun/vim-polyglot'

    "vim-tmux-navigator 
    Plug 'christoomey/vim-tmux-navigator'

    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'junegunn/vim-easy-align'

    " Plugin outside ~/.vim/plugged with post-update hook
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    " Plugin
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
