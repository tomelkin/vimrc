
function! RunWholeSpecFile()
  let w:current_spec = expand("%:.")
  exe '!bundle exec rspec ' . w:current_spec
endfunction

function! RunSpecUnderCursor()
  let w:current_spec = expand("%:.") . ':' . line(".")
  exe '!bundle exec rspec ' . w:current_spec
endfunction

function! RunLastSpec()
  if exists('w:current_spec')
    exe '!bundle exec rspec ' . w:current_spec
  else
    call RunSpecUnderCursor()
  endif
endfunction

nmap <Leader>rs :call RunSpecUnderCursor()<CR>
nmap <Leader>rr :call RunLastSpec()<CR>
nmap <Leader>ra :call RunWholeSpecFile()<CR>
