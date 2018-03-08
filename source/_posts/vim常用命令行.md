---
title: vim常用命令行
date: 2017-08-07 10:06:00
tags: 命令行
---

* grep | history    
查看历史命令行   

* grep "getFileMd5" . -R   
递归查找当前文件夹下内容包含getFileMd5的文件  

* find ./ -name js2objectc.h   
查找js2objectc.h文件  

* chmod 777 openCocos.sh   
修改openCocos.sh权限  

* ssh连接服务器  
 ssh -i ~/.ssh/id_rsa.zyy zyy@111.203.187.123

 ssh -Ai /Users/tuyoo/.ssh/id_rsa.zyy zyy#UTF-8@10.3.13.8 -p 222 -oForwardAgent=yes
 
* 用指定的app打开文件  
  open -a /Applications/MacDown.app vim常用命令行.md  
  
* 修改文件操作权限  
  sudo chown tyhall:tyhall 0.json （若修改文件夹下的所有文件操作权限，需要在chown后面加上-R）

* 查看磁盘使用情况  df  

* 查看当前java进程 ps -ef|grep java

* 查看当前python进程 ps aux|grep python
  


