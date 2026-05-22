#import "template.typ": *

#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")

#show: resume.with(
  size: 10pt,
  theme-color: theme-color,
  margin: (
    top: 1.5cm,
    bottom: 1.8cm,
    left: 1.8cm,
    right: 1.8cm,
  ),
  header-center: true,
)[
  = Thelia

  #info(
    color: theme-color,
    (
      icon: fa-github,
      content: "github.com/Thelia-Lzr",
      link: "https://github.com/Thelia-Lzr",
    ),
    (
      icon: fa-envelope,
      content: "teddyyzr@foxmail.com",
      link: "mailto:teddyyzr@foxmail.com",
    ),
    (
      icon: fa-code,
      content: "blog.thelia.site",
      link: "https://blog.thelia.site",
    ),
  )
][
  #h(1.5em)

  计算机方向在读本科生，长期参与 Game Jam、Unity 原型开发与开源协作。擅长把玩法原型、对话系统、战斗流程和 UI 交互在短周期内做成可演示、可扩展的完整系统；同时持续维护个人博客与公开仓库，保持写作和技术输出。


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 14%)[
  2028.06

  2024.09
][
  *上海大学* · 本科在读

  方向：计算机 / 软件工程; LLM网页应用
]


== #fa-wrench 技能概览

#sidebar(with-line: false, side-width: 14%)[
  *游戏开发*

  *脚本语言*

  *前端 / 工具*

  *协作方式*
][
  Unity, C\#, 2D 交互与动画

  TypeScript, Python, JavaScript, Rust

  Git, Typst, Markdown, Docker, WordPress, 博客维护

  事件驱动、模块化拆分、快速原型
]


== #fa-code 项目经历

#item(
  link(
    "https://github.com/Thelia-Lzr/SpotlightGJ_24h_2026",
    [ *肉鸽战斗三消游戏：镜 重绘* ],
  ),
  [ *Game Jam 项目* ],
  date[ 2026.05 ]
)

#tech[ Lua, UrhoX, NanoVG, Yoga Flexbox, EventBus ]

面向短周期 Game Jam 的肉鸽 + 三消 + RPG 战斗原型，核心目标是把“消除、结算、战斗反馈、成长系统”整合成一条完整可玩的流程。

- 设计并拆分战斗核心模块，将棋盘、结算、战斗状态、回合管理和动画反馈解耦，便于快速迭代玩法。
- 建立粒子驱动的结算思路，让数值变化、UI 反馈和演出节奏按统一事件链协同，而不是互相耦合。
- 预留纪念品 / Hook 扩展点，支持围绕会心、伤害、恢复、资源和局外成长持续叠加新玩法。

#item(
  link(
    "https://github.com/Thelia-Lzr/BoomJam26",
    [ *模拟搭建游戏：再跑亿遍* ],
  ),
  [ *Game Jam 项目* ],
  date[ 2026.05 ]
)

#tech[ Unity, C\#, DOTween, TextMeshPro, CSV 驱动剧情 ]

短周期内完成的 Unity 模拟搭建游戏原型

- 搭建游戏的关卡场景，使用Unity自带的物理系统完成重力反转，加速等物理效果。
#item(
  link(
    "https://github.com/Thelia-Lzr/GGJ2026",
    [ *回合制战斗游戏：启示录 轮舞* ],
  ),
  [ *米哈游游戏创作大赛项目* ],
  date[ 2025.11 ]
)

#tech[ C\#, Unity, 事件驱动, 音频管理, UI 动效 ]

围绕回合制战斗流程搭建核心控制层，适合展示“在有限时间内把玩法跑通”的工程能力。

- 实现回合管理、行动点分配、单位注册与胜负判定等核心流程，保证战斗状态可持续推进。
- 配合对话、动画与音频模块，完成从主菜单到剧情再到战斗的场景衔接。
- 为输入、拖拽、缩放和特效反馈保留清晰接口，便于后续继续扩展玩法。

#item(
  link(
    "https://blog.thelia.site/index.php/2025/06/23/%e8%81%9a%e5%85%89%e7%81%afgamejam%e4%bd%9c%e5%93%81%e4%bb%8b%e7%bb%8d%ef%bc%9aasteroid-landslide/",
    [ *Asteroid Landslide* ],
  ),
  [ *聚光灯Gamejam作品* ],
  date[ 2025.06 ]
)


#tech[ C\#, Unity, 事件驱动, 音频管理, UI 动效 ]

初次Gamejam作品，参与了游戏借助重力挖掘矿物的核心游戏机制设计，并实现了多种矿物的效果。
- 实现了游戏内的周期性重力应用机制。
- 设计了多种矿物类型，并实现了它们的效果，如改变重力方向，仅能通过重力挖掘等等。
- 在博客内用中文写了一份游戏机制详解分析，附有游戏的下载链接。


== #fa-github 开源项目与协作

#item(
  link(
    "https://github.com/poly-workshop/air-agent",
    [ *AirAgent*],
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
    [ *AstrBot*],
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

== #fa-graduation-cap 语言水平

#sidebar(with-line: false, side-width: 14%)[
  *英语*

  *法语*
][
  CET-6 483/710

  暂无
]
]