" Version: 0.0.1
" Author : Masayuki Goto <originals0711@gmail.com>
" License: MIT

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

let s:git_commit_prefix_candidates_en = [
  \ {'word': 'feat: ', 'menu': 'A new feature'},
  \ {'word': 'fix: ', 'menu': 'A bug fix'},
  \ {'word': 'docs: ', 'menu': 'Documentation only changes'},
  \ {'word': 'style: ', 'menu': 'Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)'},
  \ {'word': 'refactor: ', 'menu': 'A code change that neither fixes a bug nor adds a feature'},
  \ {'word': 'perf: ', 'menu': 'A code change that improves performance'},
  \ {'word': 'test: ', 'menu': 'Adding missing or correcting existing tests'},
  \ {'word': 'chore: ', 'menu': 'Changes to the build process or auxiliary tools and libraries such as documentation generation'}]

let s:git_commit_prefix_candidates_ja = [
  \ {'word': 'feat: ', 'menu': '新機能'},
  \ {'word': 'fix: ', 'menu': 'バグ修正'},
  \ {'word': 'docs: ', 'menu': 'ドキュメントのみの変更'},
  \ {'word': 'style: ', 'menu': 'コードの動作に影響しない変更（スペース・フォーマット・セミコロン等）'},
  \ {'word': 'refactor: ', 'menu': 'リファクタリング（機能追加やバグ修正を含まない変更）'},
  \ {'word': 'perf: ', 'menu': 'パフォーマンス改善のための変更'},
  \ {'word': 'test: ', 'menu': '不足テストの追加や既存テストの修正'},
  \ {'word': 'chore: ', 'menu': 'その他、補助ツール・ドキュメント生成など、ソースやテストの変更を含まない変更'}]

func! git_commit_prefix#candidates()
  if empty(getline(1))
    try
      let s:git_commit_prefix_candidates = eval("s:git_commit_prefix_candidates_" .. g:git_commit_prefix_lang)
    catch
      let s:git_commit_prefix_candidates = s:git_commit_prefix_candidates_en
    endtry

    call complete(col('.'), s:git_commit_prefix_candidates)
  endif
  return ''
endfunc

let &cpo = s:save_cpo
unlet s:save_cpo
