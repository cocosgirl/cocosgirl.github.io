---
title: javascript数组用法
date: 2017-09-21 20:13:00
tags:
---
1. 数组声明与初始化方式： 
	var studentList = ["张三","李四","王五"];  
	var studentList = new Array("张三","李四","王五");  
	var studentList = new Array();    
	studentList[0] = "张三";
  
2. <font color="red">splice的使用</font>  
	splice方法接收的第一个参数，表示想要删除或插入的元素的索引值，第二个参数是删除元素的个数。第三个往后就是要添加到数组里的值。
	
3. 数组添加元素操作  
	push把元素添加到数组的末尾（可以一次加多个）：   
	studentList.push("小赵","燕子");  
	
	unshift把元素添加到数组的首位（可以一次加多个）：  
	studentList.unshift("第一","第二");
	
	从索引5开始删除0个元素，添加张1、张2、张3三个元素：  
	studentList.splice(5, 0, "张1", "张2", "张3");
	
4. 数组删除元素操作  
   pop删除数组最后一个元素  
   shift删除数组第一个元素  
   splice(index, num)删除相应位置和数量的元素  
   studentList.splice(5,3); //删除从数组索引5开始的3个元素
   
5. 数组合并concat
	array1.concat(array2);  
	