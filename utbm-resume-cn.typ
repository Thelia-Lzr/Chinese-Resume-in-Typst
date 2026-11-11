#import "template.typ": *

#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-award = icon("icons/fa-award.svg")

#show: resume.with(
  size: 10pt,
  theme-color: theme-color,
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),
    photograph: "pics/头像.png",
  photograph-width: 10em,
  gutter-width: 2em,
)[
  = Thelia 李梓睿

  #info(
    color: theme-color,
    (
      icon: fa-github,
      content: "github.com/Thelia-Lzr",
      link: "https://github.com/Thelia-Lzr",
    ),
    (
      icon: fa-envelope,
      content: "thelia@thelia.site",
      link: "mailto:thelia@thelia.site",
    ),
    (
      icon: fa-code,
      content: "blog.thelia.site",
      link: "https://blog.thelia.site",
    ),
  )
][
  #h(1.5em)

  *“To the next sky — 用代码与创作尝试触碰生活的光点。”*
  
  具备快速落地与跨界热情信息工程专业在读本科生。热爱 Game Jam 的心流式创新，也热衷钻研开源底层，能死磕诸如 LLM 智能体并发等技术疑难。无论是快速打磨一套游戏视觉原型，还是为排除状态泄露 (Race Condition) 而追踪源码，我享受在庞杂系统中寻找秩序。我崇尚共建，习惯以个人博客同步记录技术折腾与感性思考，与世界甚至“绝望”共存并寻找出路。如今，我渴望在 UTBM 这样注重工程与跨文化视角的广阔环境中，探寻技术与自我的下一个边界。

]
== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 14%)[
  2028.06

  2024.09
][
  *上海大学* · 本科在读

  方向：计算机 / 软件工程; LLM; 游戏设计与制作
]


== #fa-wrench 技能概览

#sidebar(with-line: false, side-width: 14%)[
  *游戏开发*

  *脚本语言*

  *前端 / 工具*

  *协作方式*
][
  Unity, C\#, 2D 游戏开发

  TypeScript, Python, Rust

  Git, Typst, Markdown, Docker, WordPress, 博客维护

  事件驱动、模块化拆分、快速原型
]


== #fa-code 项目经历

#item(
  link(
    "xiaoxuanmo.xyz",
    [*AI算命商业项目 xiaoxuanmo*],
  ),
  [ *全栈/核心功能贡献* ],
  date[ 2025.12 ]
)

#tech[ React, TypeScript, Python, RESTful API, OAuth ]

参与商业级 AI 算命网页应用的前后端全栈迭代，重点负责后台管理闭环与第三方登录接入。

- *全栈闭环与管理后台*：从零完整构建“礼包码 (Gift Code)”模块的前后端链路。在后端（Python）设计标准的 RESTful CRUD API 并处理鉴权，在前端（React + TS）搭建包含增删改查及防误触二次确认组件 (`ConfirmDialog`) 的管理页面。
- *第三方授权登录打通*：主导实现微信 OAuth 登录机制的后端 API 与前端状态流转。打通第三方授权回调与本地账号系统的深度绑定，提交涵盖 3000 余行列级别改动，经历严格 Code Review 成功落地。

#item(
  link(
    "https://github.com/Thelia-Lzr/SpotlightGJ_24h_2026",
    [ *肉鸽战斗三消游戏：镜 重绘* ],
  ),
  [ *Game Jam 项目* ],
  date[ 2026.05 ]
)

#tech[ TapTap制造 ]

面向短周期 Game Jam 的肉鸽 + 三消 + RPG 战斗原型，核心目标是把“消除、结算、战斗反馈、成长系统”整合成一条完整可玩的流程。

- 设计并拆分战斗核心模块，将棋盘、结算、战斗状态、回合管理和动画反馈解耦，便于快速迭代玩法。
- 建立粒子驱动的结算思路，让数值变化、UI 反馈和演出节奏按统一事件链协同，而不是互相耦合。
- 预留纪念品 / Hook 扩展点，支持围绕会心、伤害、恢复、资源和局外成长持续叠加新玩法。

#item(
  link(
    "https://github.com/Thelia-Lzr/BoomJam26",
    [ *模拟搭建：再跑亿遍* ],
  ),
  [ *Game Jam 项目* ],
  date[ 2026.05 ]
)

#tech[ C\#, Unity]

短周期内完成的 Unity 模拟搭建游戏原型

- 搭建游戏的关卡场景，使用Unity自带的物理系统完成重力反转，加速等物理效果。
#item(
  link(
    "https://github.com/Thelia-Lzr/GGJ2026",
    [ *回合制战斗：启示录 轮舞* ],
  ),
  [ *米哈游游戏创作大赛项目* ],
  date[ 2025.11 ]
)

#tech[ C\#, Unity]

围绕回合制战斗流程搭建核心控制层，适合展示“在有限时间内把玩法跑通”的工程能力。

- 实现回合管理、行动点分配、单位注册与胜负判定等核心流程，保证战斗状态可持续推进。
- 配合对话、动画与音频模块，完成从主菜单到剧情再到战斗的场景衔接。
- 为输入、拖拽、缩放和特效反馈保留清晰接口，便于后续继续扩展玩法。

#item(
  link(
    "https://blog.thelia.site/index.php/2025/06/23/%e8%81%9a%e5%85%89%e7%81%afgamejam%e4%bd%9c%e5%93%81%e4%bb%8b%e7%bb%8d%ef%bc%9aasteroid-landslide/",
    [ *太空挖矿：Asteroid Landslide* ],
  ),
  [ *聚光灯Gamejam作品* ],
  date[ 2025.06 ]
)


#tech[ C\#, Unity ]

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
    [ *AstrBot (30K+ Stars)*],
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

== #fa-graduation-cap 语言水平证书

#sidebar(with-line: false, side-width: 14%)[
  *英语*

  *法语*
][
  CET-6 483/710

  暂无
]


== #fa-award 技能证书

#sidebar(with-line: false, side-width: 14%)[
  *软考中级*

  *NCRE*

  *业余无线电*
][
  数据库系统工程师（已通过）

  C语言（三级优秀）

  A类操作能力验证（通过） - 呼号: BI4BLC
]

== #fa-award 校内实践与获奖

#sidebar(with-line: false, side-width: 14%)[
  *科技竞赛*

  *技能与实践*
][
  上海大学足球机器人对抗赛校赛 三等奖 \

  上海大学力与美滑翔机竞赛 三等奖 \
  上海大学简历大赛 "潜力新星奖"
]