# Git Helpers

## Git config updates

```shell
git config --global rebase.updateRefs true
git config --global rerere.enabled true
```

## Adding Custom Git Commands

```shell
mkdir ~/git-commands
cp git-commands/* ~/git-commands
chmod -R +x ~/git-commands
echo 'EXPORT PATH="$HOME/git-commands:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

