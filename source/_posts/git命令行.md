---
title: git命令行  
date: 2017-06-02 17:25:55
tags: 命令行
---

1. git clone
拉一个分支到当前目录
git clone https://github.com/cocosgirl/diana.git

2. git add  
把我们要提交的文件的信息添加到索引库中  
例如：git add html_1_chapter.md

3. git commit   
git将依据索引库中的内容来进行文件的提交  
例如：git commit html_1_chapter.md -m "测试本地提交"  
本地删除文件提交：  
git commit -a -m "删除不要的文件"

4. git push  
提交完以后发布  
发布到分支：  
例如：git push -u https://github.com/cocosgirl/cocosgirl.github.io master  

5. 合并分支  
git pull origin hexo MERGE_HEAD origin/master  

6. 设置当前分支  
首先git checkout -b origin/master
其次git checkout master
即可恢复到master repository的状态，然后就可以pull了  

7. git其他常用命令参考
http://www.cnblogs.com/cspku/articles/Git_cmds.html