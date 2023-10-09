highlight clear
if exists("syntax_on")
	syntax reset
endif


" C O L O R  S E T U P
" --------------------

hi! INVISIBLE							ctermbg=NONE		ctermfg=NONE	cterm=NONE


hi! B_SELECT_BACKGROUND_MONO4_N			ctermbg=8			ctermfg=7		cterm=NONE
hi! B_SELECT_BACKGROUND_N				ctermbg=8			ctermfg=NONE	cterm=NONE
hi! B_SELECT_BACKGROUND_B				ctermbg=8			ctermfg=NONE	cterm=bold
hi! F_SELECT_BACKGROUND_N				ctermbg=NONE		ctermfg=8		cterm=NONE
hi! F_SELECT_BACKGROUND_I				ctermbg=NONE		ctermfg=8		cterm=italic
hi! F_SELECT_BACKGROUND_B				ctermbg=NONE		ctermfg=8		cterm=bold


" monochrome 3
hi! B_COMMENTS_PURPLE_N					ctermbg=15			ctermfg=5		cterm=NONE
hi! B_COMMENTS_N						ctermbg=15			ctermfg=NONE	cterm=NONE
hi! F_COMMENTS_N						ctermbg=NONE		ctermfg=15		cterm=NONE
hi! F_COMMENTS_I						ctermbg=NONE		ctermfg=15		cterm=italic
hi! F_COMMENTS_B						ctermbg=NONE		ctermfg=15		cterm=bold


" monochrome 7
hi! F_OPERATOR_N						ctermbg=NONE		ctermfg=1		cterm=NONE
hi! F_OPERATOR_I						ctermbg=NONE		ctermfg=1		cterm=italic
hi! F_OPERATOR_B						ctermbg=NONE		ctermfg=1		cterm=bold


" monochrome 8
hi! F_PUNCTUATION_N						ctermbg=NONE		ctermfg=15		cterm=NONE
hi! F_PUNCTUATION_I						ctermbg=NONE		ctermfg=15		cterm=italic
hi! F_PUNCTUATION_B						ctermbg=NONE		ctermfg=15		cterm=bold


" ------------------------------------------------------------------------------- "



" background 0
hi! F_BACKGROUND_N						ctermbg=NONE		ctermfg=0		cterm=NONE
hi! F_BACKGROUND_I						ctermbg=NONE		ctermfg=0		cterm=italic
hi! F_BACKGROUND_B						ctermbg=NONE		ctermfg=0		cterm=bold

" red 1
hi! F_RED_N								ctermbg=NONE		ctermfg=1		cterm=NONE
hi! F_RED_I								ctermbg=NONE		ctermfg=1		cterm=italic
hi! F_RED_B								ctermbg=NONE		ctermfg=1		cterm=bold

" green 2
hi! F_GREEN_N							ctermbg=NONE		ctermfg=2		cterm=NONE
hi! F_GREEN_I							ctermbg=NONE		ctermfg=2		cterm=italic
hi! F_GREEN_B							ctermbg=NONE		ctermfg=2		cterm=bold

" yellow 3
hi! F_YELLOW_N							ctermbg=NONE		ctermfg=3		cterm=bold
hi! F_YELLOW_I							ctermbg=NONE		ctermfg=3		cterm=italic
hi! F_YELLOW_B							ctermbg=NONE		ctermfg=3		cterm=bold

" blue 4
hi! F_BLUE_N							ctermbg=NONE		ctermfg=4		cterm=NONE
hi! F_BLUE_I							ctermbg=NONE		ctermfg=4		cterm=italic
hi! F_BLUE_B							ctermbg=NONE		ctermfg=4		cterm=bold

" purple 5
hi! F_PURPLE_N							ctermbg=NONE		ctermfg=5		cterm=NONE
hi! F_PURPLE_I							ctermbg=NONE		ctermfg=5		cterm=italic
hi! F_PURPLE_B							ctermbg=NONE		ctermfg=5		cterm=bold

" cyan 6
hi! F_CYAN_N							ctermbg=NONE		ctermfg=6		cterm=NONE
hi! F_CYAN_I							ctermbg=NONE		ctermfg=6		cterm=italic
hi! F_CYAN_B							ctermbg=NONE		ctermfg=6		cterm=bold

" foregroud 7
hi! F_FOREGROUND_N						ctermbg=NONE		ctermfg=7		cterm=NONE
hi! F_FOREGROUND_I						ctermbg=NONE		ctermfg=7		cterm=italic
hi! F_FOREGROUND_B						ctermbg=NONE		ctermfg=7		cterm=bold



" highlight 8
hi! F_HIGHLIGHT_N						ctermbg=NONE		ctermfg=8		cterm=NONE
hi! F_HIGHLIGHT_I						ctermbg=NONE		ctermfg=8		cterm=italic
hi! F_HIGHLIGHT_B						ctermbg=NONE		ctermfg=8		cterm=bold

" background highlight 8
hi! B_HIGHLIGHT_N						ctermbg=8		ctermfg=NONE		cterm=NONE
hi! B_HIGHLIGHT_I						ctermbg=8		ctermfg=NONE		cterm=italic
hi! B_HIGHLIGHT_B						ctermbg=8		ctermfg=NONE		cterm=bold

hi MONO3								ctermbg=NONE		ctermfg=12		cterm=italic


" E N D
" -----




" I N T E R F A C E
" -----------------
" normal text
hi! link Normal			F_FOREGROUND_N

" current quickfix item in the quickfix window
hi! link QuickFixLine	B_SELECT_BACKGROUND_B
" concealed separator
hi! link qfSeparator	F_BACKGROUND_N
" filename
hi! link qfFileName		F_FOREGROUND_B
" error location
hi! link qfLineNr		F_KEYWORDS_N
" ???????
hi! link qfError		F_STRINGS_B


" linked to 'Whitespace'
hi! link Nontext		MONO3
" unprintable lead and trail
hi! link Whitespace		Nontext

" masked items
hi! link Conceal		Nontext
" like conceal
hi! link Ignore			Nontext
" tilde blank buffer
hi! link EndOfBuffer	Nontext


" match bracket
hi!	link MatchParen		F_YELLOW_I
" visual selection
hi! link Visual			Nontext

" windows separators
hi! link WinSeparator	Nontext
" cursorLine
hi! link CursorLine		Nontext
" current line number
hi!	link CursorLineNr	F_COMMENTS_B

" vertical cursorline
hi! link CursorColumn	B_MONO1_N
" line number
hi!	link LineNr			Nontext
"left column where signs are displayed
hi! link SignColumn		F_SELECT_BACKGROUND_N

" current buffer statusline
hi! link StatusLine		B_SELECT_BACKGROUND_N "!!! define foregroud
" non-focus buffer statusline
hi! link StatusLineNC	INVISIBLE "!!! define foreground

" T A B
" tab number
hi!	link Title			F_FOREGROUND_B
" unhighlighted tab
hi! link TabLine		B_SELECT_BACKGROUND_N "!!! define foreground
" highlighted tab
hi!	link TabLineSel		B_COMMENTS_N "!!! define foreground
" tab background
hi! link TabLineFill	B_SELECT_BACKGROUND_N
" highlight search
hi! link IncSearch		F_KEYWORDS_I



" error highlight vim script
"hi! link Error			INVISIBLE





" M E N U
" unselected field menu
hi! link Pmenu			B_SELECT_BACKGROUND_MONO4_N
" selected field menu
hi! link PmenuSel		B_COMMENTS_PURPLE_N
" menu scrollbar
hi! link PmenuSbar		B_MONO5_N
" background scrollbar
hi! link PmenuThumb		B_COMMENTS_N



" like SignColumn when 'cursorline' is set for the cursor line
" ??? hi! link CursorLineSign F_PURPLE_I










" command line message
hi! link MsgArea				F_FOREGROUND_N
" error messages on the command line
hi! link ErrorMsg				F_KEYWORDS_N
" more-prompt
hi! link MoreMsg				Normal
" 'showmode' message
hi! link ModeMsg				Normal
" prompt questions
hi! link Question				Normal
" warning messages
hi! link WarningMsg				F_CONSTANTS_B
" separator for scrolled messages
hi! link MsgSeparator			Normal


" unprintable characters like <CR>
hi! link SpecialKey				F_CONSTANTS_N
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
hi! link Identifier		F_FOREGROUND_N
" type
hi! link Type			F_CYAN_I
" string
hi! link String			F_YELLOW_I
" character
hi! link Character		F_YELLOW_I
" number
hi! link Number			F_PURPLE_N
" comment
hi! link Comment		MONO3
" keyword
hi! link Keyword		F_PURPLE_N
" structure
hi! link Structure		F_PURPLE_N
" storageClass (static)
hi! link StorageClass	F_PURPLE_N
" typedef
hi! link Typedef		F_PURPLE_N
" conditional (if, else)
hi! link Conditional	F_RED_N
" repeat (while, do, for)
hi! link Repeat			F_RED_N
" return, continue, break, goto
hi! link Statement		F_RED_N
" case default
hi! link Label			F_RED_N
" operator (sizeof, new, delete)
hi! link Operator		F_RED_N
" function
hi! link Function		F_GREEN_I
" constant
hi! link Constant		F_PURPLE_N
"Exception
hi! link Exception		F_RED_N
"PreProc #define
hi! link PreProc		F_RED_N
"PreCondit
hi! link PreCondit		F_RED_N
"Define
hi! link Define			F_RED_N
"Include
hi! link Include		F_RED_N
"Special
hi! link Special		F_PURPLE_N
"SpecialChar
hi! link SpecialChar	F_PURPLE_N
"Delimiter
hi! link Delimiter		F_PURPLE_N
" important things in comment region
hi! link Todo			F_YELLOW_I

hi! link Punctuation	F_HIGHLIGHT_I










"hi! link IndentBlanklineContextChar Punctuation



" File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
hi! link TSInclude					Include
" Preprocessor #define statements.
hi! link TSDefine					Define
" Preprocessor #if, #else, #endif, etc.
hi! link TSPreProc					PreProc

" Exception related keywords: `try`, `except`, `finally` in Python.
hi! link TSException				Exception
" Type definitions, e.g. `typedef` in C.
hi! link TSTypeDefinition			Keyword
" Keywords that don't fit into other categories.
hi! link TSKeyword					Keyword
" Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
hi! link TSStorageClass				StorageClass
" Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
hi! link TSTypeQualifier			Keyword

" Keywords used to define a function. 'func'
hi! link TSKeywordFunction			Function
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
hi! link TSPunctBracket				Comment
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
hi! link TSNote						Normal
" Text representation of a warning note.
hi! link TSWarning					Exception
" Text representation of a danger note.
hi! link TSDanger					Exception
" Tags like HTML tag names.
hi! link TSTag						Normal
" Tag delimiters like `<` `>` `/`.
hi! link TSTagDelimiter				Operator
" Footnotes, text references, citations, etc.
hi! link TSTextReference			Normal
" Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
hi! link TSAttribute				Normal
" Anything that needs extra attention, such as keywords like TODO or FIXME.
hi! link TSTodo						Exception
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





hi! link DiagnosticError				F_CONSTANTS_B
hi! link DiagnosticWarn					F_KEYWORDS_I
hi! link DiagnosticInfo					Normal
hi! link DiagnosticHint					Normal

hi! link DiagnosticUnderlineError		F_FOREGROUND_U
hi! link DiagnosticUnderlineWarn		F_FOREGROUND_U
hi! link DiagnosticUnderlineInfo		F_FOREGROUND_U
hi! link DiagnosticUnderlineHint		F_FOREGROUND_U
"
"hi! link DiagnosticVirtualTextError
"hi! link DiagnosticVirtualTextWarn
"hi! link DiagnosticVirtualTextInfo
"hi! link DiagnosticVirtualTextHint
"
"hi! link DiagnosticFloatingError
"hi! link DiagnosticFloatingWarn
"hi! link DiagnosticFloatingInfo
"hi! link DiagnosticFloatingHint
"
"hi! link DiagnosticSignError
"hi! link DiagnosticSignWarn
"hi! link DiagnosticSignInfo
"hi! link DiagnosticSignHint
"
"hi! link DiagnosticInformation
"hi! link DiagnosticWarning





" T E L E S C O P E
"
hi! link TelescopeBorder		F_COMMENTS_N
hi! link TelescopeSelection		F_FOREGROUND_N
hi! link TelescopeNormal		F_COMMENTS_N

hi! link TelescopeMatching		F_FUNCTIONS_N
"
hi! link TelescopePromptNormal	F_FOREGROUND_N
hi! link TelescopePromptTitle	F_FUNCTIONS_N
hi! link TelescopePromptCounter F_FUNCTIONS_N
hi! link TelescopeTitle			F_FUNCTIONS_N








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
