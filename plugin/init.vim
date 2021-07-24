" ====================
" Autoinstall vim-plug
" ====================
let data_dir = stdpath('data') . '/site/autoload'
if empty(glob(data_dir . '/plug.vim'))
  silent exe '!curl -fLo '.data_dir.'/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter *.vim
        \ PlugInstall --sync
        \| source $MYVIMRC
endif
" ===================
" Autoinstall plugins
" ===================
autocmd VimEnter *.vim
      \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync
      \| silent exe '!find '.data_dir.'/plugged -type f -print0 | xargs -0 dos2unix'
      \| endif
" ==============
" Charge plugins
" ==============
call plug#begin(data_dir . '/plugged')
Plug 'sainnhe/sonokai'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-bufferline'
Plug 'moll/vim-bbye'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'kevinhwang91/rnvimr'
call plug#end()
" =====================
" Charge plugins config
" =====================
source ~/.config/nvim/plugin/sonokai.vim
source ~/.config/nvim/plugin/vim-bufferline.vim
source ~/.config/nvim/plugin/fzf.vim
source ~/.config/nvim/plugin/rnvimr.vim
" ====================
" Charge other configs
" ====================
nnoremap <leader>d :Bdelete<CR>
