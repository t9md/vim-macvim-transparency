vim-macvim-transparency
=======================

change MacVim's window transparency with shortcut

|transparency| is provided for only MacVim which controll current GUI window's 
transparency.  
You can change transparency by 'let &transparency = VALUE'.  
VALUE shoud be number from 0 - 100.  

This plugin helps you change transparency quickly.  

    let g:macvim_transparency_step = 10
    let g:macvim_transparency_roller = [0, 50, 100]

    " transparent
    nmap <D-Up>   <Plug>(macvim-transparency-inc)
    " opaque
    nmap <D-Down> <Plug>(macvim-transparency-dec)
    " roll from 
    nmap <F10>    <Plug>(macvim-transparency-roll)

    imap <D-Up>   <Plug>(macvim-transparency-inc)
    imap <D-Down> <Plug>(macvim-transparency-dec)
    imap <F10>    <Plug>(macvim-transparency-roll)

    xmap <D-Up>   <Plug>(macvim-transparency-inc)
    xmap <D-Down> <Plug>(macvim-transparency-dec)
    xmap <F10>    <Plug>(macvim-transparency-roll)
