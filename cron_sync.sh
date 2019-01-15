#!/bin/bash
BOOKMARK_PATH=/Users/zhoulisu/Library/Application\\\ Support/Google/Chrome/Default/Bookmarks
GIT_PATH=/Users/zhoulisu/git/chromeBookmarkSync
TIME=`date +%Y%m%d-%H%M%S`


cd $GIT_PATH
cp /Users/zhoulisu/Library/Application\ Support/Google/Chrome/Default/Bookmarks .
git add -A
git commit -m $TIME
git rebase origin/master
git push origin master
cp Bookmarks /Users/zhoulisu/Library/Application\ Support/Google/Chrome/Default/Bookmarks

