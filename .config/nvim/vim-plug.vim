call plug#begin(stdpath('data') . '/plugged')

" Tools
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" or                                , { 'branch': '0.1.x' }

" Syntax & Language specific
Plug 'kovetskiy/sxhkd-vim'
Plug 'nvie/vim-flake8', { 'for': 'python' }

" Eye candy
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'owickstrom/vim-colors-paramount'

call plug#end()
