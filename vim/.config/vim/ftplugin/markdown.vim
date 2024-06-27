" enable header folding
let g:markdown_folding=1

setlocal nonumber norelativenumber conceallevel=2

" TODO: add spellchecking for Greek
setlocal spell spelllang=en_us

" convert current document to html
nnoremap <Leader>htm :!pandoc % > %:t:r.html<CR>

" show preview in terminal
nnoremap <F5> :!lowdown -tterm % \| less -R<CR>
