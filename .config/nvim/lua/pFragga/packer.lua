-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use ('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}
}

	use {
		'maxmx03/solarized.nvim',
		config = function ()
			local success, solarized = pcall(require, 'solarized')

			vim.o.background = 'dark'

			solarized:setup {
				config = {
					theme = 'vscode', -- or 'vim' or 'neovim'
					transparent = false
				},
				highlights = function(colors, darken, lighten, blend)
					return {
						Comment = { fg = colors.comment, italic = false },
					}
				end
			}

			vim.cmd 'colorscheme solarized'
		end
	}

	use ('owickstrom/vim-colors-paramount')
	
	use ('masukomi/vim-markdown-folding')

	use ('ap/vim-css-color')

	use ('junegunn/goyo.vim')

end)
