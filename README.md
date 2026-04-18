# AmethystVim

A personal Neovim configuration built on top of [LazyVim](https://github.com/LazyVim/LazyVim), focused on web and TypeScript/Angular development with a custom dark purple visual identity.

## Theme

**amethyst-pulse** is a fully hand-crafted dark colorscheme with a deep purple background and warm accent colors. It includes detailed coverage for Tree-sitter captures, plugin integrations (Telescope, Neo-tree, Rainbow Delimiters) and JSX/TSX tag highlighting.

| Role       | Color     |
|------------|-----------|
| Background | `#1E1A24` |
| Foreground | `#EEE8D5` |
| Purple     | `#BB9AF7` |
| Blue       | `#7AA2F7` |
| Cyan       | `#B4F9F8` |
| Orange     | `#FF9E64` |
| Red        | `#F7768E` |
| Green      | `#9ECE6A` |

## Features

### Web Development Stack
- **LSP:** TypeScript/JavaScript (`vtsls`), Angular (`angularls`), HTML, CSS, Tailwind CSS
- **Formatter:** Prettier for JS, TS, JSX, TSX, HTML, CSS and JSON via `conform.nvim`
- **Color preview:** inline CSS color rendering with `nvim-colorizer`
- **Schema validation:** JSON and YAML schema-aware completions via `SchemaStore.nvim`

### Editor
- **Rainbow Delimiters:** brackets and braces colored by nesting depth; disabled for HTML/JSX/TSX angle brackets to avoid visual noise
- **Neo-tree:** file explorer showing dotfiles and gitignored files
- **Command-line completion:** autocomplete in `/`, `?` and `:` modes
- **System clipboard** always synced
- **JetBrainsMono Nerd Font** (GUI)

## Structure

```
~/.config/nvim/
├── colors/
│   └── amethyst-pulse.lua   # Custom colorscheme
└── lua/
    ├── config/
    │   ├── lazy.lua          # Plugin manager bootstrap
    │   ├── options.lua       # Vim options
    │   ├── keymaps.lua       # Keymaps
    │   └── autocmds.lua      # Autocommands
    └── plugins/
        ├── amethyst-pulse.lua
        ├── rainbow-delimiters.lua
        ├── neotree.lua
        ├── cmp.lua
        └── web_dev.lua
```

## Requirements

- Neovim >= 0.9
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [Node.js](https://nodejs.org) (for LSP servers)
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com)
- A terminal with true color support
