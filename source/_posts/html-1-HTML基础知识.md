---
title: HTML基础知识
date: 2017-06-02 21:25:55
tags: [html,css]
---

# HTML基础知识
#### 1.1 HTML、XHTML、HTML5
1. 前端最核心的三大技术是HTML、CSS和JavaScript。HTML定义网页的结构，CSS定义网页的外观，而JavaScript定义页面的行为。

2. HTML（超文本标记语言），是构成网页文档的主要语言。

3. XHTML（扩展的超文本标记语言），语法上比HTML更加严格。

4. HTML和XHTML的区别：  
4.1	XHTML标签必须闭合。  
例如：“< div \>< / div \>”  
空标签也需要闭合。  
例如：< br \>要写成< br/ \>   
4.2	XHTML标签以及属性必须小写。（属性值可以大写）  
4.3	XHTML标签属性必须用引号，单双引号都可以。  
4.4	XHTML标签用id属性代替name属性。  
在XHTML中，除了表单元素之外的所有元素，都应该用id而不是name。    
错误写法：< div name=”wrapper” \>< / div \>  
正确写法：< div id=”wrapper” \>< /  div \>  
4.5	HTML指的是HTML4.01，XHTML是HTML的过渡版本，XHTML是XML风格的HTML4.01。  

5. HTML5有以下几个特点：  
5.1 文档类型说明：基于HTML5设计准则中的“化繁为简”原则，页面文档类型< !DOCTYPE \>被极大地简化了。  
5.2 标签不再区分大小写。  
5.3 允许属性值不加引导。  
5.4 允许部分属性的属性值省略。  

#### 1.2 div和span  
1. div 和 span没有任何语义，正是因为没有语义，这两个标签一般都是配合CSS来定义元素样式的。  
  
2. div 和 span 区别如下：  
2.1. div 是块元素，可以包含任何块元素和行内元素，不会与其他元素位于同一行；span是行内元素，可以与其他行内元素位于同一行。  
2.2 div常用于页面中较大块的结构划分，然后配合CSS来操作；span一般用来包含文字等，它没有结构意义，纯粹是应用样式。当其他行内元素都不适合的时候，可以用span来配合CSS操作。  

3. div 、span、label  
3.1 div和span是无语义标签，label是有语义标签。  
3.2 label只适用于表单中，用于显示在输入控件旁边的说明性文字。  

#### 1.3 id和class  
1.3.1 id属性  
 id 属性具有唯一性，也就是说在一个页面中相同的id只允许出现一次。   
 
1.3.2 class属性
同一个页面的相同元素或者不同元素，可以设置相同的class，然后使得相同的class元素具有相同的样式。 

#### 1.4 浏览器标题栏小图标
在head标签添加一个link标签  
例如：< link rel=”shortcut icon” type=”image/x-icon” href=”favicon.ico” / \>
rel和 type这两个属性的取值是固定形式。href属性取值为小图标的地址。
注意：小图标的格式是.ico，而不是.jpeg, .png, .gif等格式。
