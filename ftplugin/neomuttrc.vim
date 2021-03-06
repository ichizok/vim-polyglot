let files = filter(globpath(&rtp, 'ftplugin/neomuttrc.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'neomuttrc') == -1

" Vim filetype plugin file
" Language:             NeoMutt RC File
" Previous Maintainer:  Guillaume Brogi <gui-gui@netcourrier.com>
" Latest Revision:      2017-09-17
" Original version copied from ftplugin/muttrc.vim

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl com< cms< inc< fo<"

setlocal comments=:# commentstring=#\ %s
setlocal formatoptions-=t formatoptions+=croql

let &l:include = '^\s*source\>'

let &cpo = s:cpo_save
unlet s:cpo_save

endif
