" convert to html
nnoremap <Leader>htm :!pandoc % > %:t:r.html<CR>

" convert to pdf
nnoremap <Leader>pdf :!pandoc --shift-heading-level-by=-1 --pdf-engine xelatex % -o %:t:r.pdf<CR>

" show preview in terminal
nnoremap <F5> :!lowdown -tterm % \| less -R<CR>
