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
  = Thelia-ZiRui Li

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

  *"To the next sky — Atteindre la lumière de la vie par le code et la création."*
  
  Étudiant de premier cycle en Ingénierie Informatique passionné par le prototypage rapide et les implémentations interdisciplinaires. J'aime l'innovation en "état de flow" des Game Jams, et je suis tout aussi désireux de plonger dans les couches profondes de l'open-source, en m'attaquant à des défis techniques tels que la simultanéité des agents LLM. Qu'il s'agisse de peaufiner rapidement un prototype de jeu visuel ou de tracer le code source pour éliminer une Race Condition, j'apprécie de trouver de l'ordre dans des systèmes complexes. J'encourage la co-création, documentant régulièrement mes bricolages techniques et mes réflexions personnelles sur mon blog, coexistant avec le monde et ses difficultés tout en cherchant une voie à suivre. Aujourd'hui, j'aspire à explorer la prochaine frontière de la technologie et de moi-même dans un environnement ouvert valorisant l'ingénierie et les perspectives interculturelles, comme à l'UTBM.

]
== #fa-graduation-cap Formation

#sidebar(with-line: true, side-width: 18%)[
  06.2028

  09.2024
][
  *Université de Shanghai* · Étudiant de Premier Cycle

  Spécialité : Informatique / Ingénierie Logicielle ; LLM ; Conception et Développement de Jeux
]


== #fa-wrench Compétences

#sidebar(with-line: false, side-width: 18%)[
  *Jeux Vidéo*

  *Langages*

  *Outils / Côté Client*

  *Méthodes de Travail*
][
  Unity, C\#, Développement de Jeux 2D

  TypeScript, Python, Rust

  Git, Typst, Markdown, Docker, WordPress

  Conception Pilotée par les Événements (Event-Driven), Modularisation, Prototypage Rapide
]


== #fa-code Projets et Expériences

#item(
  link(
    "xiaoxuanmo.xyz",
    [*xiaoxuanmo (Application d'Astrologie par IA)*],
  ),
  [ *Contributeur Principal (Full-Stack)* ],
  date[ 12.2025 ]
)

#tech[ React, TypeScript, Python, RESTful API, OAuth ]

Participation à l'itération full-stack d'une application web commerciale d'IA, en me concentrant sur le tableau de bord administratif et l'intégration de la connexion tierce.

- *Tableau de Bord Administratif* : Construction de A à Z du pipeline frontend-backend du module "Code Cadeau" (Gift Code). Conception d'API CRUD RESTful standards avec authentification en Python (Backend), et développement de l'interface d'administration avec des opérations CRUD complètes et un composant de confirmation anti-erreur (`ConfirmDialog`) en React+TS (Frontend).
- *Intégration OAuth* : Direction du développement de l'API backend et du flux d'état frontend pour la connexion WeChat OAuth. Intégration profonde du rappel d'autorisation (callback) tiers avec le système de compte local, soumettant plus de 3000 lignes de modifications validées après une revue de code rigoureuse.

#item(
  link(
    "https://github.com/Thelia-Lzr/SpotlightGJ_24h_2026",
    [ *Roguelike Match-3 RPG Game: Mirror Redraw* ],
  ),
  [ *Projet Game Jam* ],
  date[ 05.2026 ]
)

#tech[ TapTap ]

Prototype de combat Roguelike + Match-3 + RPG conçu pour les Game Jams courtes. L'objectif principal était d'intégrer "l'élimination, le score, les retours de combat et les systèmes de progression" dans un flux complet et jouable.

- Conception et découplage du module de combat principal, séparant le plateau, le système de points, l'état du combat, la gestion des tours et les retours d'animation pour faciliter des itérations rapides.
- Mise en place d'une logique de pointage basée sur les particules, alignant les changements statistiques, les retours d'UI et les effets de scène via une chaîne d'événements unifiée au lieu de les coupler.
- Réservation de points d'extension pour les reliques (relics / hooks), permettant d'empiler continuellement de nouveaux mécanismes autour des coups critiques, des dégâts, de la récupération et de la méta-progression.

#item(
  link(
    "https://github.com/Thelia-Lzr/BoomJam26",
    [ *Simulation de Construction: Run It Again* ],
  ),
  [ *Projet Game Jam* ],
  date[ 05.2026 ]
)

#tech[ C\#, Unity]

Un prototype de jeu de simulation de construction Unity réalisé dans un délai court.

- Création de scènes de niveau en utilisant le système physique intégré d'Unity pour implémenter l'inversion de gravité, l'accélération et d'autres effets physiques.

#item(
  link(
    "https://github.com/Thelia-Lzr/GGJ2026",
    [ *Combat au tour par tour: Apocalypse Rondo* ],
  ),
  [ *miHoYo Game Creation Competition* ],
  date[ 11.2025 ]
)

#tech[ C\#, Unity]

Construction de la couche de contrôle principale du flux de combat au tour par tour, démontrant des capacités en ingénierie et en respect des délais serrés.

- Implémentation des flux principaux comprenant la gestion des tours, la distribution des points d'action, l'enregistrement des unités et la détermination de la victoire / défaite, assurant la progression de l'état de combat.
- Coordination des modules de dialogue, d'animation et audio pour faire la transition du menu principal vers l'histoire puis vers le champ de bataille.
- Interfaces claires maintenues pour les entrées, le glissement (drag), l'échelle et les retours VFX, facilitant les développements ultérieurs.

#item(
  link(
    "https://blog.thelia.site/index.php/2025/06/23/%e8%81%9a%e5%85%89%e7%81%afgamejam%e4%bd%9c%e5%93%81%e4%bb%8b%e7%bb%8d%ef%bc%9aasteroid-landslide/",
    [ *Minage Spatial: Asteroid Landslide* ],
  ),
  [ *Spotlight Gamejam* ],
  date[ 06.2025 ]
)


#tech[ C\#, Unity ]

Première soumission à une Game Jam. Participation à la conception du mécanisme principal d'extraction utilisant la gravité et implémentation d'effets pour divers minéraux.
- Implémentation de mécanismes périodiques d'adaptation à la gravité dans le jeu.
- Conception et implémentation de plusieurs types de minéraux, avec des propriétés telles que le changement de direction de la gravité ou l'extraction stricte par gravité.
- Rédaction d'une explication technique des mécanismes du jeu, accompagnée d'un lien de téléchargement sur mon blog personnel.


== #fa-github Open Source et Collaboration

#item(
  link(
    "https://github.com/poly-workshop/air-agent",
    [ *AirAgent*],
  ),
  [ *Contribution Open Source* ],
  [ #date[02.2026] ]
)
#tech[ TypeScript, React, Programmation Asynchrone, Gestion d'État ]

- *Correction de la Gestion d'État* : Correction d'un problème de fuite de réponse IA (Race Condition) causé par des changements rapides de session. Conception d'une fermeture (closure) pour capturer l'ID de la session et le transmettre à la couche de persistance asynchrone, assurant le routage correct des opérations afin de protéger la machine client.
- *Mises à Jour UX et Extensions* : Ajout d'un mécanisme de rafraîchissement / réinitialisation pour la liste "Model Context Protocol" (MCP) et support de la configuration dynamique des itérations maximales des outils (Max Tool Iteration) pour mieux contrôler les coûts logiciels.

#item(
  link(
    "https://github.com/AstrBotDevs/AstrBot",
    [ *AstrBot (30K+ Stars)*],
  ),
  [ *Contribution Open Source* ],
  [ #date[04.2026] ]
)
#tech[ Python, WebSocket, Contrôle de Concurrence ]

- *Cycle de Vie et Contrôle de Concurrence* : Correction d'un bug où les adaptateurs QQ WebSocket officiels fermés déclenchaient toujours des réponses dupliquées. Introduction d'un indicateur de statut de survie de l'adaptateur (`_handler_enabled`), bloquant en toute sécurité les événements résiduels lors du rechargement à chaud (hot-reload) ou des fermetures, même si les événements sous-jacents n'étaient pas entièrement démontés.
- *Correction de Documentation* : Aide au diagnostic et à la correction des erreurs de configuration de déploiement dans la documentation QQ WebSocket.

#item(
  [ *Activité GitHub* ],
  [ *[Thelia-Lzr](https://github.com/Thelia-Lzr)* ],
  date[ En continu ]
)
- *785 contributions de code* l'année dernière, couvrant les Game Jams, les outils d'IA et le développement backend/frontend.
- Participation importante aux itérations collaboratives sur divers dépôts Game Jam (comme BoomJam26), tout en menant la maintenance et la rédaction technique continue sur mon site personnel [blog.thelia.site](https://blog.thelia.site).

== #fa-graduation-cap Langues

#sidebar(with-line: false, side-width: 18%)[
  *Anglais*

  *Français*
][
  CET-6 (Test d'Anglais Universitaire - Niveau 6) - 483 / 710

  Débutant
]


== #fa-award Certifications

#sidebar(with-line: false, side-width: 18%)[
  *Professionnel*

  *NCRE*

  *Radioamateur*
][
  Database System Engineer (Ingénieur Base de Données, Niveau Intermédiaire)

  NCRE Niveau 3 - Langage C (Mention Excellent)

  Certificat d'Opérateur de Classe A (Obtenu) - Indicatif : BI4BLC
]

== #fa-award Activités et Prix

#sidebar(with-line: false, side-width: 18%)[
  *Compétitions*

  *Compétences*
][
  Concours de Robots Footballeurs de l'Université de Shanghai - 3ème Prix 

  Concours de Planeur "Force et Beauté" de l'Université de Shanghai  - 3ème Prix \

  Concours de CV de l'Université de Shanghai - "Prix de l'Étoile Montante"
]
