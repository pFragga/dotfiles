vim.keymap.set('n', '<leader>e', vim.cmd.Explore)
vim.keymap.set('n', '<leader>h', vim.cmd.Hexplore)
vim.keymap.set('n', '<leader>v', vim.cmd.Vexplore)
vim.keymap.set('n', '<leader>nh', vim.cmd.nohlsearch)
vim.keymap.set('n', '<leader>s', ':setlocal spell!<CR>')
vim.keymap.set('n', '<leader>nl', ':set list!<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<leader>c', vim.cmd.Goyo)