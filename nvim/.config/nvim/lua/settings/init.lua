local set = vim.opt
local g = vim.g

-- local settings
set.guicursor = 'a:block'

set.swapfile = false
set.backup = false
set.undofile = true

set.autochdir = true

set.lazyredraw = true

set.clipboard:append { 'unnamedplus' }

set.number = false
set.relativenumber = true
set.wrap = false

set.hlsearch = false
set.incsearch = true

set.ignorecase = true
set.smartcase = true

set.tabstop = 4
set.shiftwidth = 4
set.expandtab = false
set.smarttab = true
set.smartindent = true

set.splitright = true
set.splitbelow = true

set.list = true

set.colorcolumn = '80'
set.textwidth = 79
set.signcolumn = 'yes'

set.title = true
set.titleold = os.getenv('TERMINAL')

-- global
g.mapleader = ' '
g.markdown_folding = true
