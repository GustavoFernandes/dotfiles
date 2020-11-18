function alias-ga { git add -v $args }
Set-Alias -Name ga -Value alias-ga
function alias-gb { git branch $args }
Set-Alias -Name gb -Value alias-gb
function alias-gd { git diff $args }
Set-Alias -Name gd -Value alias-gd
function alias-gdc { git diff --cached $args }
Set-Alias -Name gdc -Value alias-gdc
function alias-gdw { git diff --color-words="\w+|." $args }
Set-Alias -Name gdw -Value alias-gdw
function alias-glog { git log --oneline --graph $args }
Set-Alias -Name glog -Value alias-glog
function alias-gloga { git log --oneline --graph --all $args }
Set-Alias -Name gloga -Value alias-gloga
function alias-gs { git status -sb $args }
Set-Alias -Name gs -Value alias-gs
