local set = vim.opt

set.guicursor = 'a:block'

set.swapfile = false
set.backup = false
set.undofile = true

set.autochdir = true

set.lazyredraw = true

set.clipboard:append { 'unnamedplus' }

set.number = true
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

set.colorcolumn = '+1'
set.textwidth = 79

set.title = true
set.titleold = os.getenv('TERMINAL')

set.cursorline = true
set.cursorlineopt = 'number'
