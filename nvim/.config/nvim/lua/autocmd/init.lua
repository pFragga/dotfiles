local setlocal = vim.opt_local

vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	desc = 'Briefly highlight yanked text'
})

vim.api.nvim_create_autocmd('BufWritePost', {
	pattern = {'*Xresources', '*xresources'},
	command = '!xrdb -merge %',
	desc = 'Reload xrdb after modifying Xresources'
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = {'html', 'css', 'javascript', 'typescript', 'json', 'xml', 'vue'},
	callback = function()
		setlocal.expandtab = true
		setlocal.tabstop = 2
		setlocal.softtabstop = 2
		setlocal.shiftwidth = 2
	end,
	desc = '2-space indenting for the filetypes mentioned above'
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'tex',
	callback = function()
		vim.keymap.set('n', '<F5>', ':!pdflatex %<CR><CR>', { buffer = 0 })
		vim.keymap.set('n', '<F9>', ":!$READER $(echo % | sed 's/\\.tex/\\.pdf/')&<CR><CR>", { buffer = 0 })
	end,
	desc = 'Shortcuts for compiling and previewing TeX documents'
})

vim.api.nvim_create_autocmd('BufEnter', {
	pattern = {'TODO', 'README'},
	callback = function()
		setlocal.filetype = 'markdown'
	end,
	desc = 'Treat these as markdown files'
})
