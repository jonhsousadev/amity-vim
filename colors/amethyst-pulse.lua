-- Ficheiro: ~/.config/nvim/colors/amethyst-pulse.lua

-- Limpar highlights existentes
if vim.g.colors_name then
  vim.cmd("hi clear")
end
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "amethyst-pulse"
vim.o.termguicolors = true

local c = {
  bg = "#1E1A24",
  bg_dark = "#1A1620",
  fg = "#EEE8D5",
  purple = "#BB9AF7",
  amber = "#FFB347",
  orange = "#FF9E64",
  blue = "#7AA2F7",
  red = "#F7768E",
  green = "#9ECE6A",
  cyan = "#B4F9F8",
  comment = "#6B6080",
  selection = "#4A3B5C",
  border = "#2D283A",
}

local hl = vim.api.nvim_set_hl

-- UI Geral
hl(0, "Normal", { fg = c.fg, bg = c.bg })
hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_dark })
hl(0, "FloatBorder", { fg = c.purple, bg = c.bg_dark })
hl(0, "CursorLine", { bg = "#282330" })
hl(0, "LineNr", { fg = c.selection })
hl(0, "CursorLineNr", { fg = c.purple, bold = true })
hl(0, "Visual", { bg = c.selection })
hl(0, "Pmenu", { bg = c.bg_dark, fg = c.fg })
hl(0, "PmenuSel", { bg = c.selection, fg = c.purple, bold = true })
hl(0, "WinSeparator", { fg = c.border })
hl(0, "Search", { bg = c.amber, fg = c.bg_dark })

-- Sintaxe
hl(0, "Comment", { fg = c.comment, italic = true })
hl(0, "Keyword", { fg = c.orange, bold = true, italic = true })
hl(0, "Statement", { fg = c.purple, bold = true })
hl(0, "Function", { fg = c.blue, italic = true })
hl(0, "String", { fg = c.orange })
hl(0, "Number", { fg = c.cyan })
hl(0, "Boolean", { fg = c.purple, bold = true })
hl(0, "Operator", { fg = c.red, bold = true })
hl(0, "Type", { fg = c.cyan, bold = true })
hl(0, "Identifier", { fg = c.fg })

-- Treesitter (Modern Neovim)
hl(0, "@variable", { fg = c.fg })
hl(0, "@property", { fg = c.cyan, bold = true })
hl(0, "@parameter", { fg = "#E0AFAF" })
hl(0, "@tag", { fg = "#4EC9B0" })
hl(0, "@tag.attribute", { fg = c.purple, italic = true })

-- Plugins
hl(0, "NeoTreeNormal", { bg = c.bg_dark, fg = c.fg })
hl(0, "NeoTreeNormalNC", { bg = c.bg_dark, fg = c.fg })
