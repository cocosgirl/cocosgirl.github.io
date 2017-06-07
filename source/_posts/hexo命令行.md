---
title: hexo命令行
date: 2017-06-02 19:29:38
tags: [hexo,命令行]
---

1. 新建页面的hexo命令是：  
hexo new page "pageName"  

2. 新建博客文章    
hexo new "文章名称"  #新建文章  
hexo new post "文章名称"  #新建文章,双引号可以不用

3. 发布博客  
hexo clean  #清除缓存 网页正常情况下可以忽略此条命令  
hexo generate  #生成静态页面至public目录

4. 写好之后可以现在本地预览，确定无误之后再部署到Github上    
hexo server  #开启预览访问端口（默认端口4000，'ctrl + c'关闭server）  
hexo deploy  #将.deploy目录部署到GitHub  

5. hexo命令简写形式  
hexo n "我的博客" == hexo new "我的博客"  
hexo g == hexo generate  
hexo s == hexo server  
hexo d == hexo deploy  
 
6. 其他
hexo help   # 查看帮助  hexo version  #查看Hexo的版本  hexo deploy -g  #生成加部署  hexo server -g  #生成加预览  