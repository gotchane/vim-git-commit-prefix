" Version: 0.0.1
" Author : Masayuki Goto <originals0711@gmail.com>
" License: MIT

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! git_commit_prefix#helloworld()
  echo "HelloWorld"
endfunction

function! git_commit_prefix#candidates(findstart, base)
  if a:findstart
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    let res = []
    for m in split("feat: fix: docs: style: refactor: perf: test: chore:")
      if m =~ '^' . a:base
        call add(res, m)
      endif
    endfor
    return res
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
