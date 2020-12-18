# vim-git-commit-prefix

This vim plugin is to support adding git commit prefix.
When you edit commit messages by vim as git default editor, this plugin automatically shows the commit prefix candidates.

![image](https://user-images.githubusercontent.com/20318418/74576678-3f79e880-4fcf-11ea-8199-bfc1c790c9b8.png)

## Prefixes

This plugin supports prefixes below:

* feat: A new feature
* fix: A bug fix
* docs: Documentation only changes
* style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
* refactor: A code change that neither fixes a bug nor adds a feature
* perf: A code change that improves performance
* test: Adding missing or correcting existing tests
* chore: Changes to the build process or auxiliary tools and libraries such as documentation generation

refs: [angular.js/DEVELOPERS.md](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#type)

## Installation

Please add this plugin by your plugin manager.
If you use dein.vim:

```
call dein#add('gotchane/vim-git-commit-prefix')
```

Also, please change your git default editor to vim.

```
$ git config --global core.editor vim
```

## How to use

When you commit changes by vim as git default editor, this plugin automatically shows the commit prefix candidates.

```
$ git commit
```

You can choose the language for this plugin from English(default) or Japanese.
```
let g:git_commit_prefix_lang = 'en'  " or 'ja'
```

## License

MIT License
