local setlocal = vim.opt_local

setlocal.number = false
setlocal.relativenumber = false
vim.keymap.set('v', '<leader>gv', ":!grep -v '[x]'<CR>")