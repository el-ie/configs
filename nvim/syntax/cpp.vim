" Vim syntax file
" Language:				c++
" Current Maintainer:	untitled
" Last Change:			2022 Sep 23
" Version:				1.0

let b:current_syntax = "cpp"



" -- I D E N T I F I E R S ----------------------------------------------------

syn match cpp_identifier /\<\h\w*\>/
hi link cpp_identifier Identifier


" -- S T D L I B --------------------------------------------------------------

syn keyword cpp_std_namespace std
hi link cpp_std_namespace Type

syn keyword cpp_container_type array vector deque forward_list list set map multiset multimap
							\ unordered_set unordered_map unordered_multiset unordered_multimap stack queue priority_queue flat_set flat_map flat_multiset flat_multimap
hi link cpp_container_type Type

syntax keyword cpp_container_sub_type iterator_category iterator
\ const_iterator reverse_iterator const_reverse_iterator
\ pointer const_pointer reference const_reference allocator_type value_type
\ size_type difference_type iterator_traits input_iterator_tag
\ output_iterator_tag forward_iterator_tag bidirectional_iterator_tag
\ random_access_iterator_tag
hi link cpp_container_sub_type Type

syn keyword cpp_string_type string wstring u8string u16string u32string string_view wstring_view u8string_view u16string_view u32string_view basic_string basic_string_view
hi link cpp_string_type Type

syn keyword cpp_native_type void bool char short int long float double unsigned signed auto typename this
hi link cpp_native_type Type

syn keyword cpp_std_type atomic shared_ptr unique_ptr weak_ptr optional any variant "function
hi link cpp_std_type Type


" -- O P E R A T O R S --------------------------------------------------------

syn keyword cpp_operator operator new delete sizeof typeid decltype
hi link cpp_operator Operator


" -- C O N S T A N T S --------------------------------------------------------

syn keyword cpp_constant true false nullptr nullchar
hi link cpp_constant Constant


" -- B I T W I S E  O P E R A T O R S -----------------------------------------

syn keyword cpp_bitwise_operator and and_eq bitand bitor compl not not_eq or or_eq xor xor_eq
hi link cpp_bitwise_operator Operator


" -- S T O R A G E  C L A S S E S ---------------------------------------------

syn keyword cpp_storage_class static const mutable consteval constinit constexpr volatile register extern
hi link cpp_storage_class StorageClass


" -- C A S T I N G ------------------------------------------------------------

syn region cpp_cast_region matchgroup=cpp_cast start=/\(const\|static\|dynamic\|reinterpret\)_cast</ end=/>/ contains=ALL
hi link cpp_cast StorageClass


" -- C O N T R O L  F L O W ---------------------------------------------------

" statements
syn keyword cpp_statement return break continue goto
hi link cpp_statement Statement

" labels
syn keyword cpp_label case default
hi link cpp_label Label

" conditionals
syn keyword cpp_conditional if else switch
hi link cpp_conditional Conditional

" loops
syn keyword cpp_loop while for do
hi link cpp_loop Repeat

" goto
syn match cpp_goto_label /\<\h\w*:\>/
hi link cpp_goto_label Statement


" -- E X C E P T I O N S ------------------------------------------------------

syn keyword cpp_exceptions try catch throw
hi link cpp_exceptions Exception


" -- M O D I F I E R S --------------------------------------------------------

syn keyword cpp_modifier virtual override final explicit inline export noexcept
hi link cpp_modifier Keyword

syn match cpp_access /\<p\(ublic\|rotected\|rivate\):\?/
hi link cpp_access Keyword


" -- S T R U C T U R E S ------------------------------------------------------

syn keyword cpp_structures class struct enum union namespace template typedef using friend extern concept
hi link cpp_structures Structure


" -- D E F I N E S ------------------------------------------------------------

syn match cpp_define "\<[A-Z_][0-9A-Z_]*\>"
hi link cpp_define Constant






" -- P U N C T U A T I O N ----------------------------------------------------

syntax match cppSeparator				":\|;\|,"
highlight link cppSeparator Punctuation

syntax match cppParent					"(\|)"
highlight link cppParent Punctuation

syntax match cppCurly					"{\|}"
highlight link cppCurly Punctuation

syntax match cppBracket					"\[\|\]"
highlight link cppBracket Punctuation

syntax match cppOperator				"<\|>\|?\|%\|*\|&\|=\|+\|-\|/\|!\||\|\.\|\^"
highlight link cppOperator Operator


" operator # and ##
syntax match cppHash					/#\@<!#\{1,2}#\@!/
highlight link cppHash Punctuation

syntax match cppPreProc					/^\s*#\s*include\>/ nextgroup=cppInclude skipwhite skipempty contains=cppHash
highlight link cppPreProc Include

syntax keyword cppHasInclude __has_include
hi! link cppHasInclude Include

syntax match cppInclude					/<.*>/ contained
highlight link cppInclude String

" preprocessor conditions
syntax match cppPreCond					/^\s*#\s*\(if\|ifdef\|ifndef\|else\|elif\|elifdef\|elifndef\|endif\)\>/ contains=cppHash
highlight link cppPreCond PreCondit

" #define and #undef
syntax match cppDefineO					/^\s*#\s*\(define\|undef\)\>/ contains=cppHash
highlight link cppDefineO PreProc


"cause an error or warning (since C++23) (controlled by directive #error or #warning respectively (since C++23))





" -- S T R I N G S ------------------------------------------------------------

"syntax match cppHexaEscape /\\x\x\{2}/ contained
syntax match cppHexaEscape /\\\(x\x\{2}\|\o\{1,3}\|[abfnrtv]\)/ contained
hi! link cppHexaEscape Number

syntax match cppHexaEscapeError /\\x\x\{3,}/ contained
hi! link cppHexaEscapeError Identifier

syntax match	cppSlashEscape /\\\\/he=e-1 contained

syntax match	cppEscape /\\"/he=e-1 contained

syntax region	cppString matchgroup=cppQuote start=/"/ skip=/\\"/ end=/"/ contains=cppSlashEscape,cppEscape,cppHexaEscape,cppHexaEscapeError
"keepend
"syntax region	cppString matchgroup=cppQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=cppEscape, cppHexaEscape keepend
highlight link cppString				String
highlight link cppEscape				Punctuation
highlight link cppSlashEscape			Punctuation
highlight link cppQuote					Punctuation


" -- C H A R A C T E R S ------------------------------------------------------



" custom type_t
syntax match cpp_suffix_type "\h\w*_\(g\|c\|t\|s\|e\)\w\@!"
highlight link cpp_suffix_type Type

"42 type
syntax match cpp_42_type "\<\(t_\|s_\|e_\|g_\)\w*"
highlight link cpp_42_type Type

" Uppercase start variable
syntax match cpp_type "\<_\?[A-Z]\w*\>"
highlight link cpp_type Type

"syntax match cpp_function		/\<\h\w*\>\(\s\|\n\)*(/me=e-1
syntax match cpp_function		/\<[a-z_]\w*\>\(\s\|\n\)*(/me=e-1
highlight link cpp_function Function

" function with template
"syntax match cpp_template_function		/\<\h\w*\>\(\s\|\n\)*</me=e-1
"highlight link cpp_template_function Function




" -- N U M B E R S ------------------------------------------------------------

" N U M B E R
syntax match cppDecimal "\<[+-]\?[1-9]\('\=\d\)*\([uU]\?\(l\|ll\|L\|LL\|z\|Z\)\?\|\(l\|ll\|L\|LL\|z\|Z\)\?[uU]\?\)\>"
highlight link cppDecimal Number

syntax match cppOctal "\<0\o*\>"
highlight link cppOctal Number

syntax match cppHexadecimal "\<0\(x\|X\)\x\+\>"
highlight link cppHexadecimal Number

syntax match cppBinary "\<0\(b\|B\)[0-1]\+\>"
highlight link cppBinary Number


"unsigned-suffix (the character u or the character U)

"long-suffix (the character l or the character L)
"long-long-suffix (the character sequence ll or the character sequence LL)
"size-suffix (the character z or the character Z)



" -- C O M M E N T S ----------------------------------------------------------

syntax match cppLineComment			"//.*$" contains=cppTodo oneline
highlight link cppLineComment Comment

syntax region cppMultilineComment		start="/\*" end="\*/" contains=cppTodo fold
hi! link cppMultilineComment Comment

" Force vim to sync at least x lines. Fix multiline comment not appear
syntax sync minlines=100

" Todo
syntax case ignore
syntax keyword cppTodo contained attention author authors bug complexity copyright date
									\ experiment important invariant note parameter
									\ postcondition precondition
									\ remark remarks requires returns
									\ see since throws todo
									\ version warning fixme info hint
syntax case match
highlight link cppTodo Todo





