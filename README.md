# Amity.vim
Amity Vim merges the vibrant aesthetics of amethyst with the concept of Amity (Friendship and Harmony). It represents the perfect collaboration between the developer and their tools, creating a peaceful, fluid, and highly efficient coding environment through the synergy of keyboard and mind.
It was built on top of [LazyVim](https://github.com/LazyVim/LazyVim), focused on web and TypeScript/Angular development with a custom dark purple visual identity.

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
        ├── dashboard.lua
        ├── rainbow-delimiters.lua
        ├── neotree.lua
        ├── cmp.lua
        └── web_dev.lua
```

---

## Installation from scratch

### 1. Install Neovim

**Ubuntu/Debian** (via PPA para versão mais recente):
```bash
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install neovim -y
```

**macOS** (via Homebrew):
```bash
brew install neovim
```

**Arch Linux:**
```bash
sudo pacman -S neovim
```

Verifique que a versão é >= 0.9:
```bash
nvim --version
```

---

### 2. Install dependencies

#### Node.js (required for LSP servers)

```bash
# via nvm (recommended)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc   # or ~/.zshrc
nvm install --lts
```

#### Git
```bash
# Ubuntu/Debian
sudo apt install git -y

# macOS
brew install git
```

#### Nerd Font (for icons)

Download and install [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads).

On Linux, place the `.ttf` files in `~/.local/share/fonts/` and run:
```bash
fc-cache -fv
```

Configure your terminal emulator to use the installed font.

#### Optional but recommended
```bash
# ripgrep (for live grep in Telescope)
sudo apt install ripgrep -y   # Ubuntu
brew install ripgrep           # macOS

# fd (faster file finder)
sudo apt install fd-find -y   # Ubuntu
brew install fd                # macOS

# lazygit (git UI integrated via <leader>gg)
# https://github.com/jesseduffield/lazygit#installation
```

---

### 3. Back up any existing Neovim config

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

---

### 4. Clone this configuration

```bash
git clone https://github.com/jonhsousadev/amity-vim.git
```

> Replace `YOUR_USERNAME` with your GitHub username.

---

### 5. Start Neovim

```bash
nvim
```

On first launch, [lazy.nvim](https://github.com/folke/lazy.nvim) will automatically bootstrap and install all plugins. This may take a minute or two.

After plugins are installed, Mason will install the LSP servers. You can check the status with:
```
:Mason
```

---

### 6. Verify LSP servers are installed

Inside Neovim, open any TypeScript file and run:
```
:LspInfo
```

You should see `vtsls` attached. For Angular projects, `angularls` will also attach when a `angular.json` is found.

---

## Requirements summary

| Dependency | Minimum version | Purpose |
|---|---|---|
| Neovim | >= 0.9 | Editor |
| Node.js | >= 18 LTS | LSP servers (vtsls, angularls, etc.) |
| Git | any | Plugin manager |
| JetBrainsMono Nerd Font | any | Icons and UI |
| ripgrep | any | Live grep (optional) |
| fd | any | File finding (optional) |
