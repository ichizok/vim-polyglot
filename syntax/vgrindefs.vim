let files = filter(globpath(&rtp, 'syntax/vgrindefs.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'vgrindefs') == -1

" Vim syntax file
" Language:	Vgrindefs
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2005 Jun 20

" The Vgrindefs file is used to specify a language for vgrind

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Comments
syn match vgrindefsComment "^#.*"

" The fields that vgrind recognizes
syn match vgrindefsField ":ab="
syn match vgrindefsField ":ae="
syn match vgrindefsField ":pb="
syn match vgrindefsField ":bb="
syn match vgrindefsField ":be="
syn match vgrindefsField ":cb="
syn match vgrindefsField ":ce="
syn match vgrindefsField ":sb="
syn match vgrindefsField ":se="
syn match vgrindefsField ":lb="
syn match vgrindefsField ":le="
syn match vgrindefsField ":nc="
syn match vgrindefsField ":tl"
syn match vgrindefsField ":oc"
syn match vgrindefsField ":kw="

" Also find the ':' at the end of the line, so all ':' are highlighted
syn match vgrindefsField ":\\$"
syn match vgrindefsField ":$"
syn match vgrindefsField "\\$"

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link vgrindefsField	Statement
hi def link vgrindefsComment	Comment

let b:current_syntax = "vgrindefs"

" vim: ts=8

endif
