---
title: python之os模块
date: 2017-12-07 11:40:37
tags: python
---

python os模块提供了多数操作系统的功能接口函数，对文件和路径进行的操作都要依赖于os模块。

常见的用法：

1. 查看当前所在路径  
 >  ~  python  
  Python 2.7.10 (default, Feb  7 2017, 00:08:15)  
  \>>> import os  
  \>>> os.getcwd()    
  '/Users/tuyoo'  
  
 >  \>>> os.path.abspath('.')  
 '/Users/tuyoo'
 
2. 列举路径下的所有文件  
  os.listdir(path)
  
3. os.path.split(path):将路径分解为(文件夹,文件名)，返回的是元组类型。

4. os.path.join(path1,path2,...):将path进行组合，若其中有绝对路径，则之前的path将被删除。

5. os.path.dirname(path):返回path中的文件夹部分，结果不包含'\'

6. os.path.basename(path):返回path中的文件名。

7. 查看文件时间  
  os.path.getmtime(path):文件或文件夹的最后修改时间，从新纪元到访问时的秒数。  
 os.path.getatime(path):文件或文件夹的最后访问时间，从新纪元到访问时的秒数。  
 os.path.getctime(path):文件或文件夹的创建时间，从新纪元到访问时的秒数。

8. os.path.getsize(path):查看文件或文件夹的大小，若是文件夹返回0。


参考地址：  
https://www.cnblogs.com/emily-qin/p/7001152.html  
https://www.cnblogs.com/yufeihlf/p/6179547.html