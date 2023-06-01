" plugin manager (vim-plug)
source ~/.config/nvim/vim-plug.vim

" settings
source ~/.config/nvim/set.vim

" remaps
source ~/.config/nvim/remap.vim

abbreviate teh the
abbreviate ture true
abbreviate flase false
abbreviate nad and
abbreviate ckbx -<Space>[<Space>]

" automate settings and commands
autocmd BufWritePost *resources :!xrdb -load %
autocmd FileType java source ~/.config/nvim/javasnippets.vim
autocmd FileType js,html,css,vue,xml set
			\ tabstop=2
			\ softtabstop=2
			\ shiftwidth=2
autocmd FileType tex map <F5>
			\ :!"$READER" "$(echo % \| sed 's/tex$/pdf/')" --fork<CR><CR>
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
