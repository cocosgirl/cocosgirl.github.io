#!/bin/sh

dt=`date`
echo $dt
echo 'start merge--------------'
cp -r public/* ./
git add *
git commit -m "合并分支$dt"
git push -u origin master
echo 'end merge--------------'
