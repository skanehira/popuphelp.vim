" popuphelp
" Author: skanehira
" License: MIT

let s:save_cpo = &cpo
set cpo&vim

function! popuphelp#help(word) abort
    exe 'h' a:word
    let buf = bufnr()
    let line = line('.')
    q

    let id = popup_menu(buf, #{
                \ maxheight: &lines/2,
                \ mapping: 0,
                \ })

    call win_execute(id, printf('call setpos(".", [0, %d, 1, 0])', line))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
