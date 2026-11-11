content = r"""#import "template.typ": *

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

  *"To the next sky — Reaching for the light of life through code and creation."*
  
  An undergraduate student in Computer Science with a passion for rapid prototyping and interdisciplinary implementation. I love the flow-state innovation of Game Jams, and I am equally eager to delve into the open-source lower layers, tackling technical challenges like LLM agent concurrency. Whether it is quickly polishing a visual prototype for a game or tracing source code to eliminate a Race Condition, I enjoy finding order within complex systems. I advocate for co-creation, routinely documenting my technical tinkering and personal reflections on my blog, coexisting with the world and its difficulties while seeking a way forward. Now, I aspire to explore the next boundary of technology and self in a broad environment that values engineering and cross-cultural perspectives like UTBM.

]
== #fa-graduation-cap Education

#sidebar(with-line: true, side-width: 17%)[
  06.2028

  09.2024
][
  *Shanghai University* · Undergraduate Student

  Major: Computer Science / Software Engineering; LLM; Game Design & Development
]


== #fa-wrench Skills

#sidebar(with-line: false, side-width: 17%)[
  *Game Dev*

  *Languages*

  *Frontend/Tools*

  *Workflow*
][
  Unity, C\#, 2D Game Development

  TypeScript, Python, Rust

  Git, Typst, Markdown, Docker, WordPress

  Event-Driven Design, Modularization, Rapid Prototyping
]


== #fa-code Projects

#item(
  link(
    "xiaoxuanmo.xyz",
    [*xiaoxuanmo (Commercial AI Fortune-Telling App)*],
  ),
  [ *Full-Stack / Core Contributor* ],
  date[ 12.2025 ]
)

#tech[ React, TypeScript, Python, RESTful API, OAuth ]

Participated in the full-stack iteration of a commercial AI web application, focusing on the admin dashboard loop and third-party login integration.

- *Full-Stack Dashboard Loop*: Built the frontend-to-backend pipeline of the "Gift Code" module from scratch. Designed standard RESTful CRUD APIs with authentication in Python (Backend), and developed the admin interface with full CRUD operations and an anti-misclick confirmation component (`ConfirmDialog`) in React+TS (Frontend).
- *OAuth Integration*: Led the backend API and frontend state flow implementation for WeChat OAuth login. Deeply integrated the third-party authorization callback with the local account system, submitting over 3000 lines of code changes that successfully landed after rigorous Code Review.

#item(
  link(
    "https://github.com/Thelia-Lzr/SpotlightGJ_24h_2026",
    [ *Roguelike Match-3 RPG Game: Mirror Redraw* ],
  ),
  [ *Game Jam Project* ],
  date[ 05.2026 ]
)

#tech[ TapTap ]

A Roguelike + Match-3 + RPG battle prototype designed for short-cycle Game Jams. The core goal was to integrate "elimination, scoring, combat feedback, and progression systems" into a complete and playable flow.

- Designed and decoupled the core combat module, separating the board, scoring, battle state, turn management, and animation feedback to facilitate rapid gameplay iteration.
- Established a particle-driven scoring logic, aligning statistical changes, UI feedback, and stage effects via a unified event chain instead of coupling them.
- Reserved expanding hooks for relics, supporting continuous stacking of new mechanisms around crits, damage, recovery, and meta-progression.

#item(
  link(
    "https://github.com/Thelia-Lzr/BoomJam26",
    [ *Simulation Building: Run It Again* ],
  ),
  [ *Game Jam Project* ],
  date[ 05.2026 ]
)

#tech[ C\#, Unity]

A Unity simulation building game prototype completed in a short timeframe.

- Built level scenes using Unity's built-in physics system to implement gravity inversion, acceleration, and other physics effects.

#item(
  link(
    "https://github.com/Thelia-Lzr/GGJ2026",
    [ *Turn-based Combat: Apocalypse Rondo* ],
  ),
  [ *miHoYo Game Creation Competition* ],
  date[ 11.2025 ]
)

#tech[ C\#, Unity]

Constructed the core controller around turn-based combat flow, demonstrating engineering capabilities in completing gameplay within restricted time limits.

- Implemented core flows including turn management, action point distribution, unit registration, and win/loss determination, ensuring sustainable combat state progression.
- Coordinated dialogue, animation, and audio modules to bridge the transition from the main menu to the story and then to the battlefield.
- Kept explicit interfaces for inputs, dragging, scaling, and VFX feedback, making subsequent gameplay expansion easier.

#item(
  link(
    "https://blog.thelia.site/index.php/2025/06/23/%e8%81%9a%e5%85%89%e7%81%afgamejam%e4%bd%9c%e5%93%81%e4%bb%8b%e7%bb%8d%ef%bc%9aasteroid-landslide/",
    [ *Space Mining: Asteroid Landslide* ],
  ),
  [ *Spotlight Gamejam* ],
  date[ 06.2025 ]
)


#tech[ C\#, Unity ]

First Game Jam submission. Participated in designing the core mining mechanic utilizing gravity and implemented effects for various minerals.
- Implemented periodic gravity adaptation mechanisms in the game.
- Designed multiple mineral types and implemented their properties, such as changing gravity direction or strictly mining via gravity.
- Authored a comprehensive deep dive of the game mechanics with a download link on my personal blog.


== #fa-github Open Source & Collaboration

#item(
  link(
    "https://github.com/poly-workshop/air-agent",
    [ *AirAgent*],
  ),
  [ *Open Source Contribution* ],
  [ #date[02.2026] ]
)
#tech[ TypeScript, React, Async Programming, State Management ]

- *State Management Fix*: Fixed an AI response leakage issue (Race Condition) caused by users switching sessions rapidly. Designed a closure to capture the target session ID and pass it down to the asynchronous persistence layer, ensuring correct routing of asynchronous operations and safeguarding client state.
- *UX & Extension Updates*: Added a reset/refresh mechanism for the Model Context Protocol (MCP) list and supported dynamic configuration of Max Tool Iteration to better control tool overheads.

#item(
  link(
    "https://github.com/AstrBotDevs/AstrBot",
    [ *AstrBot (30K+ Stars)*],
  ),
  [ *Open Source Contribution* ],
  [ #date[04.2026] ]
)
#tech[ Python, WebSocket, Concurrency Control ]

- *Lifecycle & Concurrency Control*: Fixed a bug where closed QQ WebSocket official adapters would still trigger duplicated replies. Introduced an adapter survival state flag (`_handler_enabled`), safely blocking residual events at the business layer during hot-reload or closures even if underlying events were not fully unmounted.
- *Documentation Patch*: Helped troubleshoot and correct relevant deployment configuration errors in the QQ WebSocket documentation.

#item(
  [ *GitHub Activity* ],
  [ *[Thelia-Lzr](https://github.com/Thelia-Lzr)* ],
  date[ Always Updated ]
)
- Accumulated *785 code contributions* in the past year, covering Game Jams, AI tools, and frontend/backend development.
- Engaged in large-scale collaborative iterations across various Game Jam repositories (such as BoomJam26), while leading the continuous maintenance and technical accumulations on my personal website [blog.thelia.site](https://blog.thelia.site).

== #fa-graduation-cap Languages

#sidebar(with-line: false, side-width: 17%)[
  *English*

  *French*
][
  CET-6 (College English Test Band 6) - 483 / 710

  Beginner
]


== #fa-award Certifications

#sidebar(with-line: false, side-width: 17%)[
  *Professional*

  *NCRE*
][
  Database System Engineer (Intermediate Level, Passed)

  NCRE Level 3 - C Language (Excellent)
]

== #fa-award Activities & Awards

#sidebar(with-line: false, side-width: 17%)[
  *Competitions*

  *Skills*
][
  Shanghai University Robot Soccer Confrontation - 3rd Prize \
  Shanghai University "Strength and Beauty" Glider Competition - 3rd Prize

  Shanghai University Resume Competition - "Rising Star Award"
]
"""
with open("/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-en.typ", "w", encoding="utf-8") as f:
    f.write(content)
