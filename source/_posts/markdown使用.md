---
title: markdown使用
date: 2017-06-02 20:46:42
tags: markdown
---

# 1. 标题  
\# 标题1  
\#\# 标题2  
\#\#\#\# 标题3   

# 2. 引用   
行首使用 \> 加上一个空格表示引用一个段落，可嵌套  
\> 引用  
\> \> 我再引用
> 引用
> > 我再引用  

# 3. 分隔线  
在一行连续使用三个或以上_或\* \:   
\-\-\-  
\*\*\*   

>---
***  

# 4. 强调（粗体、斜体）:  
\*斜体\*  
\*\*粗体\*\*  

>*斜体*   
 
>**粗体**

# 5. 阅读全文  
在喜欢的位置添加阅读全文的功能，主题会自动识别这个标签：
  
以上是文章摘要  
<\!\-\-more\-\-\>  
以下是余下全文  
 
# 6. 转义字符要多加一个\  
\\\\ 反斜杠  
\\\` 反引号  
\\\* 星号  
\\\_ 下划线  
\\\{\\\} 大括号  
\\\[\\\] 中括号  
\\\(\\\) 小括号  
\\\# 井号  
\\\+ 加号  
\\\- 减号  
\\\. 英文句号  
\\\! 感叹号  

# 7. 列表
## 无序列表  
\* 无序列表1  
\+ 无序列表2  
\- 无序列表3 

>* 无序列表1  
+ 无序列表2  
- 无序列表3

## 有序列表
1.第一项  
2.第二项  

>1.第一项  
2.第二项    

# 8. 链接
Markdown有两种链接方式：Inline以及Reference  
## 文字链接：
Inline:  
\[谷歌](https://www.google.com)   
Reference:  
\[谷歌]\[google_url]  
\[google_url]:https://www.google.com  

>Inline:  
[谷歌](https://www.google.com)   
Reference:  
[谷歌][google_url]  
[google_url]:https://www.google.com  

## 图像链接
\!\[\](http://www.google.rw/images/srpr/logo4w.png)  
\!\[\]\[google_url\]  
\[google_url\]:http://www.google.rw/images/srpr/logo4w.png  

![](http://www.google.rw/images/srpr/logo4w.png)
![][google_url]
[google_url]:http://www.google.rw/images/srpr/logo4w.png
