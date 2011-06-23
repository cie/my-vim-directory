syntax match QMathComment /^\s*||.*$/
syntax keyword QMathSymbolType BINDING SYMBOL APPLICATION VARIABLE OP_PROD OP_PLUS OP_FACT OP_IMPL OP_EXP OP_AND OP_OR OP_EQ OP_BIND containedin=QMathSymbol
syntax match QMathInclude /^\s*Context\s*:.*$/ contains=QMathString
syn match QMathSymbol /^\s*Symbol\s*:.*/ contains=QMathString,QMathSymbolKeyword
syn keyword QMathSymbolKeyword containedin=QMathSymbol Symbol
syn region QMathString start=/"/ end=/"/ containedin=QMathInclude,QMathSymbol

hi def link QMathComment Comment
hi def link QMathSymbolType Type
hi def link QMathInclude Include
hi def link QMathSymbol Normal
hi def link QMathSymbolKeyword Keyword
hi def link QMathString String
