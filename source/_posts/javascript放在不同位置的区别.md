---
title: css和js放在head标签中还是body中
date: 2017-09-19 20:45:24
tags: javascript
---

**在HTML body部分中的JavaScript会在<font color=red>页面加载的时候</font>执行**  
**在HTML head部分中的JavaScript会在<font color=red>被调用的时候</font>才执行**   
**<font color=red>建议：css在head中引入，js在body尾部引入（这样有利于加载速度）</font>**  
**加载顺序：放在head中，页面加载前就加载js了。放在body中，页面加载后才加载js，所以head里面的先加载优先级高**

---
javascript应该放在哪里？  
页面中的JavaScript会在浏览器加载页面的时候立即被执行，通常被用来生成页面的内容。写法如下：     
> \<html>  
> \<head>  
> \</head>  
> \<body>  
> \<script type="text/javascript">  
> ...  
> \<script>  
> \</body>  
> \</html>

JavaScript放在head中，可以保证脚本在任何调用之前被加载，通常写需调用才执行的脚本或事件触发执行的脚本。写法如下：  
> \<html>  
> \<head>  
> \<script type="text/javascript">  
> ...    
> \<script>   
> \</head>   
> \</html>

head中和bosy中可同时放无数的脚本  
外部js，使用“src”属性指向相应的js文件。写法如下：  
> \<html>  
> \<head>  
> \<script src="xx.js">  
> ...    
> \<script>   
> \</head>   
> \</html>

参考：
http://www.cnblogs.com/ddyq/archive/2012/03/06/2382816.html  
http://www.imooc.com/qadetail/76717  