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
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}
    Plug 'cdelledonne/vim-cmake'
call plug#end()

colorscheme catppuccin-mocha
let g:airline_theme='zenburn'

nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>x :x<CR>


nnoremap <silent> <Leader>n :set relativenumber!<CR>

nnoremap <silent> <Leader><Tab> :wincmd p<CR>

autocmd VimEnter * NERDTree | wincmd p
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>

nnoremap <silent> <Leader>c :e CMakeLists.txt<CR>
nnoremap <silent> <Leader>g :CMakeGenerate<CR>
nnoremap <silent> <Leader>b :CMakeBuild<CR>
nnoremap <silent> <Leader>x :CMakeClean<CR> 

