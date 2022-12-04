call plug#begin('~/.vim/plugged')

    " Syntax
    Plug 'sheerun/vim-polyglot'

    " Themes
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'ayu-theme/ayu-vim'

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
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

    " Git
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-fugitive'

    " IDE
    Plug 'tpope/vim-commentary'
    Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/vim-easy-align'
    Plug 'airblade/vim-rooter'
    Plug 'mhinz/vim-signify'
    Plug 'yggdroot/indentline'
    Plug 'godlygeek/tabular'
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install --frozen-lockfile --production',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

    " Javascript or Typescript
    Plug 'eslint/eslint'
    Plug 'pangloss/vim-javascript'
    Plug 'dense-analysis/ale'

    " Python
    Plug 'vim-scripts/indentpython.vim'
    Plug 'vim-syntastic/syntastic'
    Plug 'nvie/vim-flake8'

call plug#end()
