set number
set numberwidth=3
syntax on

"tab widths set to4, spaces as tabs
set tabstop=4
set shiftwidth=4
set expandtab

"autocmd Filetype python setlocal noexpandtab tabstop=4 shiftwidth=4


"remap jk as the Esc option in insert mode
inoremap jk <Esc>

"display relative path in statusline, and always display it
set statusline=%f
set statusline+=%m
set laststatus=2

set background=dark
colorscheme solarized

set mouse=a
"need this to get mouse to work properly from within tmux
set ttymouse=xterm2
