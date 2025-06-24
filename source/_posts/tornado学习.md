---
title: tornado学习
date: 2018-05-18 10:20:21
tags: 框架
---

学习参考链接：
http://demo.pythoner.com/itt2zh/ch1.html

## 🌟 什么是 Tornado？

Tornado 是一个由 FriendFeed（被 Facebook 收购）开发的 Python 异步 Web 框架和网络库，它不仅提供了一个 Web 框架，还包含了一个异步网络库，可以处理成千上万的并发连接。

## 🌟 优势
1. 轻量级web框架
2. 步非阻塞IO处理方式
3. 出色的抗负载能力
4. 优异的处理性能，不依赖多进程/多线程，一定程度上解决GIL问题
5. WSGI全栈替代产品，推荐同时使用其web框架和HTTP服务器
6. socket连接建立过程
7. WSGI把应用（Application）和服务器（Server）结合起来，Tornado既可以是WSGI应用也可以是WSGI服务。既是WebServer也是WebFramework.

---

## ✅ 安装 Tornado

在终端中运行以下命令：

```bash
pip install tornado
```

你也可以指定版本：

```bash
pip install tornado==6.4
```

Tornado 6+ 已全面支持 Python 3 和 `async/await` 语法。

---

## 📌 核心概念

Tornado 的核心组件包括：

| 组件             | 说明 |
|------------------|------|
| `Application`    | Web 应用容器，管理路由和配置 |
| `RequestHandler` | 处理 HTTP 请求的类 |
| `IOLoop`         | 异步事件循环，Tornado 的心脏 |
| `@gen.coroutine` / `async def` | 用于异步处理（新版本推荐用 `async/await`） |

---

## 🧪 第一个 Tornado 程序

```python
import tornado.ioloop
import tornado.web

class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.write("Hello, Tornado!!!")

def make_app():
    return tornado.web.Application([
        (r"/", MainHandler),
    ])

if __name__ == "__main__":
    app = make_app()
    app.listen(8888)
    print("Server is running at http://localhost:8888")
    tornado.ioloop.IOLoop.current().start()
```

### ✨ 运行结果

打开浏览器访问 http://localhost:8888，可以看到输出：

```
Hello, Tornado!
```

---

## ⏱ 异步处理请求示例

```python
import tornado.web
import tornado.ioloop
import asyncio

class AsyncHandler(tornado.web.RequestHandler):
    async def get(self):
        await asyncio.sleep(2)
        self.write("Async response after 2 seconds!")

def make_app():
    return tornado.web.Application([
        (r"/async", AsyncHandler),
    ])

if __name__ == "__main__":
    app = make_app()
    app.listen(8888)
    print("http://localhost:8888/async")
    tornado.ioloop.IOLoop.current().start()
```

---

## 🌐 支持 WebSocket 示例

```python
import tornado.websocket
import tornado.web
import tornado.ioloop

class EchoWebSocket(tornado.websocket.WebSocketHandler):
    def open(self):
        print("WebSocket opened")

    def on_message(self, message):
        self.write_message(f"You said: {message}")

    def on_close(self):
        print("WebSocket closed")

def make_app():
    return tornado.web.Application([
        (r"/ws", EchoWebSocket),
    ])

if __name__ == "__main__":
    app = make_app()
    app.listen(8888)
    print("WebSocket server at ws://localhost:8888/ws")
    tornado.ioloop.IOLoop.current().start()
```

你可以通过浏览器或 WebSocket 客户端连接此服务进行双向通信。

---

## 📚 使用场景

Tornado 非常适合以下场景：

- 高并发、低延迟的服务
- WebSocket 实时通信
- 长连接（如 SSE、长轮询）
- 内嵌 HTTP 服务（例如后台控制面板）

但对于常规网站，推荐使用更流行的框架如 Flask 或 FastAPI。

---

## 🚧 Tornado 与其他框架对比

| 框架     | 是否异步 | 性能 | 社区活跃度 | 推荐用途 |
|----------|-----------|--------|---------------|-------------|
| Tornado  | ✅         | ⭐⭐⭐⭐   | ⭐⭐            | 高并发、WebSocket |
| FastAPI  | ✅         | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐        | API 后端开发 |
| Flask    | ❌         | ⭐⭐⭐   | ⭐⭐⭐⭐⭐        | 快速原型、小项目 |
| Django   | ❌         | ⭐⭐    | ⭐⭐⭐⭐⭐        | 全功能网站、ORM 支持 |

---

## 🧩 总结

Tornado 作为一个经典的异步 Web 框架，虽然现在不如以前流行，但它仍然是理解 Python 异步模型和构建高性能服务的重要工具。

