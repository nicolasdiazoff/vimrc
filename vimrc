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

" Modify indenting settings
set autoindent              " autoindent always ON.

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode
set hidden

if &t_Co > 2

	"""" enable the theme
  set t_Co=256
	packadd! dracula
	syntax enable
	colorscheme dracula
  set background=dark
	highlight Normal ctermbg=532
  let g:airline_theme='dracula'
	let g:dracula_bold = 1
	let g:dracula_italic = 1
	let g:dracula_underline = 1
	let g:dracula_undercurl = 1
	let g:dracula_inverse = 1
  let g:dracula_colorterm = 1

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	" Sometimes I see the syntax be out of sync
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

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
"set fillchars+=vert:\┊

"Prettier
nmap <F8> :Prettier<CR>
set sw=2
set tabstop=2
set shiftwidth=4
set expandtab

set nowrap              " don't wrap long lines
set number              " show line numbers
set showmatch           " higlight matching parentheses and brackets

let mapleader=" "

" Relative numbering is pretty useful for motions (3g, 5k...). However I'd
" prefer to have a way for switching relative numbers with a single map.
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a


" Save and Quit shorcuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Shortcuts for switching between tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Copy and paste in clipboard
map <Leader>y "+y<CR>
map <Leader>p "+p<CR>
