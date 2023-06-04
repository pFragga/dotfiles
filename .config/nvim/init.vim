" plugin manager (vim-plug)
so ~/.config/nvim/vim-plug.vim

" settings
so ~/.config/nvim/set.vim

" remaps
so ~/.config/nvim/remap.vim

" general abbreviations
so ~/.config/nvim/abbreviate.vim

" automate stuff
autocmd BufWritePost *resources :!xrdb -load %
autocmd FileType java source ~/.config/nvim/javasnippets.vim
autocmd FileType js,html,css,vue,xml set
			\ tabstop=2
			\ softtabstop=2
			\ shiftwidth=2
autocmd FileType tex map <F5>
			\ :!"$READER" "$(echo % \| sed 's/tex$/pdf/')" --fork<CR><CR>
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
