---
title: chapter-7-布局和性能优化
date: 2017-06-09 22:59:53
tags: html
---

1. 深入定位  
CSS两大定位方式：浮动和定位。  
 * 浮动布局比较灵活，但不容易控制
 * 定位布局虽然缺乏灵活性，但可以精准的定页面中元素的位置

2. 定位布局的四种方式：  
 * 固定定位（fixed）
 * 相对定位（ralative）
 * 绝对定位（absolute）  #会将元素转换为块元素
 * 静态定位（static）   
  除了static之外的，元素定义了position之后，top、bottom、left、right才生效

3. z-index属性  
默认情况下处于不激活状态，设置了无效。只有定义了position为relative、absolute、fixed时才会被激活  
z-index值越大的，会展现在越上层  
  