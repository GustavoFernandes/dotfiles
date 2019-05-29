@echo off

DOSKEY ga=git add $*
DOSKEY gb=git branch $*
DOSKEY glog=git log --oneline --graph
DOSKEY gloga=git log --oneline --graph --all
DOSKEY gs=git status -sb
