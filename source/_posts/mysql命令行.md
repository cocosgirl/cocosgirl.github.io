---
title: mysql命令行
date: 2017-09-13 09:48:38
tags: 命令行
---

1. 重启服务器上的mysql  
sudo su -  
service mysqld restart

2. 在当前服务器下连接数据库  
mysql -uUser -pPassword  

3. 查看当前服务器下的数据库  
show databases;  

4. 进入数据库  
use database1;  

5. 查看当前数据库的表  
show tables;  

6. 如果存在某表，删除  
DROP TABLE IF EXISTS table1;  