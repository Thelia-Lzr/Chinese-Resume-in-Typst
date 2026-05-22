# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Export

- Export PDF in VS Code: Open `resume.typ` or `simple-resume.typ`, use Tinymist Typst extension's "Export PDF" button
- Online editor: https://typst.app (import project from GitHub)
- Fonts required: `Noto Serif CJK SC`, `IBM Plex Serif`, `IBM Plex Mono`, `Noto Sans CJK SC`

## Code Architecture

**Three main files:**

1. `template.typ` - Core template with reusable components:
   - `resume()` - Main show function handling page layout, typography, headers, lists
   - `sidebar()` - Left-right layout with optional vertical line separator
   - `info()` - Contact info row with icons and separators
   - `item()` - Three-column grid for project/experience entries
   - `date()` - Gray-styled date helper
   - `tech()` - Light-weight font helper for tech stacks
   - `icon()` - SVG icon loader with color support

2. `resume.typ` - Full-featured resume importing `template.typ`:
   - Imports all template components
   - Defines FontAwesome icons (fa-graduation-cap, fa-code, etc.)
   - Uses `sidebar()`, `item()`, `date()`, `tech()` for structured sections

3. `simple-resume.typ` - Self-contained simple resume:
   - No template import, uses only native Typst syntax
   - Direct `#set` and `#show` configurations
   - Single `item()` helper for three-column entries

**Key design principles:**
- Simplicity through consistency (compose primitives, not special cases)
- Power through composability (few knobs combined in many ways)
- Icons loaded from `icons/` directory as SVG paths with dynamic color injection
