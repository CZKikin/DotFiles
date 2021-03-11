function! Oprav()
    %s/´a/á/g
    %s/´ı/í/g
    %s/´e/é/g
    %s/´o/ó/g
    %s/´u/ú/g
    %s/˚u/ů/g
    %s/´y/ý/g
    %s/ˇz/ž/g
    %s/ˇn/ň/g
    %s/ˇt/ť/g
    %s/ˇd/ď/g
    %s/ˇr/ř/g
    %s/ˇs/š/g
    %s/ˇc/č/g
    %s/ˇe/ě/g
endfunction
nmap <silent> <F8> :silent! call Oprav()<CR>
