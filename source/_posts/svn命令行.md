---
title: svn命令行
date: 2017-08-31 17:49:38
tags: 命令行
---

1. 从SVN上检出  
	svn checkout svnPath  
	
2. 提交svn  
	svn commit * -m "message"
	
3. 误删除文件  
   直接svn up  
   或 svn revert -r version  
   
4. 删除文件后提交  
	svn delete XX  
	再 svn ci -m "message"    
	
5. 查看本地改动了哪些文件  
	svn st
	
6. 本地文件和svn上文件对比  
	svn diff fileName