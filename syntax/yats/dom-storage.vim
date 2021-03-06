let files = filter(globpath(&rtp, 'syntax/yats/dom-storage.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'typescript') == -1

syntax keyword typescriptDOMStorage contained sessionStorage localStorage
if exists("did_typescript_hilink") | HiLink typescriptDOMStorage Keyword
endif
syntax keyword typescriptDOMStorageProp contained length
syntax cluster props add=typescriptDOMStorageProp
if exists("did_typescript_hilink") | HiLink typescriptDOMStorageProp Keyword
endif
syntax keyword typescriptDOMStorageMethod contained getItem key setItem removeItem nextgroup=typescriptFuncCallArg
syntax keyword typescriptDOMStorageMethod contained clear nextgroup=typescriptFuncCallArg
syntax cluster props add=typescriptDOMStorageMethod
if exists("did_typescript_hilink") | HiLink typescriptDOMStorageMethod Keyword
endif

endif
