" Vim syntax file Extension
" Language:	C
" Maintainer:	Saptarshi Mondal
" Last Change:	2010 February 9 

" Highlight Class and Function names
syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
"syn match Braces display "[{}()\[\]]"

hi def link cCustomFunc  Function
hi def link cCustomClass Function

setlocal iskeyword+=-
setlocal iskeyword+=+
setlocal iskeyword+=>
setlocal iskeyword+==
setlocal iskeyword+=<
setlocal iskeyword+=.
setlocal iskeyword+={
setlocal iskeyword+=}
setlocal iskeyword+=(
setlocal iskeyword+=)

syn keyword cSpecialOperator	+ = - -> == >> << . ++ -- > < { } ( )
hi def link cSpecialOperator 	SpecialOperator
