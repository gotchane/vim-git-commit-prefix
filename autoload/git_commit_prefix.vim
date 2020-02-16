" Version: 0.0.1
" Author : Masayuki Goto <originals0711@gmail.com>
" License: MIT

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

let s:git_commit_prefix_candidates = [
  \ {'word': 'feat: ', 'menu': 'A new feature'},
  \ {'word': 'fix: ', 'menu': 'A bug fix'},
  \ {'word': 'docs: ', 'menu': 'Documentation only changes'},
  \ {'word': 'style: ', 'menu': 'Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)'},
  \ {'word': 'refactor: ', 'menu': 'A code change that neither fixes a bug nor adds a feature'},
  \ {'word': 'perf: ', 'menu': 'A code change that improves performance'},
  \ {'word': 'test: ', 'menu': 'Adding missing or correcting existing tests'},
  \ {'word': 'chore: ', 'menu': 'Changes to the build process or auxiliary tools and libraries such as documentation generation'}]
func! git_commit_prefix#candidates()
  if empty(getline(1))
    call complete(col('.'), s:git_commit_prefix_candidates)
  endif
  return ''
endfunc

let &cpo = s:save_cpo
unlet s:save_cpo
