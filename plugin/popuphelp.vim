" popuphelp
" Author: skanehira
" License: MIT

if exists('g:loaded_popuphelp')
  finish
endif
let g:loaded_popuphelp = 1

command! -nargs=1 Help call popuphelp#help(<f-args>)

let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
