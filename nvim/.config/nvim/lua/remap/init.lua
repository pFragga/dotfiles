vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>nh', ':set hlsearch!<CR>')
vim.keymap.set('n', '<leader>s', ':setlocal spell!<CR>')
vim.keymap.set('n', '<leader>ls', ':set list!<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<leader><leader>', function()
	if vim.o.keymap == '' then
		vim.opt.keymap = 'greek_utf-8'
	else
		vim.opt.keymap = ''
	end
end)
vim.keymap.set('n', '<leader>,', ':tabnew ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<leader>x', ':!chmod +x %<CR>')
