let files = filter(globpath(&rtp, 'syntax/yats/es6-object.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'typescript') == -1

syntax keyword typescriptGlobal containedin=typescriptIdentifierName Object nextgroup=typescriptGlobalObjectDot,typescriptFuncCallArg
syntax match   typescriptGlobalObjectDot /\./ contained nextgroup=typescriptObjectStaticMethod,typescriptProp
syntax keyword typescriptObjectStaticMethod contained create defineProperties defineProperty nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectStaticMethod contained entries freeze getOwnPropertyDescriptors nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectStaticMethod contained getOwnPropertyDescriptor getOwnPropertyNames nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectStaticMethod contained getOwnPropertySymbols getPrototypeOf nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectStaticMethod contained is isExtensible isFrozen isSealed nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectStaticMethod contained keys preventExtensions values nextgroup=typescriptFuncCallArg
if exists("did_typescript_hilink") | HiLink typescriptObjectStaticMethod Keyword
endif
syntax keyword typescriptObjectMethod contained getOwnPropertyDescriptors hasOwnProperty nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectMethod contained isPrototypeOf propertyIsEnumerable nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectMethod contained toLocaleString toString valueOf seal nextgroup=typescriptFuncCallArg
syntax keyword typescriptObjectMethod contained setPrototypeOf nextgroup=typescriptFuncCallArg
syntax cluster props add=typescriptObjectMethod
if exists("did_typescript_hilink") | HiLink typescriptObjectMethod Keyword
endif

endif
