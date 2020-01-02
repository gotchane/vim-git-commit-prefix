" Version: 0.0.1
" Author : Masayuki Goto <originals0711@gmail.com>
" License: MIT

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

func! git_commit_prefix#candidates()
  call complete(col('.'), split("feat: fix: docs: style: refactor: perf: test: chore:"))
  return ''
endfunc

let &cpo = s:save_cpo
unlet s:save_cpo
