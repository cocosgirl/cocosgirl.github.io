#!/bin/sh

dt=`date`
echo $dt
echo 'start merge--------------'
git checkout origin/hexo 2017
git checkout origin/hexo about
git checkout origin/hexo archives
git checkout origin/hexo categories
git checkout origin/hexo css
git checkout origin/hexo images
git checkout origin/hexo js
git checkout origin/hexo lib
git checkout origin/hexo page
git checkout origin/hexo pageName
git checkout origin/hexo tags
git checkout origin/hexo index.html
git add *
git commit -m "合并分支$dt"
git push -u origin master
echo 'end merge--------------'
