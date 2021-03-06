let files = filter(globpath(&rtp, 'syntax/yats/es6-date.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'typescript') == -1

syntax keyword typescriptGlobal containedin=typescriptIdentifierName Date nextgroup=typescriptGlobalDateDot,typescriptFuncCallArg
syntax match   typescriptGlobalDateDot /\./ contained nextgroup=typescriptDateStaticMethod,typescriptProp
syntax keyword typescriptDateStaticMethod contained UTC now parse nextgroup=typescriptFuncCallArg
if exists("did_typescript_hilink") | HiLink typescriptDateStaticMethod Keyword
endif
syntax keyword typescriptDateMethod contained getDate getDay getFullYear getHours nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained getMilliseconds getMinutes getMonth nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained getSeconds getTime getTimezoneOffset nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained getUTCDate getUTCDay getUTCFullYear nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained getUTCHours getUTCMilliseconds getUTCMinutes nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained getUTCMonth getUTCSeconds setDate setFullYear nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained setHours setMilliseconds setMinutes nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained setMonth setSeconds setTime setUTCDate nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained setUTCFullYear setUTCHours setUTCMilliseconds nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained setUTCMinutes setUTCMonth setUTCSeconds nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained toDateString toISOString toJSON toLocaleDateString nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained toLocaleFormat toLocaleString toLocaleTimeString nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained toSource toString toTimeString toUTCString nextgroup=typescriptFuncCallArg
syntax keyword typescriptDateMethod contained valueOf nextgroup=typescriptFuncCallArg
syntax cluster props add=typescriptDateMethod
if exists("did_typescript_hilink") | HiLink typescriptDateMethod Keyword
endif

endif
