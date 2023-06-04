function InvertBG()
	if &background == "dark"
		let &background = "light"
	else
		let &background = "dark"
	endif
endfunction

nnoremap <leader>x :call InvertBG()<CR>

colorscheme paramount
