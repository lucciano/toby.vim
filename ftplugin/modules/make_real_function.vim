func! MakeRealFunction()
    if (getline(line(".")) =~ 'public.*;$' || getline(line(".")) =~ 'abstract.*;$')
        g/function.*;$/norm! o{
        g/function.*;$/s/abstract //
        g/function.*;$/s/;$//
    endif
endfunc