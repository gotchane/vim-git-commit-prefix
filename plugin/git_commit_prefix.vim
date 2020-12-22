" Version: 0.0.1
" Author : Masayuki Goto <originals0711@gmail.com>
" License: MIT

scriptencoding utf-8

if exists('g:loaded_git_commit_prefix')
	finish
endif
let g:loaded_git_commit_prefix = 1
let g:git_commit_prefix_lang = get(g:, "git_commit_prefix_lang", "en")

augroup git_commit_prefix_settings
  autocmd!
  autocmd FileType g*commit startinsert | call feedkeys("\<C-R>=git_commit_prefix#candidates()\<CR>")
augroup END
