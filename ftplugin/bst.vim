let files = filter(globpath(&rtp, 'ftplugin/bst.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'bst') == -1

" Vim filetype plugin file
" Language:	bst
" Author:	Tim Pope <vimNOSPAM@tpope.info>
" $Id: bst.vim,v 1.1 2007/05/05 17:37:57 vimboss Exp $

if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setlocal commentstring=%\ %s
setlocal comments=:%
setlocal fo-=t fo+=croql

let b:undo_ftplugin = "setlocal com< cms< fo<"

endif
