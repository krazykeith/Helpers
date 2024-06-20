# Git Helpers

## Git config updates

```shell
git config --global rebase.updateRefs true
git config --global rerere.enabled true
```

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
