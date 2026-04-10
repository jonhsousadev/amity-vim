-- Tema Amethyst Pulse para Neovim
-- Baseado na configuração VS Code fornecida
-- Versão: 1.2.0

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "amethyst-pulse"

-- --- PALETA DE CORES (Extraída do JSON) ---
local c = {
  -- UI & Backgrounds
  bg = "#1E1A24", -- editor.background
  bg_dark = "#1A1620", -- sideBar.background / titleBar.activeBackground
  bg_highlight = "#282330", -- editor.lineHighlightBackground
  bg_selection = "#4a3b5c", -- editor.selectionBackground (alpha removed for hex)

  -- Text & UI Elements
  fg = "#EEE8D5", -- editor.foreground (Creme)
  fg_muted = "#6B6080", -- comment / inactiveForeground
  border = "#2D283A", -- sideBar.border

  -- Accent Colors
  purple = "#BB9AF7", -- badge / storage.type / declarations
  blue = "#7AA2F7", -- functions / buttons
  cyan = "#B4F9F8", -- object properties / terminal.ansiCyan
  orange = "#FF9E64", -- control structures / strings / numbers
  str_orange = "#FFB48A", -- JSON values (lighter orange)
  red = "#F7768E", -- terminal.ansiRed / operators
  green = "#9ECE6A", -- logic operators / inline code
  yellow = "#FFB347", -- comparison operators / badges
  teal = "#4EC9B0", -- HTML Tags (baseado no JSON)
  pink_muted = "#E0AFAF", -- parameters / template variables
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- --- 1. INTERFACE DO EDITOR (UI) ---
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg_dark })
hl("CursorLine", { bg = c.bg_highlight })
hl("LineNr", { fg = "#4A3B5C" }) -- editorLineNumber.foreground
hl("CursorLineNr", { fg = c.purple, bold = true }) -- editorLineNumber.activeForeground
hl("Visual", { bg = c.bg_selection })
hl("Search", { fg = c.bg, bg = c.yellow })
hl("StatusLine", { fg = c.fg, bg = c.bg_dark })
hl("StatusLineNC", { fg = c.fg_muted, bg = c.bg_dark })
hl("VertSplit", { fg = c.border })
hl("Pmenu", { fg = c.fg, bg = c.bg_dark })
hl("PmenuSel", { fg = c.purple, bg = "#2D2438" }) -- list.activeSelectionBackground

-- --- 2. SINTAXE PADRÃO (Mapeada do JSON) ---
hl("Comment", { fg = c.fg_muted, italic = true })
hl("String", { fg = c.orange })
hl("Number", { fg = c.orange })
hl("Boolean", { fg = c.purple, bold = true })
hl("Constant", { fg = c.purple, bold = true }) -- null, undefined
hl("Function", { fg = c.blue, italic = true })
hl("Identifier", { fg = c.fg })
hl("Statement", { fg = c.orange, bold = true, italic = true }) -- Control flow (if/else)
hl("Keyword", { fg = c.purple, bold = true }) -- storage.type (const/let)
hl("Operator", { fg = c.red })
hl("PreProc", { fg = c.purple })
hl("Type", { fg = c.cyan, bold = true }) -- properties

-- --- 3. HTML & XML (Baseado no scope "entity.name.tag") ---
-- Forçamos o fim do "efeito tudo laranja" limpando heranças
hl("htmlTag", { fg = c.fg_muted })
hl("htmlEndTag", { fg = c.fg_muted })
hl("htmlTagName", { fg = c.teal }) -- "foreground": "#4EC9B0" no JSON
hl("htmlArg", { fg = c.purple, italic = true }) -- entity.other.attribute-name
hl("htmlString", { fg = c.orange })

-- --- 4. TREE-SITTER (Modern Neovim) ---
hl("@tag", { fg = c.teal })
hl("@tag.delimiter", { fg = c.fg_muted })
hl("@tag.attribute", { fg = c.purple, italic = true })
hl("@keyword.control", { fg = c.orange, bold = true, italic = true })
hl("@keyword.function", { fg = c.purple, bold = true })
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.purple })
hl("@variable.parameter", { fg = c.pink_muted })
hl("@property", { fg = c.cyan, bold = true })
hl("@punctuation.bracket", { fg = c.fg_muted })
hl("@punctuation.delimiter", { fg = c.fg_muted })

-- --- 5. JSON E DOCUMENTAÇÃO ---
hl("jsonKeyword", { fg = c.cyan, bold = true })
hl("jsonString", { fg = c.str_orange })

-- Markdown
hl("markdownH1", { fg = c.purple, bold = true })
hl("markdownH2", { fg = c.purple, bold = true })
hl("markdownBold", { fg = c.blue, bold = true })
hl("markdownItalic", { fg = c.orange, italic = true })
hl("markdownCode", { fg = c.green })

-- --- 6. LINKS DE COMPATIBILIDADE ---
vim.cmd("highlight! link @markup.heading.1.markdown markdownH1")
vim.cmd("highlight! link @markup.heading.2.markdown markdownH2")
vim.cmd("highlight! link @markup.italic markdownItalic")
vim.cmd("highlight! link @markup.strong markdownBold")
