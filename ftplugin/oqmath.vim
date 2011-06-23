
let oqmathMappings=0

runtime! ftplugin/xml.vim ftplugin/xml_*.vim ftplugin/xml/*.vim
" source /opt/activemath/vim/syntax/oqmath.vim

function! Greek(let)
  if a:let=="a"
    return "alpha"
  elseif a:let=="b"
    return "beta"
  elseif a:let=="g"
    return "gamma"
  elseif a:let=="d"
    return "delta"
  elseif a:let=="e"
    return "epsilon"
  elseif a:let=="p"
    return "pi"
  elseif a:let=="w"
    return "omega"
  elseif a:let=="A"
    return "Alpha"
  elseif a:let=="B"
    return "Beta"
  elseif a:let=="G"
    return "Gamma"
  elseif a:let=="D"
    return "Delta"
  elseif a:let=="E"
    return "Epsilon"
  elseif a:let=="P"
    return "Pi"
  elseif a:let=="W"
    return "Omega"
  else
    return "???"
  endif
endfunc
noremap <F4> "ky<SPACE>:let @r=Greek(@k)<CR>v"rp`<
inoremap <F4> <ESC>l<F4>ea
vnoremap <F4> <ESC>mb`<ma`b<F4>`av`be

if oqmathMappings
  " vmode equation editing
  vnoremap ^ <ESC>i^<ESC>`<v`>l
  vnoremap ( <ESC>i(<ESC>`<v`>l
  vnoremap ) <ESC>i)<ESC>`<v`>l
  vnoremap <BS> <ESC>i<BS><ESC>`<v`>h
  vnoremap = <ESC>i=<ESC>`<v`>l
  "vnoremap > <ESC>i&gt;<ESC>`<v`>4l
  "vnoremap < <ESC>i&lt;<ESC>`<v`>4l
  vnoremap * <ESC>i*<ESC>`<v`>l
  vnoremap _ <ESC>i_<ESC>`<v`>l
  vnoremap . <ESC>i.<ESC>`<v`>l
  vnoremap <ESC>v <ESC>ivector(<ESC>ea)<ESC>`<v`>8l
  vnoremap ^ <ESC>i^<ESC>`<v`>l
  vnoremap ^ <ESC>i^<ESC>`<v`>l
  vnoremap ^ <ESC>i^<ESC>`<v`>l
  vnoremap ^ <ESC>i^<ESC>`<v`>l
  vnoremap / <ESC>:se paste<CR>i/<ESC>:se nopaste<CR>`<v`>l
endif

" alternate solution
noremap <C-F9> mai
inoremap <C-F9> <ESC>mb`ai$<ESC>`bla$<ESC>l
inoremap <F9> <ESC>mb`ai$<ESC>`blla$<ESC>l

function! LineNumber()
  mark a
  /(\d\+'*)/ del
  'a put
  s/\s//g
  norm 0i<with style="float:right">
  norm $a</with>
endf
map <F3> :call LineNumber()<CR>
vunmap <F3>

fu! ByWord(key, before, after, motion, vmotion)
  exec "map " . a:key . " :se paste<CR>i" . a:before . "<ESC>ea" . a:after . "<ESC>:se nopaste<CR>" . a:motion
  exec "vmap " . a:key . " <ESC>:se paste<CR>`>a" . a:after . "<ESC>`<i" . a:before . "<ESC>:se nopaste<CR>" . a:vmotion
endf

fu! ByLine(key, before, after, motion, vmotion)
  exec "map " . a:key . " O" . a:before . "<ESC>j==o" . a:after . "<ESC>" . a:motion
  exec "vmap " . a:key . " <ESC>:se paste<CR>`<O" . a:before . "<ESC>`<v`>=`>o" . a:after . "<ESC>:se nopaste<CR><CR>" . a:vmotion
endf

" by-word
call ByWord("<F7>", '<highlight type="important">', "</highlight>", "", "e")
call ByWord("<F8>", '<highlight type="noticable">', "</highlight>", "", "e")
call ByWord("<F9>", '$', "$", "", "`>3l")

if oqmathMappings
  call ByWord("<ESC>d", '<td>', "</td>", "", "")
  call ByWord("<ESC>h", '<th>', "</th>", "", "")
  call ByWord("<ESC>w", '<with style="@">', "</with>", "'</@<CR>", "'</@<CR>")
  call ByWord("<ESC>V", 'vector(', ")", "", "`>9l")
  call ByWord("<ESC>B", 'bold(', ")", "", "`>7l")

  "map <F7> i<highlight type="important"><ESC>ea</highlight><ESC>
  "vmap <F7> <ESC>`>a</highlight><ESC>`<i<highlight type="important"><ESC>e
  "map <F8> i<highlight type="noticable"><ESC>ea</highlight><ESC>
  "vmap <F8> <ESC>`>a</highlight><ESC>`<i<highlight type="noticable"><ESC>e
  "map <F9> i$<ESC>ea$<ESC>
  "vmap <F9> <ESC>`>a$<ESC>`<i$<ESC>`>3l

  " linewise
  call ByLine("<ESC>p", '<p>', "</p>", "k", "")
  call ByLine("<ESC>o", '<p style="cm">', "</p>", "k", "")
  call ByLine("<ESC>t", '<table style="margin:auto">', "</table>", "", "")
  call ByLine("<ESC>r", '<tr>', "</tr>", "", "")
  call ByLine("<ESC>u", '<ul>', "</ul>", "", "")
  call ByLine("<ESC>D", '<td>', "</td>", "", "")
  call ByLine("<ESC>H", '<th>', "</th>", "", "")
  call ByLine("<ESC>W", '<with style="@">', "</with>", "'</@<CR>", "'</@<CR>")
  call ByLine("<ESC>x", '</CMP><CR><CR><CMP xml:lang="x-all">', "</CMP><CR><CR><CMP>", "", "")
  nmap <ESC>x V%<ESC>x
  nmap <ESC>y kVj%<ESC>x
  "map <ESC>p O<p><ESC>jo</p><ESC>k
  "vmap <ESC>p <ESC>`<O<p><ESC>`>o</p><ESC>
  "map <ESC>o O<p style="cm"><ESC>jo</p><ESC>k
  "vmap <ESC>o <ESC>`<O<p style="cm"><ESC>`>o</p><ESC>
  "map <ESC>t O<table><ESC>jo</table><ESC>
  "vmap <ESC>t <ESC>`<O<table><ESC>`>o</table><ESC>
  "map <ESC>r O<tr><ESC>jo</tr><ESC>
  "vmap <ESC>r <ESC>`<O<tr><ESC>`>o</tr><ESC>

  " inline
  map <ESC>l I<li><ESC>A</li><ESC>:s/\*/<CR>j
  vmap <ESC>l <ESC>`<O<li><ESC>`>o</li><ESC>
endif

fun! CleanDe()
  try
    s/ü/ue/g
  catch /^Vim\%((\a\+)\)\=:E486/
  endtry
  try
    s/ö/oe/g
  catch /^Vim\%((\a\+)\)\=:E486/
  endtry
  try
    s/ä/ae/g
  catch /^Vim\%((\a\+)\)\=:E486/
  endtry
  try
    s/ß/ss/g
  catch /^Vim\%((\a\+)\)\=:E486/
  endtry
endf


function! NewLO()
  " input type
  let @t=input("LO type? (asser[t]ion/[a]xiom/[e]xample/e[x]ercise/omtext[n]/[s]ymbol/p[roof]) ")
  if @t == ""
    return
  elsei @t =~ "^t$"
    let @t="assertion"
  elsei @t =~ "^a$"
    let @t="axiom"
  elsei @t =~ "^e$"
    let @t="example"
  elsei @t =~ "^x$"
    let @t="exercise"
  elsei @t =~ "^n$"
    let @t="omtext"
  elsei @t =~ "^s$"
    let @t="symbol"
  elsei @t =~ "^p$"
    let @t="proof"
  else
    echo "Wrong type: " . @t
    return
  endi
  let @n=input("Title? ")
  if @n == ""
    return
  endif
  call MkLO()
  'a-1
  /@
  let @/="@"
  norm n
endf

fun! MkLO()
  norm o
  norm o
  norm "npguu
  try
    s/ /-/g
  catch /^Vim\%((\a\+)\)\=:E486/
  endtry
  call CleanDe()
  norm I<
  norm "tpa id="
  norm A" for="@">
  mark a
  norm o<metadata><Title>
  norm "npa</Title></metadata>
  norm o<CMP>
  norm o@
  norm o</CMP>
  if @t =~ "^\\(exercise\\)$"
    norm o<interaction id="feladat">
    norm o<feedback keep="yes">
    norm o<CMP>
    norm o@
    norm o</CMP>
    norm o</feedback>
    norm o</interaction>
  endi
  norm o</
  norm "tpa>
  mark b
  norm o
  'a
  if @t =~ "^\\(omtext\\|assertion\\|axiom\\|symbol\\|exercise\\)$"
    s/ for="@"
  elseif @t =~ "^\\(example\\)$"
    ?id="
    norm Nf""iyi"
    'a-1
    /for="
    norm nf"vi"p
    -1
    /id="
    norm nf"a-
    norm "iP
  endi
endf

map <F6> :call NewLO()<CR>



function! NewImg()
  " input type
  if @+ =~ "^file:\/\/"
    let @n = input("Filename? ", @+)
  else
    let @n=input("Filename? ")
  endif
  if @n == ""
    return
  endif
  call MkImg()
endf

fun! MkImg()
  norm o
  norm o
  norm "np
  try
    s/.*\///
  catch /^Vim\%((\a\+)\)\=:E486/
  endtry
  norm 0"ny$
  s/\.[a-zA-Z0-9]\+$//
  try
    s/[ _]/-/g
  catch /^Vim\%((\a\+)\)\=:E486/
  endtry
  norm guu
  norm 0"iy$
  norm I<private id="image-
  norm A">
  mark a
  norm o<data format="html" href="../trigonometryPics/
  norm $"npA"/>
  norm o<data format="pdf" href="./omdoc1/trigonometry/pics/
  norm $"npA"/>
  norm o</private>
  norm o
  norm o<omlet argstr="image-
  norm "ipA" type="image" action="display">
  norm o<!-- write alt -->
  norm o</omlet>
  mark b
  norm o
endf
      

if oqmathMappings
  map <ESC>i :call NewImg()<CR>
endi



if oqmathMappings
  vunmap =
endi



if oqmathMappings
  " exercise definitions
  map <ESC>ee :call BreakInteraction(0)<CR>
  map <ESC>er :call BreakInteraction(1)<CR>
  map <ESC>es o<metadata><CR><extradata><CR><solution/><CR></extradata><CR></metadata><ESC>
  map <ESC>eh o<metadata><CR><extradata><CR><hint/><CR></extradata><CR></metadata><ESC>
endif


fun! BreakInteraction(copy) 
    let @i=""
    mark s 
    try
        ?<interaction?
        norm /id
        norm f=f"l"iyi"
    catch
    endt
    's
    let @t=input("Interaction id? ", @i)
    if @t == ""
        return
    endif
    if a:copy
        silent ?<CMP>?+1,.yank x
    endif
    silent ?<interaction?+1,?<CMP>?yank y
    norm o</CMP>
    norm o</feedback>
    norm o<answer_map>
    norm o<condition xref="
    norm "tpA">
    norm o<syn_eq>
    norm o$next$
    norm o</syn_eq>
    norm o</condition>
    norm o</answer_map>
    norm o</interaction>
    norm o
    norm o<interaction id="
    norm "tpA">
    silent put y
    ']
    if a:copy
        silent put x
    endi
    ']+1
endf

iunmap <buffer> /

set sw=2 expandtab lbr
