function invert_bg()
	if vim.o.background == 'dark' then
		vim.o.background = 'light'
	else
		vim.o.background = 'dark'
	end
end
vim.keymap.set('n', '<leader>x', invert_bg)

vim.cmd.colorscheme('solarized')
