if isdirectory(".meteor")
  au BufRead,BufNewFile *.html set syntax=handlebars
  au BufRead,BufNewFile *.jade let main_syntax="jade" | set syntax=handlebars
  set sw=2
endif

