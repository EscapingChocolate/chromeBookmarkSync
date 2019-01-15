#!/bin/bash
BOOKMARK_PATH=/Users/zhoulisu/Library/Application\ Support/Google/Chrome/Default/Bookmarks
GIT_PATH=/Users/zhoulisu/git/chromeBookmarkSync
TIME=`date +%Y%m%d-%H%M%S`

echo $BOOKMARK_PATH

cd $GIT_PATH
cp /Users/zhoulisu/Library/Application\ Support/Google/Chrome/Default/Bookmarks .
git add -A
git commit -m $TIME
git push origin master

