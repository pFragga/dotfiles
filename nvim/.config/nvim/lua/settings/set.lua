local set = vim.opt

set.autoindent = true
set.colorcolumn = '+1'
set.foldmethod = 'syntax'
set.guicursor = ''
set.history = 500
set.ignorecase = true
set.lazyredraw = true
set.path:append { '**' }
set.shiftwidth = 4
set.smartcase = true
set.smartindent = true
set.softtabstop = 4
set.statusline = '%<%f %h%m%r%{FugitiveStatusline()}%=%k %-14.(%l,%c%V%) %P'
set.tabstop = 4
set.textwidth = 79
set.undofile = true
