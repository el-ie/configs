"" Vim syntax file
"" Language:				swift
"" Current Maintainer:	untitled
"" Last Change:			2022 Sep 23
let b:current_syntax = "swift"
"
"
"
"
"
""///////////////////////////////////////////////////////////////////////////////////////////////////////////

" Keywords
" actor any associatedtype associativity async
" atexit await break case catch class continue
" convenience default defer deinit didSet do
" dynamic else extension fallthrough fileprivate
" final for func get guard if import in infix
" init inout internal isolated lazy let mutating
" nil nonisolated nonmutating open operator optional
" override postfix precedence precedencegroup prefix
" private protocol public repeat required return
" self set some static subscript super switch throw
" try typealias unowned var weak where while willSet
" rethrows throws struct enum




" H A S H "
"""""""""""
syntax match swiftHash			/\#available\|\#colorLiteral\|\#dsohandle\|
								\\#if\|\#else\|\#elseif\|\#endif\|\#fileID
								\\#file\|\#filePath\|\#fileLiteral\|
								\\#line\|\#column\|\#function\|
								\\#imageLiteral\|\#keyPath\|
								\\#selector\|\#sourceLocation\|
								\\#error\|\#warning\|
								\\#setline\|#unavailable/ " ??
hi! link swiftHash Function




" A T T R I B U T E S "
"""""""""""""""""""""""
syntax match swiftAttributes	/@_disfavoredOverload\|@_exported\|@_implementationOnly\|@_silgen_name
								\\|@AppStorage\|@assignment\|@autoclosure\|@available\|@Binding
								\\|@convention\|@discardableResult\|@Environment\|@EnvironmentObject
								\\|@escaping\|@exported\|@FetchRequest\|@FocusedBinding\|@FocusedValue
								\\|@frozen\|@GestureState\|@IBAction\|@IBDesignable\|@IBInspectable
								\\|@IBOutlet\|@inlinable\|@main\|@MainActor\|@Namespace\|@noescape
								\\|@nonobjc\|@noreturn\|@NSApplicationDelegateAdaptor\|@NSApplicationMain
								\\|@NSCopying\|@NSManaged\|@objc\|@ObservedObject\|@preconcurrency
								\\|@propertyWrapper\|@Published\|@resultBuilder\|@ScaledMetric
								\\|@SceneStorage\|@Sendable\|@State\|@StateObject\|@testable
								\\|@UIApplicationDelegateAdaptor\|@UIApplicationMain\|@usableFromInline/
hi! link swiftAttributes Function


syntax keyword swiftConstant				true false nil
hi! link swiftConstant Constant

" S T O R A G E  C L A S S

syntax keyword swiftStorage					static var let mutating nonmutating weak inout
highlight link swiftStorage StorageClass


" C O N T R O L  F L O W
syntax keyword	swiftStatement				return break continue case default defer fallthrough in where

highlight link swiftStatement Statement


"syntax keyword	swiftLabel
"highlight link swiftLabel Label

syntax keyword	swiftConditional			if else switch guard
highlight link swiftConditional Conditional

syntax keyword	swiftRepeat					while for repeat
highlight link swiftRepeat Repeat


syntax keyword swiftInit					init deinit self Self super
hi! link swiftInit Operator

" S T R U C T U R E
syntax keyword swiftStructure				class struct enum protocol extension func
hi! link swiftStructure Structure

syntax keyword swiftAccess					open public private internal fileprivate
hi! link swiftAccess Keyword

hi! link swiftModifier Keyword
syn keyword swiftModifier					required override final associativity convenience didSet
											\ dynamic get indirect infix lazy left none
											\ optional postfix precedence prefix Protocol
											\ right set some Type unowned willSet
											\ Any as is

syn keyword swiftException					do try catch throw throws rethrows
hi! link swiftException Exception

" keyword declaration
"associatedtype
"operator
"precedencegroup
"rethrows
"subscript
"typealias

"syn keyword swiftStatement
"hi! link swiftStatement Statement



syntax match swiftIdentifier /\<\h\w*\>/
hi! link swiftIdentifier Identifier

" Uppercase start variable
syntax match swiftType			"\<\u\w*\>"
hi! link swiftType Type

" function
syntax match swiftFunction		/\<[_a-z]\w*\>\(\s\|\n\)*(/me=e-1
highlight link swiftFunction Function




" I M P O R T "
"""""""""""""""

syntax match swiftModule				"\(import\s\+\)\@<=\w\+\(;\|$\)\@="
highlight link swiftModule Punctuation

syntax keyword swiftImport					import
highlight link swiftImport Include



" G O T O "
"""""""""""

syntax match swiftJump			"^\s*\w\+\(\n\|\s\)*:"
highlight link swiftJump Operator





" O P E R A T O R  &  P U N C T U A T I O N "
"""""""""""""""""""""""""""""""""""""""""""""

syntax match swiftSeparator				":\|;\|,"
hi! link swiftSeparator Punctuation

syntax match swiftParent				"(\|)"
hi! link swiftParent Punctuation

syntax match swiftCurly					"{\|}"
hi! link swiftCurly Punctuation

syntax match swiftBracket				"\[\|\]"
hi! link swiftBracket Punctuation

syntax match swiftOperator				"<\|>\|?\|%\|*\|&\|=\|+\|-\|/\|!\||\|\.\|\^"
hi! link swiftOperator Operator




" N U M B E R "
"""""""""""""""
" start with \(=\|(\|\s\+\)\@<=
" end with \()\|;\|\s\+\)\@=
"
"
" NEED ADD ->>> \< \> !!!!!!!!!!!!!!!!!!!!!!!!!

" decimal (can be float)
syntax match swiftDecimal				"\([+-]\?\d[0-9_]*\(\.\d[0-9_]*\)\?\([Ee][+-]\?\d[0-9_]*\)\?\)"
hi! link swiftDecimal Number
"" binary
syntax match swiftBinary				"[+-]\?0b[0-1][0-1_]*"
hi! link swiftBinary Number
"" octal
syntax match swiftOctal					"[+-]\?0o\o[0-7_]*"
hi! link swiftOctal Number
"" hexadecimal (can be float)
syntax match swiftHexadecimal			"[+-]\?0x\x[[:xdigit:]_]*\(\.\x[[:xdigit:]_]*\)\?\([Pp][+-]\?\d[0-9_]*\)\?"
hi! link swiftHexadecimal Number





" E S C A P E  K E Y W O R D "
""""""""""""""""""""""""""""""

" backticks escape keyword
syntax region swiftEscapedKeyword start="`" end="`" oneline
hi! link swiftEscapedKeyword Identifier



" C O M M E N T "
"""""""""""""""""

syntax match swiftLineComment			"//.*$" contains=swiftTodo oneline
hi! link swiftLineComment Comment

syntax region swiftMultilineComment		start="/\*" end="\*/" contains=swiftTodo fold
hi! link swiftMultilineComment Comment

" Force vim to sync at least x lines. Fix multiline comment not appear
syntax sync minlines=100

" Todo
syntax case ignore
syntax keyword swiftTodo contained attention author authors bug complexity copyright date
									\ experiment important invariant note parameter
									\ postcondition precondition
									\ remark remarks requires returns
									\ see since throws todo
									\ version warning fixme

hi! link swiftTodo Operator
syntax case match




" S T R I N G "
"""""""""""""""

syntax region swiftInterRegion matchgroup=swiftInterpolation start="\\(" end=")" containedin=swiftString contains=ALL
hi! link swiftInterpolation Operator

syntax region swiftParentRegion matchgroup=swiftParent start="(" end=")" contains=ALL
hi! link swiftParent Punctuation

syntax match swiftUnicode "\\u{\x\{1,8}}" containedin=swiftString
hi! link swiftUnicode Number

" special character \n \r \t \0
syntax match swiftSpecialCharacter			/\\[0tnr]/ contained
hi! link swiftSpecialCharacter Number

" escape \
syntax match swiftSlashEscape				/\\\\/he=e-1 contained
highlight link swiftSlashEscape Punctuation

" escape "
syntax match swiftQuoteEscape				/\\"/he=e-1 contained
highlight link swiftQuoteEscape Punctuation

" string
syntax region swiftString matchgroup=swiftQuote start=/"/ skip=/\\"/ end=/"/ contains=swiftSlashEscape,swiftQuoteEscape,swiftSpecialCharacter,swiftInterpolation oneline
highlight link swiftString String
highlight link swiftQuote Punctuation








" R E G E X
"syntax match swiftRegex				"/[^/]\+."
"hi! link swiftRegex Number

" Shebang
"syntax match swiftShebang "\v#!.*$"
"hi! link swiftShebang Function



"keepend
"syntax region	swiftString matchgroup=cppQuote start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=cppEscape, cppHexaEscape keepend
"    #"characters"#
"    #"""
"    characters
"    """#

" Strings
"syntax region swiftString start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=swiftInterpolatedWrapper oneline
"syntax region swiftMultilineString start=/"""/ end=/"""/ contains=swiftMultilineInterpolatedWrapper
"syntax region swiftMultilineInterpolatedWrapper start='\v\zs\\\(\s*' end='\v\s*\)' contained containedin=swiftMultilineString contains=swiftInterpolatedString oneline
"syntax region swiftInterpolatedWrapper start='\v(^|[^\\])\zs\\\(\s*' end='\v\s*\)' contained containedin=swiftString contains=swiftInterpolatedString,swiftString oneline
"syntax match swiftInterpolatedString "\v\w+(\(\))?" contained containedin=swiftInterpolatedWrapper,swiftMultilineInterpolatedWrapper oneline



"syntax match swiftTypeDeclaration /->/ skipwhite nextgroup=swiftType
"containedin=swiftTypeWrapper,swiftLiteralWrapper,swiftGenericsWrapper,swiftTypeCastWrapper
"syntax region swiftTypeWrapper start=":\s*\(\.\)\@!\<\u" skip="\s*,\s*$*\s*" end="$\|/"me=e-1 contains=ALLBUT,swiftInterpolatedWrapper,swiftMultilineInterpolatedWrapper transparent
"syntax region swiftTypeCastWrapper start="\(as\|is\)\(!\|?\)\=\s\+" end="\v(\s|$|\{)" contains=swiftType,swiftCastKeyword keepend transparent oneline
"syntax region swiftGenericsWrapper start="\v\<" end="\v\>" contains=swiftType transparent oneline
"syntax region swiftLiteralWrapper start="\v\=\s*" skip="\v[^\[\]]\(\)" end="\v(\[\]|\(\))" contains=ALL transparent oneline
"syntax region swiftReturnWrapper start="\v-\>\s*" end="\v(\{|$)" contains=swiftType transparent oneline




"" Methods/Functions/Properties
"syntax match swiftMethod "\.\@<=\<\D\w*\>\ze("

"syntax match swiftProperty "\.\@<=\<\D\w*\>(\@!"

"" Swift closure arguments
"syntax match swiftClosureArgument "\$\d\+\(\.\d\+\)\?"

"syntax match swiftAvailability "\v((\*(\s*,\s*[a-zA-Z="0-9.]+)*)|(\w+\s+\d+(\.\d+(.\d+)?)?\s*,\s*)+\*)" contains=swiftString
"syntax keyword swiftPlatforms OSX iOS watchOS OSXApplicationExtension iOSApplicationExtension contained containedin=swiftAvailability
"syntax keyword swiftAvailabilityArg renamed unavailable introduced deprecated obsoleted message contained containedin=swiftAvailability
