
if exists("b:current_syntax")
	finish
endif

" Integer with - + or nothing in front
syn match number '\d\+'
syn match number '[-+]\d\+'

syn region simplestring start="'" end="'"
syn region string start="\"" end="\""
"contains=num
"
syn region com start="#" end="#"
hi	link	com		Comment

syn keyword tmskey lk mk ls run play stop save open load exit euclid shift

let b:current_syntax = "tms"
syntax match address '\k\@<!@\k\S*'
hi	link	address		Function

syntax	match	type_42 	'-[a-zA-Z0-9]\+'
hi	link	type_42		StorageClass

"syntax	match	fun		"\<[a-z]\w\+\s*(\@="
"hi	link	fun		Function
"
"syntax	match	custom_define	"\v<[0-Z_]+>"
"hi	link 	custom_define	Constant
"
"syntax	match	punct		"(\|)\|\[\|\]"
"hi	link	punct		Comment
"
"syntax	match	math		"?\|%\|:\|*\|&\|=\|+\|-\|/\|!\||\|<\|>\|\.\|\^"
"hi	link	math		Operator
"
"syntax match	dpoint		"::"
"hi	link	dpoint		StorageClass
"
"syntax	match	braces		"{\|}"
"hi	link	braces		StorageClass


hi def link tmskey		keyword
hi def link num			Number
hi def link string		String
hi def link simplestring		String

