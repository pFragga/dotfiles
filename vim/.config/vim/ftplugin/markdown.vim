" enable header folding
let g:markdown_folding=1

setlocal nonumber norelativenumber conceallevel=2

" TODO: add spellchecking for Greek
setlocal spell spelllang=en_us

" convert to html
nnoremap <Leader>htm :!pandoc % > %:t:r.html<CR>

" convert to pdf
nnoremap <Leader>pdf :!pandoc --shift-heading-level-by=-1 --pdf-engine xelatex % -o %:t:r.pdf

" show preview in terminal
nnoremap <F5> :!lowdown -tterm % \| less -R<CR>
