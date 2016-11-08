set makeprg=python3\ %\ <\ %<.in
"set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

"function! s:InnermostExceptionInQFList()
"  let s:num = 0
"  for item in getqflist()
"    if item.lnum > 0
"      let s:num += 1
"    endif
"  endfor
"  if s:num > 0
"    try
"      silent execute(s:num . 'cnext')
"    catch /E553:/
"	  " E553: No more elements
"    endtry
"  endif
"  silent execute('wincmd w')
"endfunction

"autocmd! QuickfixCmdPost * call s:InnermostExceptionInQFList()
