" GUARD: {{{
"============================================================
if exists('g:loaded_macvim_transparency')
  " finish
endif
let g:loaded_macvim_transparency = 1

let s:old_cpo = &cpo
set cpo&vim
"}}}

" GlobalVar: {{{
let s:default_settings = {
      \ "g:macvim_transparency_step": 20,
      \ "g:macvim_transparency_roller": [0, 50],
      \ }

function! s:set_default(dict)
  for [var,val] in items(a:dict)
    " echo [var, val]
    if !exists(var) | let {var} = val | endif
    unlet! val
  endfor
endfunction

call s:set_default(s:default_settings)
"}}}

" Keymap: {{{
nnoremap <Plug>(macvim-transparency-inc)  :call macvim_transparency#change('+')<CR>
nnoremap <Plug>(macvim-transparency-dec)  :call macvim_transparency#change('-')<CR>
nnoremap <Plug>(macvim-transparency-roll) :call macvim_transparency#roll()<CR>

xnoremap <Plug>(macvim-transparency-inc)  :call macvim_transparency#change('+')<CR>gv
xnoremap <Plug>(macvim-transparency-dec)  :call macvim_transparency#change('-')<CR>gv
xnoremap <Plug>(macvim-transparency-roll) :call macvim_transparency#roll()<CR>gv

inoremap <Plug>(macvim-transparency-inc)  <C-o>:call macvim_transparency#change('+')<CR>
inoremap <Plug>(macvim-transparency-dec)  <C-o>:call macvim_transparency#change('-')<CR>
inoremap <Plug>(macvim-transparency-roll) <C-o>:call macvim_transparency#roll()<CR>
"}}}

" FINISH: {{{
let &cpo = s:old_cpo
"}}}
" vim: set fdm=marker:

