let files = filter(globpath(&rtp, 'syntax/godebugvariables.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'go') == -1

if exists("b:current_syntax")
  finish
endif

syn match godebugTitle '^#.*'
syn match godebugVariables '^\s*\S\+\ze:'

syn keyword     goType              chan map bool string error
syn keyword     goSignedInts        int int8 int16 int32 int64 rune
syn keyword     goUnsignedInts      byte uint uint8 uint16 uint32 uint64 uintptr
syn keyword     goFloats            float32 float64
syn keyword     goComplexes         complex64 complex128

syn keyword     goBoolean                  true false

let b:current_syntax = "godebugvariables"

hi def link godebugTitle Underlined
hi def link godebugVariables Statement
hi def link goType Type
hi def link goBoolean Boolean

" vim: sw=2 ts=2 et

endif
