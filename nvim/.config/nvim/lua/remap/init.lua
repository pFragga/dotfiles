vim.keymap.set('n', '<leader>s', ':setlocal spell!<CR>')
vim.keymap.set('n', '<leader>ls', ':set list!<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-space>', function()
	if vim.o.keymap == '' then
		vim.opt.keymap = 'greek_utf-8'
	else
		vim.opt.keymap = ''
	end
end)
vim.keymap.set('n', '<leader>,', ':e $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>x', ':!chmod +x %<CR>')
vim.keymap.set('n', '<leader>py', ':sp term://python<CR>')
