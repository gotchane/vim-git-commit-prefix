" Version: 0.0.1
" Author : Masayuki Goto <originals0711@gmail.com>
" License: MIT

scriptencoding utf-8

if exists('g:loaded_git_commit_prefix')
	finish
endif
let g:loaded_git_commit_prefix = 1

augroup git_commit_prefix_settings
  autocmd!
  autocmd VimEnter COMMIT_EDITMSG startinsert | call feedkeys("\<C-R>=git_commit_prefix#candidates()\<CR>")
augroup END
