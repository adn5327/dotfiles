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

"remap // to search for visually selected text
vnoremap // "zy/<C-R>"<CR>

"easy source vimrc
nnoremap sorc :so $MYVIMRC<CR>

"enable search highlighting
let @/ = ""
set hlsearch
"remap f to remove search highlighting
nnoremap f :noh<CR>

"remap keys for tab navigation
nnoremap <C-n> :tabnew<CR>
nnoremap tn :tabnext<CR>
nnoremap tp :tabprevious<CR>

"remap keys for easier split navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

"make splits open to right and bottom
set splitbelow
set splitright

"display relative path in statusline, and always display it
"set statusline=%f
"set statusline+=%m
set laststatus=2

set background=dark
colorscheme solarized

set mouse=a
"need this to get mouse to work properly from within tmux
set ttymouse=xterm2

execute pathogen#infect()
