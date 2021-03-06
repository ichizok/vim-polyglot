let files = filter(globpath(&rtp, 'ftplugin/less.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'less') == -1

" Vim filetype plugin
" Language:	less
" Maintainer:	Alessandro Vioni <jenoma@gmail.com>
" URL: https://github.com/genoma/vim-less
" Last Change:	2014 November 24

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< def< inc< inex< ofu< sua<"

setlocal formatoptions-=t formatoptions+=croql

setlocal comments=:// commentstring=//\ %s

setlocal omnifunc=csscomplete#CompleteCSS
setlocal suffixesadd=.less

endif
