return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'tpope/vim-fugitive'
	use 'baskerville/vim-sxhkdrc'
	use 'hossein-lap/vim-lupper'
	use 'junegunn/goyo.vim'
end)
