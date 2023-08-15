-- personal
vim.keymap.set('n', '<Leader>e', ':Ex<CR>')
vim.keymap.set('n', '<Leader>nh', ':nohl<CR>')
vim.keymap.set('n', '<leader>s', ':setlocal spell!<CR>')
vim.keymap.set('n', '<leader>ls', ':set list!<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<leader>,', ':tabnew ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<leader><leader>', function()
	if vim.o.keymap == '' then
		vim.opt.keymap = 'greek_utf-8'
	else
		vim.opt.keymap = ''
	end
end)

-- fugitive
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fm', builtin.man_pages, {})

-- goyo
vim.keymap.set('n', '<Leader>g', ':Goyo<CR>')
