# dotfiles

# v2

Add aliases to `aliases.json` and run `node build.js`

## cmd
Run `gen\aliases.cmd`

## Prerequisites
- Install Node.js

---

# v1

## Prerequisites
```
sudo apt-get install git-all curl zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
## Installing on new system
```
git clone --bare https://github.com/gustavofernandes/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```
Set `ZSH_THEME="theme0"` in `$HOME/.zshrc`
### git-number
```
git clone https://github.com/holygeek/git-number.git ~/.git-number
cd $HOME/bin
ln -s ~/.git-number/git-id .
ln -s ~/.git-number/git-list .
ln -s ~/.git-number/git-number .
```
## Optional
### fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
---
System based on https://news.ycombinator.com/item?id=11071754 and https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
