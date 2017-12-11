---
title: mysql密码过期
date: 2017-12-11 11:28:15
tags: 命令行
---

# mysql5.7密码过期问题

### 报错：  
ERROR 1862 (HY000): Your password has expired. To log in you must change it using a client that supports expired passwords.  
翻译：  
错误1862(HY000):你的密码已经过期。登录必须改变它使用一个客户端,支持过期的密码。  

### 错误解决：  
进入mysql的服务器中使用mysql指令进行登录及操作。

1.登录mysql：mysql -uroot -proot

(root是我的帐号及密码）

2.尝试是否报1820错误，执行语句：mysql> select 1;

(将会得到一个错误：ERROR 1820 (HY000): You must SET PASSWORD before executing this statement)

3.设置新密码：mysql> set password=password(‘root');

(由于我不需要更改密码，所以再次重置一下密码为root)

4.重设密码的时候可能会出现以下错误：（不出现的话，忽略此步）    
ERROR 1819 (HY000): Your password does not satisfy the current policy requirements  
出现这个错误的话，需要修改一个全局参数：   
mysql> set global validate_password_policy=0;  
Query OK, 0 rows affected (0.00 sec)

改完再重新操作第3步    

5.最后给用户赋权限  
mysql>  GRANT ALL PRIVILEGES ON \*.* TO 'username'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;  
Query OK, 0 rows affected, 1 warning (0.00 sec)  

mysql> FLUSH PRIVILEGES;  
Query OK, 0 rows affected (0.00 sec)  

6.尝试登录，正常

