set number
set ruler

set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

set backspace=indent,eol,start
set cursorline
set hlsearch
set lazyredraw
set ttyfast
syntax on

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

map <leader>sc :setlocal spell! spelllang=en_us<cr>

nnoremap <space> :nohl<cr>

nnoremap H gT
nnoremap L gt

set timeoutlen=1000 ttimeoutlen=0
