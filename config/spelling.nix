_ : {

  extraConfigVim = ''

    " Spelling extras {{{
    setlocal spelllang=en_us
    set spell spelllang=en_us

    iab requrie require
    iab emtpy empty
    iab emtpy? empty?
    iab intereset interest
    iab proeprty property

    autocmd BufRead,BufNewFile *.md setlocal spell
    autocmd BufRead,BufNewFile *.rdoc setlocal spell
    autocmd BufRead,BufNewFile *.markdown setlocal spell
    autocmd FileType gitcommit setlocal spell

  '';

}
