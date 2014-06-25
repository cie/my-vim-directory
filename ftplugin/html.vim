nnoremap <buffer> p pma`[v`]=`a
nnoremap <buffer> P Pma`[v`]=`a
xnoremap <buffer> p pma`[v`]=`a
xnoremap <buffer> P Pma`[v`]=`a
setlocal sw=4

fun! <SID>HtmlIndentPush(tag)
    if exists('g:html_indent_tags')
	let g:html_indent_tags = g:html_indent_tags.'\|'.a:tag
    else
	let g:html_indent_tags = a:tag
    endif
endfun

call <SID>HtmlIndentPush('template')
call <SID>HtmlIndentPush('svg')
call <SID>HtmlIndentPush('header')
call <SID>HtmlIndentPush('section')
call <SID>HtmlIndentPush('article')
call <SID>HtmlIndentPush('footer')
call <SID>HtmlIndentPush('aside')
call <SID>HtmlIndentPush('nav')
