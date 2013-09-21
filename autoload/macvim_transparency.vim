let s:cur_idx = 0
function! macvim_transparency#change(ope) "{{{
  if !exists('&transparency') | return | endif
  let newval = 
        \ type(a:ope) == 0 ? a:ope :
        \ ( a:ope == '+' ) ? &transp + g:macvim_transparency_step :
        \ ( a:ope == '-' ) ? &transp - g:macvim_transparency_step : 0
  let newval = (newval <   0) ?   0 : newval
  let newval = (newval > 100) ? 100 : newval
  let &transparency = newval
endfunction "}}}

function! macvim_transparency#roll() "{{{
  if !exists('&transparency') | return | endif
  let s:cur_idx = (s:cur_idx + 1) % len(g:macvim_transparency_roller)
  let &transparency = g:macvim_transparency_roller[s:cur_idx]
endfunction "}}}

