vim.keymap.set('n', '<F5>', ':!pdflatex %<CR><CR>', { buffer = 0 })
vim.keymap.set('n', '<F9>', ":!$READER $(echo % | sed 's/\\.tex/\\.pdf/')&<CR><CR>", { buffer = 0 })
