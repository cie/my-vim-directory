nnoremap <silent> <buffer> <leader>o :JavaImportMissing<cr>:JavaImportClean<cr>:JavaImportSort<cr>
nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>
nnoremap <silent> <buffer> <leader>1 :JavaCorrect<cr>
nnoremap <silent> <buffer> <leader>s :JavaSearch 
nnoremap <silent> <buffer> <leader>g :JavaGet<cr>
nnoremap <silent> <buffer> <leader>G :JavaSet<cr>

set matchpairs+=<:>
