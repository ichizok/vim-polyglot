let files = filter(globpath(&rtp, 'ftplugin/css.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'css') == -1

" Vim filetype plugin file
" Language:		CSS
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainer:	Nikolai Weibull <now@bitwi.se>
" Latest Revision:	2008-07-09

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl com< cms< inc< fo< ofu<"

setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
setlocal formatoptions-=t formatoptions+=croql
setlocal omnifunc=csscomplete#CompleteCSS

let &l:include = '^\s*@import\s\+\%(url(\)\='

let &cpo = s:cpo_save
unlet s:cpo_save

endif
