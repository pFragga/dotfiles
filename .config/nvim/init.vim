"
" ~/.config/nvim/init.vim
" Configuration file for Neovim.

" Vim-plug
call plug#begin(stdpath('data') . '/plugged')
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'uiiaoo/java-syntax.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'kovetskiy/sxhkd-vim'
Plug 'dylanaraps/wal.vim'
Plug 'itchyny/lightline.vim'
Plug 'romainl/Apprentice'
call plug#end()

" Basics
syntax on
filetype on
filetype plugin on
filetype indent on
set title
set noerrorbells
set noswapfile
set nobackup
set undofile

" Editor
set guicursor=
set nowrap
set number relativenumber
set showmode showcmd
set showmatch
set list
set lazyredraw
set clipboard+=unnamedplus
set colorcolumn=100
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab expandtab
set autoindent smartindent
set textwidth=100
set formatoptions-=cro
set formatoptions+=n1
set nohlsearch incsearch
set ignorecase smartcase
set wildmode=list,full
set splitright splitbelow

" Leader key bindings
let mapleader=" "
nnoremap <leader>e :Explore<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>l :Limelight!!<CR>
nnoremap <leader>nh :noh<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :setlocal spell!<CR>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" Abbreviations
abbreviate teh the
abbreviate ture true
abbreviate nad and

" Automate settings and commands
autocmd BufRead,BufNewFile *.tex map <F5> :!zathura $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
autocmd BufRead,BufNewFile *.c,*.h,*.asm,*.s set noexpandtab
autocmd BufRead,BufNewFile *.js,*.html,*.css,*.vue set tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.java map <F5> :!javac % && java $(echo % \| sed 's/.java$//')<CR>
autocmd BufRead,BufNewFile *.java so /home/peter/.config/nvim/ab_java.vim
autocmd BufWritePost *.tex :!xelatex %
autocmd BufWritePost xresources :!xrdb -load %
autocmd TextYankPost * silent! lua vim.highlight.on_yank()

" Set correct file type
autocmd BufRead,BufNewFile fonts.conf set filetype=xml
autocmd BufRead,BufNewFile redshift.conf set filetype=dosini
autocmd BufRead,BufNewFile Xresources,xresources,*.xresources,*.Xresources set filetype=xdefaults
autocmd BufRead,BufNewFile dir_colors,*.dircolors set filetype=dircolors

" File type options
let g:tex_flavor="latex"

" Statusline
let g:lightline={
            \ 'colorscheme': 'apprentice',
            \ }

" Colorscheme
colorscheme apprentice
autocmd VimEnter * hi Normal ctermbg=none
