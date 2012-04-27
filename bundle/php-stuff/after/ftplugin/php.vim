" Setup dictionary for PHP
set dictionary+=$HOME/.vim/dict/php.dict
" Open php.net manual for function
function! OpenPhpFunction (keyword)
  let proc_keyword = substitute(a:keyword , '_', '-', 'g')
  exe '5 split'
  exe 'enew'
  exe 'set buftype=nofile'
  exe 'silent r!links -dump http://www.php.net/manual/en/print/function.'.proc_keyword.'.php'
  exe 'norm gg'
  exe 'call search ("Description")'
  exe 'norm jdgg'
  exe 'call search("User Contributed Notes")'
  exe 'norm dGgg'
  exe 'norm V'
endfunction
au FileType php noremap <leader>l :call OpenPhpFunction(expand('<cword>'))<CR>
