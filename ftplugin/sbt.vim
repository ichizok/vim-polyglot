let files = filter(globpath(&rtp, 'ftplugin/sbt.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'sbt') == -1

" Vim filetype plugin file
" Language:     sbt
" Maintainer:   Steven Dobay <stevendobay at protonmail.com>
" License:      Same as Vim
" Last Change:  2017.04.30
" ----------------------------------------------------------------------------

if exists('b:did_ftplugin') || &cp
  finish
endif

let b:did_ftplugin = 1

runtime! ftplugin/scala.vim


endif
