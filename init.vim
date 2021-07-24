" ==============
" Neovim Options
" ==============
syntax enable
set hidden
set wrap
set linebreak
set whichwrap+=<,>,[,],h,l
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=1
set mouse=a
set splitbelow
set splitright
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set number
set relativenumber
set noshowmode
set nobackup
set nowritebackup
set signcolumn=yes
set clipboard+=unnamedplus
set incsearch
" ============
" Key mappings
" ============
let mapleader=" "
nnoremap <Space> <Nop>            " Leader key
vnoremap < <gv                    " Indent visual
vnoremap > >gv
nnoremap <silent> <F1> :w<CR>     " Save & quit
inoremap <silent> <F1> <C-o>:w<CR>
nnoremap <silent> <F2> :q<CR>
nnoremap J 5j                     " Fast movement
nnoremap K 5k
nnoremap j gj
nnoremap k gk
nnoremap <C-j> <C-w><C-j>         " Split navigation
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <silent> <TAB> :bn<CR>   " Buffer navigation
nnoremap <silent> <S-TAB> :bp<CR>
" ============
" Call plugins
" ============
source ~/.config/nvim/plugin/init.vim
" ===========
" Auto source
" ===========
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
