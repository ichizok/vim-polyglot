let files = filter(globpath(&rtp, 'indent/less.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'less') == -1

" Vim indent file
" Language:	less
" Maintainer:	Alessandro Vioni <jenoma@gmail.com>
" URL: https://github.com/genoma/vim-less
" Last Change:	2014 November 24

if exists("b:did_indent")
  finish
endif

runtime! indent/css.vim

" vim:set sw=2:

endif
