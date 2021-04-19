if &t_Co > 2
  set t_Co=256
	syntax enable
	packadd! dracula
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
	" noremap <F12> <Esc>:syntax sync fromstart<CR>
	" inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif
