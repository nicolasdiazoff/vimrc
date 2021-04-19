
" Enable auto formatting of files that have "@format" or "@prettier" tag
let g:prettier#autoformat = 0

" Allow auto formatting for files without "@format" or "@prettier" tag
let g:prettier#autoformat_require_pragma = 0

" By default we auto focus on the quickfix when there are errors but can also be disabled
let g:prettier#quickfix_auto_focus = 1

let g:prettier#exec_cmd_async = 1

" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 1
autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Others config
let g:prettier#autoformat_config_present = 1
let g:prettier#config#prose_wrap = 'never'
let g:prettier#config#require_pragma = 'false'

" File settings
let g:prettier#config#config_precedence = 'file-override'

" Formart stetic settings
let g:prettier#config#print_width = 'auto'
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'auto'
let g:prettier#config#parser = ''

" css|strict|ignore
" default: 'css'
let g:prettier#config#html_whitespace_sensitivity = 'css'

" Define the flavor of line endings
" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')
