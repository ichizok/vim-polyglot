let files = filter(globpath(&rtp, 'ftplugin/tmux.vim', 1, 1), { _, v -> v !~ "vim-polyglot" && v !~ $VIMRUNTIME && v !~ "after" })
if len(files) > 0
  exec 'source ' . files[0]
  finish
endif
if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'tmux') == -1

" Vim filetype plugin file
" Language: tmux(1) configuration file
" URL: https://github.com/ericpruitt/tmux.vim/
" Maintainer: Eric Pruitt <eric.pruitt@gmail.com>
" Last Changed: 2017 Mar 10

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setlocal comments< commentstring<"

setlocal comments=:#
setlocal commentstring=#\ %s

endif
