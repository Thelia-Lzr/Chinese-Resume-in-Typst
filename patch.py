import re

with open('/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-cn.typ', 'r', encoding='utf-8') as f:
    content = f.read()

pattern = re.compile(r'== #fa-code 开源与输出.*?== #fa-graduation-cap 语言水平', re.DOTALL)

new_text = r"""== #fa-github 开源项目与协作

#item(
  link(
    "https://github.com/poly-workshop/air-agent",
    [ *AirAgent* \(大语言模型智能体前端客户端\) ],
  ),
  [ *开源贡献* ],
  [ #date[2026.02] ]
)
#tech[ TypeScript, React, 异步编程, 状态管理 ]

- *状态管理修复*：修复了因用户快速切换会话导致的 AI 响应内容泄露 (Race Condition) 问题。通过闭包捕获目标会话 ID 并传递至异步持久化层，确保异步操作能准确路由至目标会话，保障了客户端的状态安全。
- *体验与扩展增强*：增加了 Model Context Protocol (MCP) 列表的重置刷新机制，并支持动态配置工具最大迭代次数 (Max Tool Iteration) 以控制工具开销。

#item(
  link(
    "https://github.com/AstrBotDevs/AstrBot",
    [ *AstrBot* \(基于多平台的 LLM 聊天机器人框架\) ],
  ),
  [ *开源贡献* ],
  [ #date[2026.04] ]
)
#tech[ Python, WebSocket, 并发控制 ]

- *生命周期与并发控制*：修复了 QQ WebSocket 官方适配器关闭后依然触发重复回复的 Bug。通过引入适配器存活状态标识 (`_handler_enabled`)，确保在热重载或关闭时，即使底层事件未能完全卸载，也能在业务层安全阻断残留事件。
- *文档补全*：协助排查并修正了 QQ WebSocket 部署文档中的相关配置错误。

#item(
  [ *GitHub 活跃与持续输出* ],
  [ *[Thelia-Lzr](https://github.com/Thelia-Lzr)* ],
  date[ 持续更新 ]
)
- 近一年累计 *785 次代码贡献*，覆盖 Game Jam、AI 工具、前端与后端开发等多个方向。
- 在多个 Game Jam 仓库（如 BoomJam26）参与较大规模的协作式迭代，并在主导了 [blog.thelia.site](https://blog.thelia.site) 个人网站的持续运维与技术沉淀。

== #fa-graduation-cap 语言水平"""

new_content = pattern.sub(new_text, content)

with open('/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-cn.typ', 'w', encoding='utf-8') as f:
    f.write(new_content)
