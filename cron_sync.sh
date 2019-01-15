#!/bin/bash
BOOKMARK_PATH=/Users/zhoulisu/Library/Application\ Support/Google/Chrome/Default/Bookmarks
GIT_PATH=/Users/zhoulisu/git/chromeBookmarkSync
TIME=`date +%Y%m%d-%H%M%S`

cd $GIT_PATH
cp $BOOKMARK_PATH ./
git add -A
git commit -m $TIME
git push origin master

