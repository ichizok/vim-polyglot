let files = filter(globpath(&rtp, 'ftplugin/m4.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'm4') == -1

" Vim filetype plugin file
" Language:             m4
" Previous Maintainer:  Nikolai Weibull <now@bitwi.se>
" Latest Revision:      2008-07-09

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl com< cms< fo<"

setlocal comments=:#,:dnl commentstring=dnl\ %s
setlocal formatoptions-=t formatoptions+=croql

let &cpo = s:cpo_save
unlet s:cpo_save

endif
