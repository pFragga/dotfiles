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
	pattern = {'html', 'css', 'javascript', 'typescript', 'xml', 'vue'},
	callback = function()
		setlocal.tabstop = 2
		setlocal.shiftwidth = 2
	end,
	desc = '2-space indenting for the filetypes mentioned above'
})

vim.api.nvim_create_autocmd('BufWritePost', {
	pattern = '*.py',
	command = '!flake8 %',
	desc = 'Call flake8 after writing to a Python file'
})

vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
	pattern = '*.md',
	callback = function()
		setlocal.number = false
		setlocal.relativenumber = false
		vim.keymap.set('v', '<leader>gv', ":!grep -v '[x]'<CR>")
	end,
	desc = 'Customizations for Markdown documents'
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = {'tex', 'latex'},
	group = tex_group,
	callback = function()
		vim.keymap.set('n', '<F5>', ':!pdflatex %<CR><CR>', { buffer = 0 })
		vim.keymap.set('n', '<F9>', ":!$READER $(echo % | sed 's/\\.tex/\\.pdf/')&<CR><CR>", { buffer = 0 })
	end,
	desc = 'Customizations for LaTeX documents'
})
