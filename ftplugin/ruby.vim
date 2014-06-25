setlocal sw=2
setlocal tw=80
setlocal fo+=t

nnoremap z( %%v%<ESC>`>r)`<r(
vnoremap z( <ESC>`>a)<ESC>`<s(<ESC>
nnoremap z<SPACE> %%v%<ESC>`>x`<r<SPACE>
vnoremap z<SPACE> <ESC>`>z<SPACE>

let $GEMS="/home/cie/.rvm/gems/ruby-1.9.2-p290/gems"

vnoremap K y:vim /"/ ./**/*.rb<CR>

nnoremap <buffer> p pma`[v`]=`a
nnoremap <buffer> P Pma`[v`]=`a
xnoremap <buffer> p pma`[v`]=`a
xnoremap <buffer> P Pma`[v`]=`a

let g:ruby_path=",,lib"
let s:ruby_path = g:ruby_path
let &l:path = s:ruby_path


inoreab <buffer> begin begin<cr>end <esc>kA
inoreab <buffer> case case<cr>end <esc>kA
inoreab <buffer> class class<cr>end <esc>kA
inoreab <buffer> def def<cr>end <esc>kA
inoreab <buffer> do do<cr>end <esc>kA
inoreab <buffer> for for<cr>end <esc>kA
inoreab <buffer> module module<cr>end <esc>kA

