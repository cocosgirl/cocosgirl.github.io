---
title: git命令行  
date: 2017-06-02 17:25:55
tags: 命令行
---

1. git clone
拉一个分支到当前目录
git clone https://github.com/cocosgirl/diana.git

2. git add . 
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

7. git help <命令>   
查找命令的帮助信息  

8. git log  
查看git的日志信息
	
9. git init    
创建一个新的代码库或者初始化一个已存在的代码库

10. git rm  
删除索引或代码库中的文件  

11. git status  
显示当前git的状态，包括增删改，但是没有提交的信息

12. 初始化\*\*目录为本地代码库  
cd \*\*  
git init   

13. git fetch  
从服务器代码库获取数据 
eg. git fetch origin  

14. git merge origin/master   
合并origin/master到本地master分支

15. git pull 命令是git fetch和git merge命令的组合  
eg. git pull origin master 其中origin是远程代码库名，master是要合并的本地分支

16. git其他常用命令参考
http://www.cnblogs.com/cspku/articles/Git_cmds.html