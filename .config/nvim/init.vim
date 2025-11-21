set cursorline
set hidden
set number
set relativenumber
set termguicolors
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

filetype plugin indent on

call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'catppuccin/nvim'
call plug#end()

colorscheme catppuccin-mocha
let g:airline_theme='zenburn'

autocmd VimEnter * NERDTree | wincmd p
nnoremap <C-t> :NERDTreeToggle<CR>
