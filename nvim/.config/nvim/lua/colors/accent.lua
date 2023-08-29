local hour = os.date('*t').hour
local daytime = hour > 7 and hour < 19

vim.g.accent_darken = not daytime
vim.g.accent_invert_status = not daytime
vim.g.accent_auto_cwd_colour = 1
vim.g.accent_no_bg = 0

vim.cmd('colorscheme accent')
