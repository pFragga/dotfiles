local setlocal = vim.opt_local
local cmd = vim.cmd

vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	desc = 'Briefly highlight yanked text'
})

vim.api.nvim_create_autocmd('BufWritePost', {
	pattern = {"*Xresources", "*xresources"},
	callback = function()
		cmd('!xrdb -merge %')
	end,
	desc = 'Reload xrdb after modifying Xresources'
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = {'html', 'css', 'javascript', 'typescript', 'xml', 'vue'},
	callback = function()
		setlocal.tabstop = 2
		setlocal.shiftwidth = 2
	end,
	desc = '2-space indenting for the filetypes mentioned above'
})

vim.api.nvim_create_autocmd('BufWritePost', {
	pattern = '*.py',
	callback = function()
		cmd('!flake8 %')
	end,
	desc = 'Call flake8 after writing to a Python file'
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'markdown',
	callback = function()
		setlocal.number = false
		setlocal.relativenumber = false
	end,
	desc = 'Disable line numbers in Markdown files'
})
