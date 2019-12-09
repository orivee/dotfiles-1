let g:ale_fixers = {
 \  'css':        ['prettier'],
 \  'dart':       ['dartfmt'],
 \  'javascript': ['prettier-standard'],
 \  'json':       ['prettier'],
 \  'ruby':       ['standardrb'],
 \  'scss':       ['prettier'],
 \  'yml':        ['prettier'],
 \}
let g:ale_linters = {
 \  'css':        ['csslint'],
 \  'dart':       ['dart-analysis-server-lsp'],
 \  'javascript': ['standard'],
 \  'json':       ['jsonlint'],
 \  'markdown':   ['mdl'],
 \  'ruby':       ['standardrb'],
 \  'scss':       ['sasslint'],
 \  'yaml':       ['yamllint'],
 \}
let g:ale_completion_enabled       = 0
let g:ale_fix_on_save              = 0
let g:ale_lint_on_enter            = 1
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave     = 0
let g:ale_lint_on_save             = 1
let g:ale_lint_on_text_changed     = 'never'
let g:ale_linters_explicit         = 1
let g:ale_open_list                = 0
let g:ale_sign_error               = '❯❯'
let g:ale_sign_info                = '❯❯'
let g:ale_sign_warning             = '❯❯'
let g:ale_sign_priority            = 50
let g:ale_virtualtext_cursor       = 1
let g:ale_virtualtext_prefix       = '● '

" Use ~/dotfiles/vim/after/plugin/unimpaired.vim square brackets 'w'
" mappings to navigate the location list
nmap <silent> [W :lfirst<CR>zz
nmap <silent> ]W :llast<CR>zz
nmap <Space>f    <Plug>(ale_fix)
nmap <Space>l    <Plug>(ale_toggle_buffer)

" Use the Dart Analysis Server (LSP) as the Dart linter.
call ale#linter#Define('dart', {
 \  'name': 'dart-analysis-server-lsp',
 \  'lsp': 'stdio',
 \  'executable': 'dart-analysis-server-lsp.sh',
 \  'command': '%e',
 \  'project_root': function('ale_linters#dart#language_server#GetProjectRoot'),
 \})
