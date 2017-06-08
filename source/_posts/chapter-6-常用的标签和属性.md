---
title: chapter-6-常用的标签和属性
date: 2017-06-07 20:58:20
tags: html
---
1. 常见块元素与行内元素  
块级元素：div , p , form, ul, li , ol, dl, form, address, fieldset, hr, menu, table行内元素：span, strong, em, br, img , input, label...  

2. display常见属性  
"display:none"：元素被隐藏之后，不占据原来的位置    
"visibility:hidden"：元素被隐藏之后，依然占据原来的位置  
"display:table-cell":  
可以让元素以表格单元格的形式呈现，具备td元素的特点。  
IE8+以及其他现代浏览器都支持此属性，不过IE6/IE7中并不支持，考虑到IE6/IE7使用率越来越低，我们还是果断使用这一布局神器，可以实现以下3种功能    
 * 图片垂直居中于元素
 * 等高布局
 * 自动平均划分元素，并且在同一行显示


3. 图片常用的三种居中方式  
水平居中 "text-align:center"   
垂直居中 "display:table-cell"和"vertical-align:center"配合实现  

4. 使用"font-size:0"来去除"display:inline-block"的元素间距  

5. 常用标签：  
dl定义列表，结合dt、dd使用。dt定义列表中的项目，dd描述列表中的项目。  
b 加粗  
u 下划线  
i 斜体  
s 中划线  
strong  强调  
hr 分割线
img标签下，alt属性是找不到图片的时候显示，title是鼠标放在图片上的时候显示  
a标签下，设置target="_blank"属性，点击链接会打开新窗口，title属性设置内容，是鼠标放在链接上的时候显示  

6. 搜索引擎优化  
"text-indent:-9999px;"属性一般用于LOGO部分，在搜索引擎中h1是非常重要的标签，一般把网站的LOGO图片放到h1标签中，但是搜索引擎无法识别图片，只能识别文字，为了更好的优化SEO：  
指定h1元素的长宽与LOGO图片的长宽一样，然后定义h1的背景图片（background-image）为LOGO图片  
使用LOGO图片为h1的背景图片，然后使用"text-indent:-9999px;"属性来隐藏h1的文字内容。  

7. "text-align:center;"与"margin:0 auto;"的区别    
 * "text-align:center;" 实现文字、inline元素以及inline-block元素的水平居中  
 * "margin:0 auto;" 实现的是块元素的水平居中  
 * "text-align:center;"在父元素中定义，"margin:0 auto;" 在当前元素中定义

8. 清除浮动常见的三种方法  
 * clear:both（最常用）不应用于浮动元素本身，而是浮动元素后面的元素
 * overflow:hidden 应用于浮动元素的父元素，而是不是当前的浮动元素
 * ::after伪元素 结合clear:both使用

9. 