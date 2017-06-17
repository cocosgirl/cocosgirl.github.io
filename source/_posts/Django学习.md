---
title: Django学习
date: 2017-06-07 15:34:28
tags: [Django,编程]
---

学习参考教程：
http://djangobook.py3k.cn/

1. Django MVC设计模式 
总体的设计：
 * models.py  \#模型：用这个类，可以通过简单的python代码来操作数据库，无需写每个操作都写一条SQL语句。
 * view.py  \#视图：写后端业务逻辑
 * urls.py  \#URL和视图的对应关系
 * \*\*.html  \#html模板，写前端页面设计

2. 使用Django的条件  
使用Django的唯一先决条件是安装python。  

3. 数据库  
Django 并不是非得要数据库才可以运行。如果只用它提供一些不涉及数据库的动态页面服务，也同样可以完美运行。   
DJango的亮点之一--基于数据库的网站开发，必须安装某种类型的数据库来存储数据。

4. 创建一个项目  
 * django-admin.py startproject myMenu  （myMenu 是项目名）
 * 创建app python manage.py startapp selectFood (selectFood是app名)
 * 校验模型的有效性：python manage.py validate

5. 启动服务器命令：  
python manage.py runserver #默认端口8000  
python manage.py runserver 8080  #启动并修改服务器端口  
python manage.py runserver 0.0.0.0:8080  #改变服务器监听的IP地址，让Django监听所有网络接口，其他电脑也可以连接到开发服务器了。\(要和其他开发人员共享同一开发站点的话，该功能特别有用\)

6. 修改时区  
Django 包含一个默认为 America/Chicago 的 TIME_ZONE 设置，可以在 settings.py 文件中修改成你想要的时区。  
例如：TIME_ZONE = 'Asia/Shanghai'

7. python后端传值到html页面
> 用两个大括号括起来的文字\(例如 \{ \{ person_name \} \} \)是变量\(variable\)  
> 被大括号和百分号包围的文本(例如 \{ % if ordered_warranty % \} \)是 模板标签\(template tag\)  \(例如：if，for等\)

8. 当模板系统在变量名中遇到点时，按照以下顺序尝试进行查找：  
 * 字典查找 \(比如 foo["bar"] \)
 * 属性查找 \(比如 foo.bar \)
 * 方法调用 \(比如 foo.bar() \)
 * 列表类型索引查找 \(比如 foo[bar] \)

9. sql操作：  
 9.1 数据过滤，使用 filter() 方法：   
 > Food.objects.filter(name="bread", type="1")   
 > filter()根据关键字参数来转换成SQL语句,相当于这样：   
 > select * from food where name="bread" and type="1"
 
 > Food.objects.filter(name__contains="bre")   
 > 转换成SQL语句,相当于这样：   
 > select * from food where name LIKE "bre"
 
 获取单个对象(只能是单个)
 > Food.objects.get(id=1)  
 
 排序
 > Food.objects.order_by("name")
 