let g:no_flake8_maps=1
let g:flake8_show_in_gutter=1

autocmd BufWritePost *.py call flake8#Flake8()
