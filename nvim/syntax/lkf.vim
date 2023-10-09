" Vim syntax file
" Language: linkfile
" Maintainer: untitled
" Latest Revision: 17 September 2022

if exists("b:current_syntax")
	finish
endif


syntax match lkfMain /\%^/ nextgroup=lkfDotkeyword,lkfEComment skipwhite skipempty

" comment
syntax match	lkfCommentextension   /\.\w*/		contained
syntax match	lkfEComment "//.*$"  nextgroup=lkfDotkeyword,lkfEComment skipwhite skipempty contains=lkfCommentextension contained
syntax match	lkfIComment "//.*$"  nextgroup=lkfKey,lkfIComment,lkfESquare skipwhite skipempty contained

" keyword
syntax match	lkfDotkeyword /\s*\(\.package\|\.global\)\s*/				nextgroup=lkfOSquare skipwhite skipempty contained

" [ start context
syntax match	lkfOSquare	/\[/					nextgroup=lkfKey,lkfESquare,lkfIComment skipwhite skipempty contained

" identifer key
syntax match	lkfKey		/-source\|-target\|-ignore\|-clone/		nextgroup=lkfColon,lkfIComment skipwhite skipempty contained

" assignment
syntax match	lkfColon	/\s*::\s*/				nextgroup=lkfValue,lkfDictOSquare,lkfIComment skipwhite skipempty contained

syntax match	lkfDictOSquare	/\[/	nextgroup=lkfValue,lkfDictESquare,lkfIComment skipwhite skipempty contained

" string value
syntax match	lkfEscape /\\/ contained
syntax region	lkfValue matchgroup=lkfQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=lkfEscape nextgroup=lkfKey,lkfIComment,lkfESquare skipwhite skipempty keepend contained



" ] end context
syntax		match	lkfESquare	/]/		nextgroup=lkfDotkeyword,lkfEComment skipwhite skipempty contained

highlight link lkfDotkeyword			Operator
highlight link lkfCommentextension		Number
highlight link lkfEComment				Comment
highlight link lkfIComment				Comment

highlight link lkfOSquare				Type
highlight link lkfESquare				Type

highlight link lkfDictOSquare			Type
highlight link lkfColon					Function
highlight link lkfKey					Function


highlight link lkfValue					StorageClass
highlight link lkfEscape				Comment
highlight link lkfQuote					Comment























"syn region source matchgroup=delim start="\[" end=":"
"hi def link source		Function

"syntax match signs :" contained
"

"syntax	match	path	{\|}"
"hi def link path       String


"syntax match lkfHyphen /-/ contained
"highlight link lkfHyphen StorageClass


"syntax	match lkfKey /\(\[*\s*\)\|\(^\s*\)-source\s*:/he=e-1 contains=lkfColon contained
"syntax	match	lkfKey		/^\s*-source\s*:/he=e-1 contains=lkfColon contained
"hi	link	lkfKey	Function



"syn region lkfPackage matchgroup=lkfSquare start=/\[/ end=/]/ contains=lkfKey,lkfValue keepend contained
"hi def link lkfSquare		Type





"syntax match lkfEscape /\\/ contained
"syntax region lkfString matchgroup=lkfQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=lkfEscape keepend

"highlight link lkfString String
"highlight link lkfEscape Comment
"highlight link lkfQuote Comment



"		/^\s*\w\+/ matches the start of the line ^
"		then any amount of whitespace \s*
"		and then one or more word characters \w\+.
"		A word character is equivalent to [a-zA-Z].
"		If you want match any none whitespace character you can use \S instead of \w.


"hi def link signs       Function


"syn region target start=":"rs=s+1 end="]"re=e-1

"hi def link target		Comment







"syn region string matchgroup=delim3 start="\"" end="\""
"hi def link string        String
"hi def link delim3        Comment



" include syntax in another
syntax include @cpp syntax/cpp.vim
syntax region cppregion matchgroup=snip start="```cpp" end="```" contains=@cpp
hi link snip Comment







"
"
"syntax	keyword	standard	std
"hi	link	standard	StorageClass
"
"" class variable _c
"syntax	match	custom_class 	\h\w*_c\w\@!
"hi	link	custom_class	Type
"
"" global variable _g
"syntax	match	custom_global 	\h\w*_g\w\@!
"hi	link	custom_global	Type
"
"" type variable _t
"syntax	match	custom_type 	\h\w*_t\w\@!
"hi	link	custom_type	Type
"
"" Uppercase start variable
"syntax	match	mytype		\<[A-Z]\w*
"hi	link	mytype		Type
"
"
"
""42 SYNTAX \"""""""""""""""""""""""""""""
"syntax	match	type_42 	\<t_\w*"
"hi	link	type_42		Type
""""""""""""""""""""""""""""""""""""""""""
"syntax	match	struct_42 	\<s_\w*"
"hi	link	struct_42	Type
""""""""""""""""""""""""""""""""""""""""""
"syntax	match	enum_42 	\<e_\w*"
"hi	link	enum_42		Type
"""""""""""""""""""""""""""""""""""""
"syntax	match	global_42 	\<g_\w*"
"hi	link	global_42	Type
"
"
""syntax	match	fun \w\+\s*(\@=
"syntax	match	fun		\<[a-z]\w\+\s*(\@="
"hi	link	fun		Function
"
"syntax	match	custom_define	\v<[0-Z_]+>"
"hi	link 	custom_define	Constant
"
"syntax	match	punct		(\|)\|\[\|\]"
"hi	link	punct		Comment
"
"syntax	match	math		?\|%\|:\|*\|&\|=\|+\|-\|/\|!\||\|<\|>\|\.\|\^"
"hi	link	math		Operator
"
"syntax match	dpoint		::"
"hi	link	dpoint		StorageClass
"
"syntax	match	braces		{\|}"
"hi	link	braces		StorageClass
