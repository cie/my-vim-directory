set pt=<F11>
set ai sts=4 sw=4 sta et
set ic sm scs is sc hls nohid
set aw
set bg=dark
set exrc ml
set secure
set fencs=utf-8,latin2
set spelllang=hu
set mouse=a
filetype plugin indent on

au Filetype html,xml,xsl,php,xhtml,xslt,rdoc source ~/.vim/scripts/closetag.vim 

"map z{ `>hha}<ESC>`<i{<ESC>
"map z( `>hha)<ESC>`<i(<ESC>
"map z[ `>hha]<ESC>`<i[<ESC>
"map z$ `>hha$<ESC>`<i$<ESC>
"map z< `>hha><ESC>`<i<<ESC>
"map z" `>hha"<ESC>`<i"<ESC>
"map z' `>hha'<ESC>`<i'<ESC>
"map z` `>hha`<ESC>`<i`<ESC>
nnoremap z{ %%v%<ESC>`>r}`<r{
nnoremap z( %%v%<ESC>`>r)`<r(
nnoremap z[ %%v%<ESC>`>r]`<r[
nnoremap z$ %%v%<ESC>`>r$`<r$
nnoremap z< %%v%<ESC>`>r>`<r<
nnoremap z" %%v%<ESC>`>r"`<r"
nnoremap z' %%v%<ESC>`>r'`<r'
nnoremap z` %%v%<ESC>`>r``<r`
nnoremap zdo %%v%<ESC>`<ido<CR><ESC>%%v%<ESC>`>a<CR>end<ESC>`>x`<x==

vnoremap z{ <ESC>`>a}<ESC>`<i{<ESC>
vnoremap z* <ESC>`>a*<ESC>`<i\*<ESC>
vnoremap z( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap z[ <ESC>`>a]<ESC>`<i[<ESC>
vnoremap z$ <ESC>`>a$<ESC>`<i$<ESC>
vnoremap z" <ESC>`>a"<ESC>`<i"<ESC>
vnoremap z# <ESC>`>a<bar><ESC>`<i#<ESC>
vnoremap z' <ESC>`>a'<ESC>`<i'<ESC>
vnoremap z` <ESC>`>a`<ESC>`<i`<ESC>
vnoremap z< <ESC>`>a><ESC>`<i<<ESC>

nnoremap z<SPACE> %%v%<ESC>`>x`<x
vnoremap z<SPACE> <ESC>`>z<SPACE>
map z} z{
map z) z(
map z> z<
map z] z[


imap <c-b> <del><esc> dwi
imap [3;5~ <del><esc> dwi
imap  <esc>lWi
" ctrl - } or ctrl-]
imap  [S1z=

map <F2> q/"*p<CR>

command! Timestamp r!date '+\%Y-\%m-\%d \%A \%H:\%M'

map <F9> :!if [ -f Rakefile ]; then rake; else make; fi<CR>
imap <F9> <ESC><F9>
map <F12> :e%:s?.h$?.cpp?<CR>
map <C-F12> :e%:s?.cpp$?.h?<CR>

command! -nargs=1 -range Bible r!diatheke -b HunUj -k <args>

let g:langpair="de:hu"
let g:vtranslate="zt"

command! -range MkLinks <line1>,<line2>s/.\{-}\([^/]\+\)$/<a href="&">\1<\/a>/

" for rails.vim plugin
:command! -bar -nargs=1 OpenURL :!gnome-open <args>

imap <M-o> <ESC>o


set rtp+=/usr/share/lilypond/2.12.3/vim/

" calculator
inoremap <C-X>= <ESC>vBy`>a=<C-R>=<C-R>"<CR>

nnoremap <CR> @:
nnoremap <ESC>e :e<SPACE>%<TAB><ESC>q:k$T/de:q<CR>:<UP>

vnoremap ZR :TTS<CR>

command! -range TTS call TTS(<line1>, <line2>)

function! TTS(start, end)
  let _ = system("espeak " . shellescape(join(getline(a:start, a:end), " ")). " -w /tmp/1.wav -s 150 -v en")
  exec "!mplayer /tmp/1.wav"
  let _ = system("rm /tmp/1.wav")
endfunc

" for latex-suite
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
call pathogen#infect()

" for atp
let g:atp_tab_map=1

map g :!git 

inoreabbr lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-n>"



map <F3> :NERDTreeFind<CR>
imap <F3> <Esc><F3>
