runtime! syntax/xml.vim
syntax match OQMath /\$.\{-}\$/ containedin=xmlRegion
syntax match OQMathError /\$[^$]*$/ containedin=xmlRegion
hi def link OQMath              Special
hi def link OQMathError         Error

