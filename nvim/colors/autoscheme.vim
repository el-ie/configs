" only support full color terminal
if !has('termguicolors')
	finish
endif

" set background
set background=dark

" reset existing highlighting
hi clear

" reset existing syntax
if exists("syntax_on")
	syntax reset
endif


" set scheme name
let g:colors_name = 'autoscheme'


" C O L O R S C H E M E  G E N E R A T O R
" ----------------------------------------
highlight colorA1 guifg=#eae7ff guibg=NONE gui=NONE
highlight colorB1 guifg=#9bf7ff guibg=NONE gui=italic
highlight colorC1 guifg=#ffcbda guibg=NONE gui=italic
highlight colorA2 guifg=#bebdff guibg=NONE gui=italic
highlight colorB2 guifg=#6acdff guibg=NONE gui=NONE
highlight colorC2 guifg=#ffa0b1 guibg=NONE gui=NONE
highlight colorA3 guifg=#9494ee guibg=NONE gui=NONE
highlight colorB3 guifg=#2da4f6 guibg=NONE gui=NONE
highlight colorC3 guifg=#f17789 guibg=NONE gui=NONE
highlight foregr1 guifg=#211d27 guibg=NONE gui=NONE
highlight foregr2 guifg=#3a3344 guibg=NONE gui=italic
highlight foregr3 guifg=#534962 guibg=NONE gui=italic
highlight foregr4 guifg=#6d5f7f guibg=NONE gui=NONE
highlight foregr5 guifg=#86759c guibg=NONE gui=NONE
highlight foregr6 guifg=#9f8bba guibg=NONE gui=NONE
highlight foregr7 guifg=#b8a1d7 guibg=NONE gui=NONE
highlight backgr1 guifg=NONE guibg=#211d27 gui=NONE
highlight backgr2 guifg=NONE guibg=#3a3344 gui=NONE
highlight backgr3 guifg=NONE guibg=#534962 gui=italic
highlight backgr4 guifg=NONE guibg=#6d5f7f gui=italic
highlight backgr5 guifg=NONE guibg=#86759c gui=NONE
highlight backgr6 guifg=NONE guibg=#9f8bba gui=NONE
highlight backgr7 guifg=NONE guibg=#b8a1d7 gui=NONE
highlight dualgrey1 guifg=#6d5f7f guibg=#211d27 gui=NONE
highlight dualgrey2 guifg=#86759c guibg=#3a3344 gui=italic
highlight dualgrey3 guifg=#9f8bba guibg=#534962 gui=italic
highlight dualgrey4 guifg=#b8a1d7 guibg=#6d5f7f gui=NONE
highlight dualgrey5 guifg=#211d27 guibg=#86759c gui=italic
highlight dualgrey6 guifg=#3a3344 guibg=#9f8bba gui=NONE
highlight dualgrey7 guifg=#534962 guibg=#b8a1d7 gui=NONE
" C S G  E N D
" ------------




" I N T E R F A C E
" -----------------
" normal text
hi! link Normal dualgrey1

hi! link ColorColumn backgr2

" current quickfix item in the quickfix window
hi! QuickFixLine	guifg=NONE guibg=NONE gui=bold
" concealed separator
hi! link qfSeparator	colorB2
" filename
hi! link qfFileName		foregr3
" error location
hi! link qfLineNr		foregr3
" ???????
hi! link qfError		colorA2


" linked to 'Whitespace'
hi! link Nontext		foregr3
" unprintable lead and trail
hi! link Whitespace		foregr2

" masked items
hi! link Conceal		Nontext
" like conceal
hi! link Ignore			Nontext
" tilde blank buffer
hi! link EndOfBuffer	Nontext


" match bracket
hi!	link MatchParen		colorB2
" visual selection
hi! link Visual			backgr2

" windows separators
hi! link WinSeparator	Nontext
" cursorLine
hi! link CursorLine		backgr2
" current line number
hi!	link CursorLineNr	colorB3
"hi!	link CursorLineNr	foregr2

" vertical cursorline
" hi! link CursorColumn	???
" line number
hi!	link LineNr			foregr2
"left column where signs are displayed
hi! link SignColumn		colorA2

" current buffer statusline
hi! link StatusLine		dualgrey2 "!!! define foregroud
" non-focus buffer statusline
hi! link StatusLineNC	colorA2 "!!! define foreground

" T A B
" tab number
hi!	link Title			colorA1
" unhighlighted tab
hi! link TabLine		None "!!! define foreground
" highlighted tab
hi!	link TabLineSel		dualgrey2 "!!! define foreground
" tab dualgreyound
hi! link TabLineFill	None



" highlight search
hi! link IncSearch		colorC1



" error highlight vim script
"hi! link Error			INVISIBLE






" M E N U
" unselected field menu
hi! link Pmenu			dualgrey2
" selected field menu
hi! link PmenuSel		backgr3
" menu scrollbar
hi! link PmenuSbar		dualgrey7
" dualgreyound scrollbar
hi! link PmenuThumb		dualgrey2



" like SignColumn when 'cursorline' is set for the cursor line
" ??? hi! link CursorLineSign F_PURPLE_I










" command line message
hi! link MsgArea				foregr5
" error messages on the command line
hi! link ErrorMsg				colorB1
" more-prompt
hi! link MoreMsg				foregr5
" 'showmode' message
hi! link ModeMsg				foregr5
" prompt questions
hi! link Question				foregr5
" warning messages
hi! link WarningMsg				colorA1
" separator for scrolled messages
hi! link MsgSeparator			Normal


" unprintable characters like <CR>
hi! link SpecialKey				colorA2
" menu directory
hi! link Directory				F_FOREGROUND_B



"QuickFixLine /////////////////////////////////
""hi	QuickFixLine	ctermbg=NONE	ctermfg=1
"""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""" ???????????????
"WildMenu
""hi WildMenu guibg=#fffaaa guifg=#fffaaa
"hi WildMenu ctermbg=NONE ctermfg=5
" ???????????????????????????
""hi! link Search		HiDarkBackgroundGreen
""hi DiffAdd			ctermfg=NONE			ctermbg=NONE

""hi	Underlined		ctermbg=NONE		ctermfg=NONE
""hi	NvimInternalError ctermbg=NONE	ctermfg=1



"hi ActiveWindow guibg=#21242b
"hi InactiveWindow guibg=#282C34set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow




" L A N G U A G E - S Y N T A X
" -----------------------------

"Identifier
hi! link Identifier		foregr7
" type
hi! link Type			colorB2
" string
hi! link String			colorC3
" character
hi! link Character		colorC3
" number
hi! link Number			colorC2
" comment
hi! link Comment		foregr3
" keyword
hi! link Keyword		colorA2
" structure
hi! link Structure		colorA1
" storageClass (static)
hi! link StorageClass	colorA3
" typedef
hi! link Typedef		colorA2
" conditional (if, else)
hi! link Conditional	colorB2
" repeat (while, do, for)
hi! link Repeat			colorB2
" return, continue, break, goto
hi! link Statement		colorB3
" case default
hi! link Label			colorB1
" operator (sizeof, new, delete)
hi! link Operator		colorC1
" function
hi! link Function		colorB3
" constant
hi! link Constant		colorC3
"Exception
hi! link Exception		colorA3
"PreProc #define
hi! link PreProc		colorA1
"PreCondit
hi! link PreCondit		colorA1
"Define
hi! link Define			colorA1
"Include
hi! link Include		colorA1
"Special
hi! link Special		colorC2
"SpecialChar
hi! link SpecialChar	colorC2
"Delimiter
hi! link Delimiter		colorC3
" important things in comment region
hi! link Todo			foregr4

hi! link Punctuation	foregr4










hi link @namespace					Type
hi link @punctuation.bracket		Punctuation
hi link @punctuation.delimiter		Punctuation
hi link @type.qualifier				StorageClass




" File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
hi! link TSInclude					Include
" Preprocessor #define statements.
hi! link TSDefine					Define
" Preprocessor #if, #else, #endif, etc.
hi! link TSPreProc					PreProc

" Exception related keywords: `try`, `except`, `finally` in Python.
hi! link TSException				Exception
" Type definitions, e.g. `typedef` in C.
hi! link TSTypeDefinition			Typedef
" Keywords that don't fit into other categories.
hi! link TSKeyword					Keyword
" Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
hi! link TSStorageClass				StorageClass
" Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
hi! link TSTypeQualifier			StorageClass

" Keywords used to define a function. 'func'
hi! link TSKeywordFunction			Keyword
" Built-in functions: `print` in Lua.
hi! link TSFuncBuiltin				Function
" Function calls.
hi! link TSFunctionCall				Function
" Function definitions.
hi! link TSFunction					Function
" Constructor calls and definitions: `{}` in Lua, and Java constructors.
hi! link TSConstructor				Type
" Method calls.
hi! link TSMethodCall				Function
" Method definitions.
hi! link TSMethod					Function

" Character literals: `'a'` in C.
hi! link TSCharacter				Character
" Special characters.
hi! link TSCharacterSpecial			SpecialChar
" String literals.
hi! link TSString					String
" Regular expression literals.
hi! link TSStringRegex				String
" Escape characters within a string: `\n`, `\t`, etc.
hi! link TSStringEscape				SpecialChar
" Strings with special meaning that don't fit into the previous categories.
hi! link TSStringSpecial			SpecialChar
" Floating-point number literals.
hi! link TSFloat					Number
" Numeric literals that don't fit into other categories.
hi! link TSNumber					Number

" Binary or unary operators: `+`, and also `->` and `*` in C.
hi! link TSOperator					Operator
" Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
hi! link TSKeywordOperator			Operator


" Keywords related to conditionals: `if`, `when`, `cond`, etc.
hi! link TSConditional				Conditional
" Keywords related to loops: `for`, `while`, etc.
hi! link TSRepeat					Repeat
" Keywords like `return` and `yield`.
hi! link TSKeywordReturn			Statement
" Goto labels
hi! link TSLabel					Label

" Brackets, braces, parentheses, etc.
hi! link TSPunctBracket             Comment
" Punctuation delimiters: Periods, commas, semicolons, etc.
hi! link TSPunctDelimiter			Comment
" Special punctuation that doesn't fit into the previous categories. '::'
hi! link TSPunctSpecial				Comment


" Identifiers referring to modules and namespaces.
hi! link TSNamespace				Type
" Type (and class) definitions and annotations.
hi! link TSType						Type
" Built-in types: `i32` in Rust.
hi! link TSTypeBuiltin				Type

" Variable names that don't fit into other categories.
hi! link TSVariable					Identifier
" Parameters of a function.
hi! link TSParameter				Identifier
" Same as `TSField`.
hi! link TSProperty					Identifier
" Object and struct fields.
hi! link TSField					Identifier
" Variable names defined by the language: `this` or `self` in Javascript.
hi! link TSVariableBuiltin			Identifier

" References to parameters of a function.
hi! link TSParameterReference		Identifier

" Constants identifiers. These might not be semantically constant.
hi! link TSConstant					Constant
" Boolean literals: `True` and `False`
hi! link TSBoolean					Constant
" Built-in constant values: `nil` in Lua.
hi! link TSConstBuiltin				Constant
" Constants defined by macros: `NULL` in C.
hi! link TSConstMacro				Constant
" Macro defined functions (calls and definitions): each `macro_rules` in Rust.
hi! link TSFuncMacro				Function

" Line comments and block comments.
hi! link TSComment					Comment


" Identifiers referring to symbols or atoms.
hi! link TSSymbol					Identifier
" Text representation of an informational note.
hi! link TSNote						Identifier
" Text representation of a warning note.
hi! link TSWarning					Exception
" Text representation of a danger note.
hi! link TSDanger					Exception
" Tags like HTML tag names.
hi! link TSTag						Identifier
" Tag delimiters like `<` `>` `/`.
hi! link TSTagDelimiter				Operator
" Footnotes, text references, citations, etc.
hi! link TSTextReference			Identifier
" Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
hi! link TSAttribute				Identifier
" Anything that needs extra attention, such as keywords like TODO or FIXME.
hi! link TSTodo						Todo
" Debugging statements.
hi! link TSDebug					Exception
" HTML tag attributes.
hi! link TSTagAttribute				Normal
" Non-structured text. Like text in a markup language.
hi! link TSText						Normal
" Text to be represented in bold.
hi! link TSStrong					F_NORMAL_B
" Text to be represented with emphasis.
hi! link TSEmphasis					F_NORMAL_B
" Text to be represented with an underline.
hi! link TSUnderline				F_NORMAL_U
" Strikethrough text.
hi! link TSStrike					F_NORMAL_S
" Text that is part of a title.
hi! link TSTitle					Normal
" Literal or verbatim text.
hi! link TSLiteral					String
" URIs like hyperlinks or email addresses.
hi! link TSURI						F_NORMAL_U
" Math environments like LaTeX's `$ ... $`.
hi! link TSMath						Operator
" Text environments of markup languages.
hi! link TSEnvironment				Normal
" Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
hi! link TSEnvironmentName			Normal
" No highlighting (sets all highlight arguments to `NONE`).
" Don't change the values of this highlight group.
" hi! link TSNone					INVISIBLE





hi! link DiagnosticError				foregr4
hi! link DiagnosticWarn					foregr4
hi! link DiagnosticInfo					foregr4
hi! link DiagnosticHint					foregr5

hi! link DiagnosticSignError			colorA2
hi! link DiagnosticSignWarn				colorB2
hi! link DiagnosticSignInfo				dualgrey4
hi! link DiagnosticSignHint				dualgrey5

"hi! link DiagnosticUnderlineError
"hi! link DiagnosticUnderlineWarn
"hi! link DiagnosticUnderlineInfo
"hi! link DiagnosticUnderlineHint

"hi! link DiagnosticVirtualTextError
"hi! link DiagnosticVirtualTextWarn
"hi! link DiagnosticVirtualTextInfo
"hi! link DiagnosticVirtualTextHint

"hi! link DiagnosticFloatingError
"hi! link DiagnosticFloatingWarn
"hi! link DiagnosticFloatingInfo
"hi! link DiagnosticFloatingHint
"hi! link DiagnosticInformation
"hi! link DiagnosticWarning





" T E L E S C O P E
"
hi! link TelescopeBorder		foregr2
hi! link TelescopeSelection		foregr6
hi! link TelescopeNormal		foregr3

hi! link TelescopeMatching		colorB1
"
hi! link TelescopePromptNormal	foregr3
hi! link TelescopePromptTitle	colorA1
hi! link TelescopePromptCounter colorA2
hi! link TelescopeTitle			colorC1




" -- B Q F --------------- "
"
"
" highlight floating window
hi link BqfPreviewFloat Normal

" highlight border of floating window
hi link BqfPreviewBorder foregr2

" highlight the cursor format [lnum, col] in preview window
hi link BqfPreviewCursor foregr4

" highlight the range format [lnum, col, range], which is produced by pattern_hl, lsp_ranges_hl and quickfix range
hi link BqfPreviewRange foregr4

" highlight the index and count of the buffer under the cursor
hi link BqfPreviewBufLabel foregr4

" highlight the sign in quickfix window
hi link BqfSign foregr3









" reference to other man
hi! link manReference			F_FOREGROUND_B
" section titles
hi! link manSectionHeading		F_KEYWORDS_B
" subsection titles
hi! link manSubHeading			F_KEYWORDS_I
" -o --options
hi! link manOptionDesc			F_CONSTANTS_N

" meybe its telescope list
hi! link manSynopsis			F_FUNCTIONS_N

hi! link manUnderline			INVISIBLE
hi! link manBold				INVISIBLE
hi! link manItalic				INVISIBLE


" ???????
hi! link manLowerSentence		F_MONO5_N
" ???????
hi! link manSentence			F_MONO6_N

hi! link manCFuncDefinition		F_FUNCTIONS_I

" man header text
hi! link manHeader				F_COMMENTS_N
" man footer text
hi! link manFooter				F_COMMENTS_N


hi! link helpHeadline			Statement
hi! link helpSectionDelim		PreProc
hi! link helpIgnore				Ignore
hi! link helpExample			Identifier
hi! link helpBar				Ignore
hi! link helpHyperTextJump		Identifier
hi! link helpStar				Ignore
hi! link helpHyperTextEntry		String
hi! link helpBacktick			Ignore
hi! link helpNormal				cleared
hi! link helpVim				Identifier
hi! link helpOption				Type
hi! link helpCommand			Comment
hi! link helpHeader				PreProc
hi! link helpGraphic			cleared
hi! link helpNote				Todo
hi! link helpWarning			Todo
hi! link helpDeprecated			Todo
hi! link helpSpecial			Special
hi! link helpComment			Comment
hi! link helpConstant			Constant
hi! link helpString				String
hi! link helpCharacter			Character
hi! link helpNumber				Number
hi! link helpBoolean			Boolean
hi! link helpFloat				Float
hi! link helpIdentifier			Identifier
hi! link helpFunction			Function
hi! link helpStatement			Statement
hi! link helpConditional		Conditional
hi! link helpRepeat				Repeat
hi! link helpLabel				Label
hi! link helpOperator			Operator
hi! link helpKeyword			Keyword
hi! link helpException			Exception
hi! link helpPreProc			PreProc
hi! link helpInclude			Include
hi! link helpDefine				Define
hi! link helpMacro				Macro
hi! link helpPreCondit			PreCondit
hi! link helpType				Type
hi! link helpStorageClass		StorageClass
hi! link helpStructure			Structure
hi! link helpTypedef			Typedef
hi! link helpSpecialChar		SpecialChar
hi! link helpTag				Tag
hi! link helpDelimiter			Delimiter
hi! link helpSpecialComment		SpecialComment
hi! link helpDebug				Debug
hi! link helpUnderlined			Underlined
hi! link helpError				Error
hi! link helpTodo				Todo
hi! link helpURL				String




" Highlight group for unmatched characters of each completion field.
hi link CmpItemAbbr foregr4

" Highlight group for unmatched characters of each deprecated completion field.
hi link CmpItemAbbrDeprecated foregr4

" Highlight group for matched characters of each completion field. Matched characters must form a substring of a field which share a starting position.
hi link CmpItemAbbrMatch colorC1

" Highlight group for fuzzy-matched characters of each completion field.
hi link CmpItemAbbrMatchFuzzy foregr4

" Highlight group for the kind of the field.
hi link CmpItemKind colorB2

" The menu field's highlight group.
hi link CmpItemMenu foregr4
"CmpItemMenuDefault xxx cleared



" -- K I N D ---------- "

hi link CmpItemKindStruct foregr3
"CmpItemKindStructDefault xxx links to CmpItemKind

hi link CmpItemKindClass foregr3
"CmpItemKindClassDefault xxx links to CmpItemKind

hi link CmpItemKindText foregr3
"CmpItemKindTextDefault xxx links to CmpItemKind

hi link CmpItemKindConstructor foregr3
"CmpItemKindConstructorDefault xxx links to CmpItemKind

hi link CmpItemKindField foregr3
"CmpItemKindFieldDefault xxx links to CmpItemKind

hi link CmpItemKindModule foregr3
"CmpItemKindModuleDefault xxx links to CmpItemKind

hi link CmpItemKindFunction foregr3
"CmpItemKindFunctionDefault xxx links to CmpItemKind

hi link CmpItemKindValue foregr3
"CmpItemKindValueDefault xxx links to CmpItemKind

hi link CmpItemKindEnum foregr3
"CmpItemKindEnumDefault xxx links to CmpItemKind

hi link CmpItemKindColor foregr3
"CmpItemKindColorDefault xxx links to CmpItemKind

hi link CmpItemKindFile foregr3
"CmpItemKindFileDefault xxx links to CmpItemKind

hi link CmpItemKindReference foregr3
"CmpItemKindReferenceDefault xxx links to CmpItemKind

hi link CmpItemKindVariable foregr3
"CmpItemKindVariableDefault xxx links to CmpItemKind

hi link CmpItemKindEnumMember foregr3
"CmpItemKindEnumMemberDefault xxx links to CmpItemKind

hi link CmpItemKindEvent foregr3
"CmpItemKindEventDefault xxx links to CmpItemKind

hi link CmpItemKindOperator foregr3
"CmpItemKindOperatorDefault xxx links to CmpItemKind

hi link CmpItemKindTypeParameter foregr3
"CmpItemKindTypeParameterDefault xxx links to CmpItemKind

hi link CmpItemKindUnit foregr3
"CmpItemKindUnitDefault xxx links to CmpItemKind

hi link CmpItemKindMethod foregr3
"CmpItemKindMethodDefault xxx links to CmpItemKind

hi link CmpItemKindFolder foregr3
"CmpItemKindFolderDefault xxx links to CmpItemKind

hi link CmpItemKindInterface foregr3
"CmpItemKindInterfaceDefault xxx links to CmpItemKind

hi link CmpItemKindConstant foregr3
"CmpItemKindConstantDefault xxx links to CmpItemKind

hi link CmpItemKindProperty foregr3
"CmpItemKindPropertyDefault xxx links to CmpItemKind

hi link CmpItemKindSnippet foregr3
"CmpItemKindSnippetDefault xxx links to CmpItemKind

hi link CmpItemKindKeyword foregr3
"CmpItemKindKeywordDefault xxx links to CmpItemKind












" lualine_x_filetype_DevIconDefault_normal xxx guifg=#6d8086 guibg=#000000
" lualine_x_filetype_DevIconDefault_insert xxx guifg=#6d8086 guibg=#000000
" lualine_x_filetype_DevIconDefault_visual xxx guifg=#6d8086 guibg=#000000
" lualine_x_filetype_DevIconDefault_replace xxx guifg=#6d8086 guibg=#000000
" lualine_x_filetype_DevIconDefault_command xxx guifg=#6d8086 guibg=#000000
" lualine_x_filetype_DevIconDefault_terminal xxx guifg=#6d8086 guibg=#000000
" lualine_x_filetype_DevIconDefault_inactive xxx guifg=#6d8086 guibg=#000000
" lualine_transitional_lualine_a_normal_to_lualine_b_normal xxx guifg=#0000ff guibg=#808080
" lualine_transitional_lualine_b_normal_to_lualine_c_normal xxx guifg=#808080 guibg=#000000
" lualine_transitional_lualine_a_insert_to_lualine_b_normal xxx guifg=#008000 guibg=#808080

hi link lualine_a_normal colorB2
hi link lualine_b_normal colorB2
hi link lualine_c_normal colorB2

hi link lualine_a_command colorC1
hi link lualine_b_command colorC1
hi link lualine_c_command colorC1

hi link lualine_a_visual colorB2
hi link lualine_b_visual colorB2
hi link lualine_c_visual colorB2

hi link lualine_a_replace colorB2
hi link lualine_b_replace colorB2
hi link lualine_c_replace colorB2

hi link lualine_c_insert colorB2
hi link lualine_a_insert colorB2
hi link lualine_b_insert colorB2

hi link lualine_c_inactive colorB2
hi link lualine_a_inactive colorB2
hi link lualine_b_inactive colorB2

hi link lualine_c_terminal colorB2
hi link lualine_a_terminal colorB2
hi link lualine_b_terminal colorB2


" lualine_b_diff_removed_insert xxx guifg=#0000ff guibg=#28292a
" lualine_b_diff_removed_visual xxx guifg=#0000ff guibg=#28292a
" lualine_b_diff_removed_replace xxx guifg=#0000ff guibg=#28292a
" lualine_b_diff_removed_command xxx guifg=#0000ff guibg=#28292a
" lualine_b_diff_removed_terminal xxx guifg=#0000ff guibg=#28292a
" lualine_b_diff_removed_inactive xxx guifg=#0000ff guibg=#28292a
"
" lualine_b_diagnostics_error_normal xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_error_insert xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_error_visual xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_error_replace xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_error_command xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_error_terminal xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_error_inactive xxx guifg=#797d7f guibg=#28292a
"
" lualine_b_diagnostics_warn_normal xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_warn_insert xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_warn_visual xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_warn_replace xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_warn_command xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_warn_terminal xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_warn_inactive xxx guifg=#797d7f guibg=#28292a
"
" lualine_b_diagnostics_info_normal xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_info_insert xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_info_visual xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_info_replace xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_info_command xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_info_terminal xxx guifg=#797d7f guibg=#28292a
" lualine_b_diagnostics_info_inactive xxx guifg=#797d7f guibg=#28292a
"
" lualine_b_diagnostics_hint_normal xxx guifg=#949a9c guibg=#28292a
" lualine_b_diagnostics_hint_insert xxx guifg=#949a9c guibg=#28292a
" lualine_b_diagnostics_hint_visual xxx guifg=#949a9c guibg=#28292a
" lualine_b_diagnostics_hint_replace xxx guifg=#949a9c guibg=#28292a
" lualine_b_diagnostics_hint_command xxx guifg=#949a9c guibg=#28292a
" lualine_b_diagnostics_hint_terminal xxx guifg=#949a9c guibg=#28292a
" lualine_b_diagnostics_hint_inactive xxx guifg=#949a9c guibg=#28292a



