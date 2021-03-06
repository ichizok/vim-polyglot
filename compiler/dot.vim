let files = filter(globpath(&rtp, 'compiler/dot.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'dot') == -1

" Vim compiler file
" Compiler:     ATT dot
" Maintainer:	Marcos Macedo <bar4ka@bol.com.br>
" Last Change:	2004 May 16

if exists("current_compiler")
  finish
endif
let current_compiler = "dot"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=dot\ -T$*\ \"%:p\"\ -o\ \"%:p:r.$*\"

endif
