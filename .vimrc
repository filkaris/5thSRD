source ~/.vimrc

function! OpenInNewWindow()
    " Open window in the right if needed
    if winnr('$') == 1
        vsplit
        winc h
    endif
    " Navigate to current link in the other window
    execute "normal! ^f)yi)\<c-w>l:e \<c-r>0\<CR>\<c-w>h"
endfunction

nnoremap <CR> :call OpenInNewWindow()<CR>
