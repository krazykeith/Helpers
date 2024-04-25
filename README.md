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
