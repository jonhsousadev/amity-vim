-- Tema Amethyst Pulse para Neovim
-- Versão: 2.0.0

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "amethyst-pulse"

-- --- PALETA DE CORES ---
local c = {
  -- UI & Backgrounds
  bg           = "#1E1A24",
  bg_dark      = "#1A1620",
  bg_highlight = "#282330",
  bg_selection = "#4A3B5C",

  -- Text & UI Elements
  fg           = "#EEE8D5",
  fg_muted     = "#6B6080",
  border       = "#2D283A",

  -- Accent Colors
  purple       = "#BB9AF7",
  blue         = "#7AA2F7",
  cyan         = "#B4F9F8",
  orange       = "#FF9E64",
  str_orange   = "#FFB48A",
  red          = "#F7768E",
  green        = "#9ECE6A",
  yellow       = "#FFB347",
  teal         = "#4EC9B0",
  pink_muted   = "#E0AFAF",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- --- 1. INTERFACE DO EDITOR (UI) ---
hl("Normal",        { fg = c.fg, bg = c.bg })
hl("NormalFloat",   { fg = c.fg, bg = c.bg_dark })
hl("Cursor",        { fg = c.bg, bg = c.orange })
hl("CursorLine",    { bg = c.bg_highlight })
hl("LineNr",        { fg = c.bg_selection })
hl("CursorLineNr",  { fg = c.purple, bold = true })
hl("Visual",        { bg = c.bg_selection })
hl("Search",        { fg = c.bg, bg = c.yellow })
hl("StatusLine",    { fg = c.fg, bg = c.bg_dark })
hl("StatusLineNC",  { fg = c.fg_muted, bg = c.bg_dark })
hl("VertSplit",     { fg = c.border })
hl("WinSeparator",  { fg = c.border })
hl("FloatBorder",   { fg = c.purple })
hl("Pmenu",         { fg = c.fg, bg = c.bg_dark })
hl("PmenuSel",      { fg = c.purple, bg = "#2D2438", bold = true })

-- --- 2. SINTAXE PADRÃO ---
hl("Comment",     { fg = c.fg_muted, italic = true })
hl("String",      { fg = c.orange })
hl("Number",      { fg = c.cyan })
hl("Boolean",     { fg = c.purple, bold = true })
hl("Constant",    { fg = c.purple, bold = true })
hl("Function",    { fg = c.blue, italic = true })
hl("Identifier",  { fg = c.fg })
hl("Statement",   { fg = c.orange, bold = true, italic = true })
hl("Conditional", { fg = c.orange, italic = true, bold = true })
hl("Keyword",     { fg = c.purple, bold = true })
hl("Operator",    { fg = c.red, bold = true })
hl("PreProc",     { fg = c.purple })
hl("Type",        { fg = c.cyan, bold = true })
hl("Property",    { fg = c.cyan, bold = true })
hl("Parameter",   { fg = c.pink_muted })

-- --- 3. HTML & XML ---
hl("htmlTag",     { fg = c.fg_muted })
hl("htmlEndTag",  { fg = c.fg_muted })
hl("htmlTagName", { fg = c.teal })
hl("htmlArg",     { fg = c.purple, italic = true })
hl("htmlString",  { fg = c.orange })

-- --- 4. TREE-SITTER ---
hl("@tag",               { fg = c.teal })
hl("@tag.delimiter",     { fg = c.fg_muted })
hl("@tag.attribute",     { fg = c.purple, italic = true })
hl("@keyword",           { fg = c.orange, italic = true, bold = true })
hl("@keyword.control",   { fg = c.orange, bold = true, italic = true })
hl("@keyword.function",  { fg = c.purple, bold = true })
hl("@function",          { fg = c.blue, italic = true })
hl("@variable",          { fg = c.fg })
hl("@variable.builtin",  { fg = c.purple })
hl("@variable.parameter",{ fg = c.pink_muted })
hl("@parameter",         { fg = c.pink_muted })
hl("@property",          { fg = c.cyan, bold = true })
hl("@field",             { fg = c.cyan, bold = true })
hl("@punctuation.bracket",   { fg = c.fg_muted })
hl("@punctuation.delimiter", { fg = c.fg_muted })

-- --- 5. JSON E DOCUMENTAÇÃO ---
hl("jsonKeyword", { fg = c.cyan, bold = true })
hl("jsonString",  { fg = c.str_orange })

-- Markdown
hl("markdownH1",     { fg = c.purple, bold = true })
hl("markdownH2",     { fg = c.purple, bold = true })
hl("markdownBold",   { fg = c.blue, bold = true })
hl("markdownItalic", { fg = c.orange, italic = true })
hl("markdownCode",   { fg = c.green })

-- --- 6. PLUGINS ---
hl("TelescopeBorder",       { fg = c.purple })
hl("TelescopePromptBorder", { fg = c.yellow })
hl("NeoTreeNormal",         { fg = c.fg, bg = c.bg_dark })
hl("NeoTreeWinSeparator",   { fg = c.border })

-- --- 7. RAINBOW DELIMITERS ---
-- Parêntesis/colchetes/chaves coloridos por nível de profundidade (Tree-sitter)
hl("RainbowDelimiterRed",    { fg = c.red })
hl("RainbowDelimiterYellow", { fg = c.yellow })
hl("RainbowDelimiterBlue",   { fg = c.blue })
hl("RainbowDelimiterOrange", { fg = c.orange })
hl("RainbowDelimiterGreen",  { fg = c.green })
hl("RainbowDelimiterViolet", { fg = c.purple })
hl("RainbowDelimiterCyan",   { fg = c.cyan })

-- --- 8. LINKS DE COMPATIBILIDADE ---
vim.cmd("highlight! link @markup.heading.1.markdown markdownH1")
vim.cmd("highlight! link @markup.heading.2.markdown markdownH2")
vim.cmd("highlight! link @markup.italic             markdownItalic")
vim.cmd("highlight! link @markup.strong             markdownBold")
