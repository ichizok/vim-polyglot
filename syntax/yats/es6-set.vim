let files = filter(globpath(&rtp, 'syntax/yats/es6-set.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'typescript') == -1

syntax keyword typescriptGlobal containedin=typescriptIdentifierName Set WeakSet
syntax keyword typescriptES6SetProp contained size
syntax cluster props add=typescriptES6SetProp
if exists("did_typescript_hilink") | HiLink typescriptES6SetProp Keyword
endif
syntax keyword typescriptES6SetMethod contained add clear delete entries forEach has nextgroup=typescriptFuncCallArg
syntax keyword typescriptES6SetMethod contained values nextgroup=typescriptFuncCallArg
syntax cluster props add=typescriptES6SetMethod
if exists("did_typescript_hilink") | HiLink typescriptES6SetMethod Keyword
endif

endif
