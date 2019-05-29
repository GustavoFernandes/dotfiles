@echo off

DOSKEY ga=git add $*
DOSKEY gb=git branch $*
DOSKEY gd=git diff
DOSKEY gdc=git diff --cached
DOSKEY glog=git log --oneline --graph
DOSKEY gloga=git log --oneline --graph --all
DOSKEY gs=git status -sb
DOSKEY np="C:\Program Files\Notepad++\notepad++.exe" $*
