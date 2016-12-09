augroup Fedora
  autocmd!

  " When editing a file, always jump to the last known cursor position
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

  " RPM spec file template
  if filereadable("/etc/rpmdevtools/spectemplate-minimal.spec")
    autocmd BufNewFile *.{spec,spec.in}
      \ silent! 0read /etc/rpmdevtools/spectemplate-minimal.spec
  endif
augroup END

" vim: et ts=2 sw=2
