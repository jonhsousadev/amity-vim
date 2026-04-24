-- Highlight groups: Interface do Editor
local M = {}

function M.setup(c, hl)
  -- Básicos
  hl("Normal",        { fg = c.fg, bg = c.bg })
  hl("NormalFloat",   { fg = c.fg, bg = c.bg_float })
  hl("NormalNC",      { fg = c.fg, bg = c.bg_dark })
  hl("Cursor",        { fg = c.bg, bg = c.orange })
  hl("CursorLine",    { bg = c.bg_highlight })
  hl("LineNr",        { fg = c.bg_selection })
  hl("CursorLineNr",  { fg = c.purple, bold = true })
  hl("Visual",        { bg = c.bg_selection })
  hl("Search",        { fg = c.bg, bg = c.yellow })
  hl("IncSearch",     { fg = c.bg, bg = c.orange, bold = true })
  hl("CurSearch",     { fg = c.bg, bg = c.orange, bold = true })
  hl("Substitute",    { fg = c.bg, bg = c.red })

  -- Status / Splits
  hl("StatusLine",    { fg = c.fg, bg = c.bg_dark })
  hl("StatusLineNC",  { fg = c.fg_muted, bg = c.bg_dark })
  hl("VertSplit",     { fg = c.border })
  hl("WinSeparator",  { fg = c.border })

  -- Floats e popups
  hl("FloatBorder",   { fg = c.purple })
  hl("Pmenu",         { fg = c.fg, bg = c.bg_dark })
  hl("PmenuSel",      { fg = c.purple, bg = "#2D2438", bold = true })
  hl("PmenuThumb",    { bg = c.purple })
  hl("PmenuSbar",     { bg = c.bg_highlight })

  -- Abas
  hl("TabLine",       { fg = c.fg_muted, bg = c.bg_dark })
  hl("TabLineSel",    { fg = c.purple, bg = c.bg, bold = true })
  hl("TabLineFill",   { bg = c.bg_dark })

  -- WinBar (breadcrumbs)
  hl("WinBar",        { fg = c.fg_muted, bg = c.bg })
  hl("WinBarNC",      { fg = c.fg_muted, bg = c.bg_dark })

  -- Gutter / colunas
  hl("SignColumn",    { fg = c.fg_muted, bg = c.bg })
  hl("FoldColumn",    { fg = c.fg_muted, bg = c.bg })
  hl("ColorColumn",   { bg = c.bg_highlight })
  hl("Folded",        { fg = c.fg_muted, bg = c.bg_highlight, italic = true })

  -- Misc
  hl("MatchParen",    { fg = c.orange, bold = true, underline = true })
  hl("Conceal",       { fg = c.fg_muted })
  hl("NonText",       { fg = c.bg_selection })
  hl("SpecialKey",    { fg = c.bg_selection })
  hl("Whitespace",    { fg = c.bg_highlight })
  hl("EndOfBuffer",   { fg = c.bg_dark })
  hl("QuickFixLine",  { bg = c.bg_selection })
end

return M
