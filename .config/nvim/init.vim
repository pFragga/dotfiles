"
" ~/.config/nvim/init.vim
" Configuration file for Neovim.

" Plugin manager (vim-plug)
call plug#begin(stdpath('data') . '/plugged')

"" Tools
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'

"" Syntax & Language specific
Plug 'kovetskiy/sxhkd-vim'
Plug 'nvie/vim-flake8', { 'for': 'python' }

"" Eye candy
Plug 'ap/vim-css-color'
Plug 'jnurmine/Zenburn'
Plug 'junegunn/seoul256.vim'
Plug 'andreasvc/vim-256noir'

call plug#end()

" Basics
syntax on
filetype plugin indent on
set encoding=UTF-8
set fileformat=unix
set title
set noerrorbells
set noswapfile
set nobackup
set undofile
set autochdir
set clipboard+=unnamedplus
set guicursor=""

" Editor
set nowrap
set number relativenumber
set showmode
set lazyredraw
set colorcolumn=79
set nohlsearch incsearch
set ignorecase smartcase
set tabstop=4 softtabstop=4
set shiftwidth=4
set textwidth=79
set noexpandtab smarttab
set autoindent smartindent
set splitbelow splitright
set scrolloff=3
set foldmethod=expr
set foldlevel=99

" Remaps
let mapleader=" "
nnoremap <leader>pv :Explore<CR>
nnoremap <leader>h :Hexplore<CR>
nnoremap <leader>v :Vexplore<CR>
nnoremap <leader>nh :nohlsearch<CR>
nnoremap <leader>s :setlocal spell!<CR>
nnoremap <leader>nl :set list!<CR>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <leader>c :Goyo<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>, :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>gs :Git<CR>

" Abbreviations
abbreviate teh the
abbreviate ture true
abbreviate flase false
abbreviate nad and
abbreviate ckbx -<Space>[<Space>]

" Set correct file type
autocmd BufRead,BufNewFile fonts.conf set filetype=xml
autocmd BufRead,BufNewFile redshift.conf set filetype=dosini
autocmd BufRead,BufNewFile Xresources,xresources,*.xresources,*.Xresources
			\ set filetype=xdefaults
autocmd BufRead,BufNewFile dir_colors,*.dircolors
			\ set filetype=dircolors

" Automate settings and commands
autocmd FileType js,html,css,vue,xml set
			\ tabstop=2
			\ softtabstop=2
			\ shiftwidth=2
autocmd FileType tex map <F5>
			\ e:!zathura "$(echo % \| sed 's/tex$/pdf/')" --fork<CR><CR>
autocmd FileType java map <F5>
			\ :!javac % && java $(echo % \| sed 's/.java$//')<CR>
autocmd FileType java source /home/peter/.config/nvim/javasnippets.vim
autocmd BufWritePost *.tex :!xelatex %
autocmd BufWritePost *xresources :!xrdb -load %
autocmd BufWritePost *.py call flake8#Flake8()
autocmd TextYankPost * silent! lua vim.highlight.on_yank()

" Status line
set showtabline=1
set laststatus=1

" Colorscheme
source /home/peter/.config/nvim/colorsettings.vim
if has('gui_running')
	colorscheme zenburn
else
	set termguicolors
	colorscheme 256_noir
endif
