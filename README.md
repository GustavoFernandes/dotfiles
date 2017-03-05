# dotfiles

## Installing on new system
```
git clone https://github.com/gustavofernandes/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

System based on https://news.ycombinator.com/item?id=11071754 and https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
