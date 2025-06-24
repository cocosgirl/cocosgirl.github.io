---
title: vue.js学习
date: 2025-04-03 14:43:29
tags: 前端 vue
---

#### 官网链接： [vue官网](https://cn.vuejs.org/guide/introduction.html)
> 什么是 Vue？
Vue (发音为 /vjuː/，类似 view) 是一款用于构建用户界面的 JavaScript 框架。它基于标准 HTML、CSS 和 JavaScript 构建，并提供了一套声明式的、组件化的编程模型，帮助你高效地开发用户界面。无论是简单还是复杂的界面，Vue 都可以胜任。

| 涵义       | 命令                                                 | 备注                   |
|----------|----------------------------------------------------|----------------------|
| 创建Vue项目  | npm init vue@latest                                | 名字不能大写               |
| 启动       | npm run dev                                        | http://localhost:5173/ |
| 安装       | npm/cnpm install                                   | cnpm install安装速度更快   |
| 创建vite项目 | npm create vite@latest temp-demo -- --template vue | 基于template样式         |
| 安装element-plus       | npm install element-plus @element-plus/icons-vue | 基于vue3的element-plus  |

### 生成的文件涵义
<img src="images/img.png" style="display: block; margin: 0;" />

> 创建完默认的项目，会自动生成很多代码，我们可以删除 src/components下的所有文件，再从App.vue里删除引用，保留script和template，template可以放在script的上面，或者下面，这个顺序是随意的，谁在上谁在下都可以。
```vue
<template>
</template>

<script >
</script>
```

> 模板语法：&#123;&#123; &#125;&#125;双大括号里引入变量，支持常用的js单行语法，不支持多行语法（例如：if else，var 等），建议不要在template里做逻辑运算。
```vue
<template>
  <h3>模板语法</h3>
  <p>{{msg}}</p>
  <p>{{ret ? 1 : 0}}</p>
  <p>{{number+1}}</p>
  <p>{{message.split("").reverse().join("")}}</p>
  <p>Using text interpolation: {{ rawHtml }}</p>
  <p>Using v-html directive: <span v-html="rawHtml"></span></p>
</template>

<script >
export default {
  data() {
    return {
      msg: "hello world 2025",
      ret: true,
      number: 1,
      message: "大家好",
      rawHtml: "<a href='https://www.baidu.com/'>百度首页</a>"
    }
  }
}
</script>
```

> 原始 HTML：双大括号会将数据解释为纯文本，而不是 HTML。若想插入 HTML，你需要使用 v-html 指令：
```angular2html
<p>Using text interpolation: {{ rawHtml }}</p>
<p>Using v-html directive: <span v-html="rawHtml"></span></p>
```

> Attribute 绑定: 双大括号不能在 HTML attributes 中使用。想要响应式地绑定一个 attribute，应该使用 v-bind 指令, 或者简写,把冒号前的v-bind省略(例如: v-bind:id 可以简写成:id,v-bind:disabled 可以简写成:disabled)
```vue
<template>
  <div v-bind:id="appid" v-bind:class="msg">测试class属性</div>
  <button :disabled="btn_status">按钮</button>
</template>

<script >
export default {
  data() {
    return {
      msg: "active",
      appid: "zyytest",
      btn_status: false
    }
  }
}
</script>

<style>
.active {
  color: red;
}
</style>
```

> 动态绑定多个属性(通过不带参数的 v-bind，你可以将它们绑定到单个元素上)
```vue
<template>
  <div v-bind="objectOfAttrs">测试class属性</div>
</template>

<script >
export default {
  data() {
    return {
      objectOfAttrs: {
        id: 'container',
        class: 'wrapper',
        style: 'background-color:green'
      }
    }
  }
}
</script>
```

> 条件渲染: v-if  v-else
```angular2html
<template>
    <h3>条件渲染</h3>
    <div v-if="type === 'A'">
      A
    </div>
    <div v-else-if="type === 'B'">
      B
    </div>
    <div v-else-if="type === 'C'">
      C
    </div>
    <div v-else>
      Not A/B/C
    </div>
</template>

<script >
export default {
  data() {
    return {
      type: 'C'
    }
  }
}
</script>
```
<img src="images/img_1.png" style="display: block; margin: 0;" />

> 事件处理和传参: 用法：v-on:click="handler" 或 @click="handler", methods里获取 data 用 this. ;用 e.target.innerHTML 可以修改html value; 
```angular2html
<template>
<button @click="count++">Add 1</button>
<button @click="addCount">Add 2</button>
<button @click="setHtml($event, 'hello')"></button>
<p>Count is: {{ count }}</p>
</template>

<script >
export default {
  data() {
    return {
      count: 0
    }
  },
  methods: {
    addCount() {
      this.count += 2
    },
    // event对象
    setHtml(e, test) {
      e.target.innerHTML = "count num: " + this.count + test
    }
  }
}
</script>
```

> 数组方法变更: 可以使用能改变原数组的方法：1. push()、 2. pop()、 3. unshift()、 4. shift()、 5. splice()、 6. sort()、 7. reverse()；这 7 个方法都被 Vue 重写过，使用它们更新数据能触发页面的重新渲染。
<button @click="arr.shift()">删除数组元素</button>
<button @click="arr.push('z')">添加数组元素</button>
<button @click="arr.splice(0, 1, '0')">修改数组元素</button>
替换数组: map, filter()、concat(), slice() 等函数，对原数组变量进行重新赋值,不会渲染页面,想要渲染,需要给原数组重新赋值.

> 挂载应用: 应用实例必须在调用了 .mount() 方法后才会渲染出来。该方法接收一个“容器”参数，可以是一个实际的 DOM 元素或是一个 CSS 选择器字符串,
> .mount() 方法应该始终在整个应用配置和资源注册完成后被调用。同时请注意，不同于其他资源注册方法，它的返回值是根组件实例而非应用实例。
```angular2html
html
<div id="app"></div>
js
app.mount('#app')
```

> 应用配置: 应用实例会暴露一个 .config 对象允许我们配置一些应用级的选项，例如定义一个应用级的错误处理器，用来捕获所有子组件上的错误：
```angular2html
app.config.errorHandler = (err) => {
  /* 处理错误 */
}
```
> 注册一个组件,使得 TodoDeleteButton 在应用的任何地方都是可用的
```angular2html
js
app.component('TodoDeleteButton', TodoDeleteButton)
```

> 多个应用实例: 应用实例并不只限于一个。createApp API 允许你在同一个页面中创建多个共存的 Vue 应用，而且每个应用都拥有自己的用于配置和全局资源的作用域。
> 如果你正在使用 Vue 来增强服务端渲染 HTML，并且只想要 Vue 去控制一个大型页面中特殊的一小部分，应避免将一个单独的 Vue 应用实例挂载到整个页面上，而是应该创建多个小的应用实例，将它们分别挂载到所需的元素上去。
```angular2html
const app1 = createApp({
  /* ... */
})
app1.mount('#container-1')

const app2 = createApp({
  /* ... */
})
app2.mount('#container-2')
```

> 声明响应式状态: 在组合式 API 中，使用 ref() 函数来声明响应式状态,ref() 接收参数，并将其包裹在一个带有 .value 属性的 ref 对象中返回.
> 在模板中使用 ref 时，我们不需要附加 .value。
```angular2html
import { ref } from 'vue'
const count = ref(0)
```
> 要在组件模板中访问 ref，从组件的 setup() 函数中声明并返回它们
```angular2html
import { ref } from 'vue'

export default {
  // `setup` 是一个特殊的钩子，专门用于组合式 API。
  setup() {
    const count = ref(0)

    // 将 ref 暴露给模板
    return {
      count
    }
  }
}
```
> 也可以直接在事件监听器中改变一个 ref
```angular2html
<button @click="count++">
  {{ count }}
</button>
```

