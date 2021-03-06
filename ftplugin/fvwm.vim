let files = filter(globpath(&rtp, 'ftplugin/fvwm.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'fvwm') == -1

" Created	: Tue 09 May 2006 02:07:31 PM CDT
" Modified	: Tue 09 May 2006 02:07:31 PM CDT
" Author	: Gautam Iyer <gi1242@users.sourceforge.net>
" Description	: ftplugin for fvwm config files

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl com< cms< fo<"

setlocal comments=:# commentstring=#\ %s
setlocal formatoptions-=t formatoptions+=croql

endif
