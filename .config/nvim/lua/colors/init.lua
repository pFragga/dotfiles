-- set a light colorscheme during daytime
local hour = os.date('*t').hour
if hour > 7 and hour < 19 then
	vim.cmd('colorscheme peachpuff')
else
	vim.cmd('colorscheme lupper')
end
