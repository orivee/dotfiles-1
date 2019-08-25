let g:fzf_layout = { "window": "silent botright 16split enew" }
let g:fzf_commits_log_options = '--graph --color=always
  \ --format="%C(yellow)%h%C(red)%d%C(reset)
  \ - %C(bold green)(%ar)%C(reset) %s %C(blue){%an}%C(reset)"'

nnoremap <silent> <Space><Space> :Files<CR>
nnoremap <silent> <Space>.       :Files <C-r>=expand("%:h")<CR>/<CR>
nnoremap <silent> <Space>,       :Buffers<CR>
nnoremap <silent> <Space>]       :Tags<CR>
nnoremap <silent> <Space>[       :BTags<CR>
nnoremap <silent> <Space>c       :BCommits<CR>
nnoremap <silent> <Space>g       :GFiles?<CR>
nnoremap <silent> <Space>s       :Snippets<CR>
nnoremap <silent> <Space>?       :Helptags<CR>
" Project-wide search for the supplied term.
noremap <Space>/ :Rg<Space>
" Mapping selections for various modes.
nmap <Space>! <Plug>(fzf-maps-n)
omap <Space>! <Plug>(fzf-maps-o)
xmap <Space>! <Plug>(fzf-maps-x)
imap <C-x>!   <Plug>(fzf-maps-i)

if filereadable('config/routes.rb')
    " This looks like a Rails app.
    nnoremap <silent> <Space>ec :Files app/controllers<CR>
    nnoremap <silent> <Space>eh :Files app/helpers<CR>
    nnoremap <silent> <Space>em :Files app/models<CR>
    nnoremap <silent> <Space>es :Files app/assets/stylesheets<CR>
    nnoremap <silent> <Space>et :Files spec<CR>
    nnoremap <silent> <Space>ev :Files app/views<CR>
elseif filereadable('src/index.js')
    " This looks like a React app.
    nnoremap <silent> <Space>ec :Files src/components<CR>
    nnoremap <silent> <Space>es :Files src/styles<CR>
    nnoremap <silent> <Space>et :Files src/__tests__/components<CR>
endif