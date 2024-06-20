# Git Helpers

## Adding Custom Git Commands

```shell
mkdir ~/git-commands
cp git-commands/* ~/git-commands
chmod -R +x ~/git-commands
echo 'EXPORT PATH="$HOME/git-commands:$PATH"' >> ~/.zshrc
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
