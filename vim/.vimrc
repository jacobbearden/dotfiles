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

hi LineNr cterm=bold ctermfg=black

map <leader>sc :setlocal spell! spelllang=en_us<cr>

nnoremap <space> :nohl<cr>

nnoremap H gT
nnoremap L gt

set timeoutlen=1000 ttimeoutlen=0
