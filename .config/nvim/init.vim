"
" ~/.config/nvim/init.vim
" Configuration file for Neovim.

" Plugin manager (vim-plug)
call plug#begin(stdpath('data') . '/plugged')

"" Tools
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'

"" Syntax
Plug 'preservim/vim-markdown'
Plug 'kovetskiy/sxhkd-vim'
Plug 'nvie/vim-flake8'

"" Eye candy
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'jnurmine/Zenburn'
Plug 'junegunn/seoul256.vim'

call plug#end()

" Basics
syntax on
filetype on
filetype plugin on
filetype indent on
set encoding=utf-8
set fileformat=unix
set title
set noerrorbells
set noswapfile
set nobackup
set undofile
set autochdir
set clipboard+=unnamedplus

" Editor
set guicursor=""
set nowrap
set number relativenumber
set showmode showcmd showmatch
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
set foldmethod=syntax
set foldlevel=99

" Keybindings
let mapleader=" "
nnoremap <leader>e :Explore<CR>
nnoremap <leader>h :Hexplore<CR>
nnoremap <leader>v :Vexplore<CR>
nnoremap <leader>nh :nohlsearch<CR>
nnoremap <leader>s :setlocal spell!<CR>
nnoremap <leader>nl :set list!<CR>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>, :vsplit ~/.config/nvim/init.vim<CR>

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
			\ :!zathura "$(echo % \| sed 's/tex$/pdf/')" & disown<CR><CR>
autocmd FileType java map <F5>
			\ :!javac % && java $(echo % \| sed 's/.java$//')<CR>
autocmd FileType java source /home/peter/.config/nvim/ab_java.vim
autocmd BufWritePost *.tex :!xelatex %
autocmd BufWritePost *xresources :!xrdb -load %
autocmd BufWritePost *.py call flake8#Flake8()
autocmd TextYankPost * silent! lua vim.highlight.on_yank()

" Status line
set showtabline=1
set laststatus=1

" Colorscheme
source /home/peter/.config/nvim/colorsettings.vim
set termguicolors
if has('gui_running')
	colorscheme gruvbox
else
	colorscheme seoul256
endif
