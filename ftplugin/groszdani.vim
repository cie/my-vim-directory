sy clear
sy region ReadmeString start=/'/ end=/'/
sy region ReadmeDString start=/"/ end=/"/
sy match ReadmeFunc /[a-zA-Z0-9_]\+\ze(.\{-})/ 
sy match ReadmeVar /$\w\+/
sy match ReadmeType /\w\+\ze::/
sy region ReadmeComment start=/!!/ end=/!!/ contains=ReadmeSymbol,ReadmeConstant,ReadmeList,ReadmeNumber
sy match ReadmeList /^[-*]/
sy match ReadmeSymbol /[/{}\[\]*]/
sy match ReadmeConstant /\<[A-Z_]\{3,}\>\|true\|false\|null\|LaTeX/
sy match ReadmeChapter /^\s*\n[^!].*:\s*\n/
sy match ReadmeNumber /\<[0-9]\+\>/

hi link ReadmeString String
hi link ReadmeDString String
hi link ReadmeFunc Function
hi link ReadmeVar Keyword
hi link ReadmeType Type
hi link ReadmeComment Comment
hi link ReadmeSymbol Special
hi link ReadmeList Special
hi link ReadmeConstant Constant
hi link ReadmeChapter Underlined
hi link ReadmeNumber Number
