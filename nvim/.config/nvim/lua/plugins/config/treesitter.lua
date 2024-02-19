require'nvim-treesitter.configs'.setup {
	ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query' },
	sync_install = false,
	auto_install = true,
	ignore_install = {},

	highlight = {
		enable = false,
		additional_vim_regex_highlighting = false,
	},

	incremental_selection = {
		enable = false,
	},

	indent = {
		enable = false,
	},
}
