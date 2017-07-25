---
title: Cocos2d-x
date: 2017-07-11 18:48:19
tags: 游戏
---
基础：一个游戏可以有多个场景，每个场景可以包含多个不同的层，每层可拥有任意个游戏节点（常见的是精灵，但也可以是层、菜单和文本等）。  
  
继承关系：cc.Class<--cc.Node<--cc.NodeRGBA<--cc.Sprite  
（与Java中的Object一样，所有类都要直接或间接继承自Class） 

=== 严格等于：不仅值要相等，类型也要相等  
!== 非严格等于，与===恰恰相反  

导演：cc.Director用于管理场景，采用单例模式，整个过程中只有一个实例对象。   
场景类：cc.Class<--cc.Node<--cc.Scene<--cc.TransitionScene  
层：cc.Class<--cc.Node<--cc.Layer<--cc.LayerColor<--cc.LayerGrandient
cc.LabelTTF是最简单的标签类：cc.Class<--cc.Node<--cc.NodeRGBA<--cc.Sprite<--cc.LabelTTF  

引用框架常用赋值写法： var chess = chess || {}; (假如chess已经被定义，就用原来的值，chess未被定义，就赋值{})

精灵的性能优化  
* 使用纹理图集  
* 使用精灵帧缓存  
>纹理缓存（TextureCache）
>精灵帧缓存（SpriteFrameCache）

场景与层：  
通过导演类cc.director切换场景:   
* runScene(scene): 运行场景，只能在启动第一个场景时调用该函数。如果已经有一个场景运行则不能调用该函数。  
* pushScene(scene): 切换到下一个场景，将当前场景挂起放入到场景堆栈中，然后切换到下一个场景中。（不释放和销毁场景，原来的场景状态可以保持，但是不能同时有太多的场景对象运行cc.director.pushScene(new SettingScene());）  
* popScene()：与pushScene配合使用，可以回到根场景。(cc.director.popScene();)   
* popToRootScene(): 与pushScene配合使用，可以回到根场景。  

设计分辨率设置：cc.view.setDesignResolutionSize(640,960,cc.ResolutionPolicy.NO_BORDER);  //640和960是设计分辨率宽高，背景图片是640*960