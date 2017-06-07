第二章

2.1 语义化   
Web前端开发最核心的3个技术：HTML、CSS、JavaScript。HTML控制网页的结构，CSS控制网页的样式，JavaScript控制网页的行为。

P标签，表示的是“paragraph”，标记的是一个段落
H1标签，表示的是“header1”，标记的是一个最高级的标题
Div和span是无语义的标签，我们应该尽可能少用

2.2 标题语义化  
h1~h6是标题标签，按照标题的重要性一次递减，其中h1重要性最高，h6重要性最低。  

注意： 
（1）一个页面只能有一个h1标签
（2）h1~h6之间不要断层
（3）不要用h1~h6来定义样式
（4）不要用div来代替h1~h6
2.3 图片语义化
html中，我们使用img标签来标示图片
2.3.1 alt属性和title属性
 alt属性用于图片描述，这个描述文字是给搜索引擎看的。当图片无法显示时，页面会显示alt中的文字
 title属性也用于图片描述，这个描述文字是给用户看的。并且当鼠标指针移到图片上时，会显示title中的内容
 注意：alt属性是img标签必须属性，一定要添加。title属性是img标签可选属性，可加可不加
2.3.2 figure和figcaption元素
 figure和figcaption元素用于表示图注文字
 语法：
 <figure>
  用于包含图片
  <img src="" alt="" />
  <figcaption>图注</figcaption>
 </figure>
2.4 表格语义化
 常用table、tr、td
 还有5个不常用：th、caption、thread、tbody、tfoot
2.5 表单语义化
 （1）label标签：用于显示在输入控件旁边的说明性文字，for属性值为所关联的表单元素的id
      label标签for属性的作用：
      语义上绑定了label元素和表单元素
      增强了鼠标可用性
 （2）fieldset标签和legend标签
      fieldset标签来给表单元素进行分组
      legend标签用于定义某一组表单的标题
      作用：
      增强表单的语义
      可以定义fieldset元素的disabled属性来禁用整个组中的表单元素
      语法：
      <fieldset>
        <legend>表单组标题</legend>
        ...
      </fieldset>
2.6 其他语义化
 2.6.1   <br/>标签用于换行
    W3C标准规定，<br/>标签仅仅用于段落中的换行，不能用于其他情况，也就是说<br/>标签只适合用于p标签内部的换行，不能用与其他标签。
 2.6.2 无序列表ul
    <ul><li></li></ul>
 2.6.3 strong和em标签
    strong用于实现加粗文本，em用于实现倾斜体文本
 2.6.4 del和ins标签
    这两个标签是配合使用的（例如:原价：---，现价：---）
    del表示“delete”
    ins表示“insert”
 2.6.5 img标签
    想要在页面上显示一张图片，有两种方式：
    一是使用img标签（通过html实现）
    二是使用背景图片（通过css实现）
    
