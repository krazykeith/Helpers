# Git Helpers

## Git config updates

```shell
git config --global rebase.updateRefs true
git config --global rerere.enabled true
```

### Explanation

- `rebase.updateRefs true` - Update branch references when rebasing. See [here](https://git-scm.com/docs/git-config#Documentation/git-config.txt-rebaseupdateRefs) for more information
- `rerere.enabled true` - Enable Reuse Recorded Resolution. See [here](https://git-scm.com/docs/git-rerere) for more information

## Adding Custom Git Commands

```shell
cd
git clone git@github.com:krazykeith/Helpers.git
chmod +x ~/Helpers/git-commands/*
echo 'export PATH="$HOME/Helpers/git-commands:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## Cleaning up local branches which no longer exist on remote

The below command will delete all local branches which no longer exist on remote.

```shell
git branch -v | grep '\[gone\]' | awk '{print $1}' | xargs git branch -D
```

### Explanation

- `git branch -v` - List all branches with their last commit message
- `grep '\[gone\]'` - Filter out branches which no longer exist on remote
- `awk '{print $1}'` - Extract branch name
- `xargs git branch -D` - Delete the branch
