# Dotfiles Managed by yadm

## Install
### Debian
```shell
sudo apt install yadm
```
### Arch
```bash
sudo pacman -S yadm
```
## Config
### Aliases
```ini
alias ya='yadm add'
alias yc='yadm commit --allow-empty-message --no-edit'
alias yca='yadm commit --amend'
alias yl='yadm list -a'
alias yr='yadm rm --cached'
alias ys='yadm status'
alias yp='yadm push -u origin main'
alias ypl='yadm pull'
alias yd='yadm diff'
alias ydc='yadm diff --cached'
alias yalt='yadm alt'
alias yrmt='yadm remote -v'
alias ycb='yadm clone --bootstrap'
alias ycn='yadm clone --no-bootstrap'
alias ycl='yadm config --get-all local.class'
alias yupd='yadm add -u && yadm commit -m $(date -u +%Y%m%dT%H%M%SZ) && yadm push'
```
### Initialize Repo
```
```
## Usage
### Add README File
Ref: [About READMEs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes#about-readmes)
```
mkdir $HOME/.github
vim $HOME/.github/README.md
```
### Add Files
```
```
### Commit
```
```

### Update
```
```

## New Machine Setup
```
```

## References
- [Dotfiles: Best Way to Store in a Bare Git Repository](https://www.atlassian.com/git/tutorials/dotfiles)
- [Keep dotfiles where they belong and avoid symlinks entirely.](https://github.com/anandpiyer/.dotfiles/tree/master/.dotfiles#keep-dotfiles-where-they-belong-and-avoid-symlinks-entirely)
