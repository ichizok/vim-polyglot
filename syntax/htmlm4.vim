let files = filter(globpath(&rtp, 'syntax/htmlm4.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'htmlm4') == -1

" Vim syntax file
" Language:	HTML and M4
" Maintainer:	Claudio Fleiner <claudio@fleiner.com>
" URL:		http://www.fleiner.com/vim/syntax/htmlm4.vim
" Last Change:	2001 Apr 30

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" we define it here so that included files can test for it
if !exists("main_syntax")
  let main_syntax='htmlm4'
endif

runtime! syntax/html.vim
unlet b:current_syntax
syn case match

runtime! syntax/m4.vim

unlet b:current_syntax
syn cluster htmlPreproc add=@m4Top
syn cluster m4StringContents add=htmlTag,htmlEndTag

let b:current_syntax = "htmlm4"

if main_syntax == 'htmlm4'
  unlet main_syntax
endif

endif
