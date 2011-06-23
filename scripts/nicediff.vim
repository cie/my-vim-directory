hi DiffText ctermbg=None ctermfg=White
hi DiffChange ctermbg=None ctermfg=Red
hi SpellBad ctermbg=None ctermfg=None cterm=undercurl
vnoremap o :diffget<CR>
vnoremap O :diffput<CR>
nnoremap <F5> :diffupdate<CR>
