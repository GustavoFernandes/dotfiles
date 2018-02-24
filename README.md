# dotfiles

### Prerequisites
```
sudo apt-get install git-all curl zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
### Installing on new system
```
git clone --bare https://github.com/gustavofernandes/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

Set `ZSH_THEME="theme0"` in `$HOME/.zshrc`

---

System based on https://news.ycombinator.com/item?id=11071754 and https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
