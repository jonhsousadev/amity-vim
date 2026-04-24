-- Highlight groups: Plugins (Telescope, NeoTree, Rainbow, GitSigns, CMP)
local M = {}

function M.setup(c, hl)
  -- Telescope
  hl("TelescopeBorder",       { fg = c.purple })
  hl("TelescopePromptBorder", { fg = c.yellow })

  -- Neo-tree
  hl("NeoTreeNormal",         { fg = c.fg, bg = c.bg_dark })
  hl("NeoTreeWinSeparator",   { fg = c.border })

  -- Rainbow Delimiters
  hl("RainbowDelimiterRed",    { fg = c.red })
  hl("RainbowDelimiterYellow", { fg = c.yellow })
  hl("RainbowDelimiterBlue",   { fg = c.blue })
  hl("RainbowDelimiterOrange", { fg = c.orange })
  hl("RainbowDelimiterGreen",  { fg = c.green })
  hl("RainbowDelimiterViolet", { fg = c.purple })
  hl("RainbowDelimiterCyan",   { fg = c.cyan })

  -- Git Signs
  hl("GitSignsAdd",          { fg = c.green })
  hl("GitSignsChange",       { fg = c.yellow })
  hl("GitSignsDelete",       { fg = c.red })
  hl("GitSignsTopdelete",    { fg = c.red })
  hl("GitSignsChangedelete", { fg = c.orange })
  hl("GitSignsUntracked",    { fg = c.teal })
  hl("GitSignsAddNr",        { fg = c.green })
  hl("GitSignsChangeNr",     { fg = c.yellow })
  hl("GitSignsDeleteNr",     { fg = c.red })
  hl("GitSignsAddLn",        { bg = c.diff_add })
  hl("GitSignsChangeLn",     { bg = c.diff_change })

  -- Diff nativo
  hl("DiffAdd",    { bg = c.diff_add })
  hl("DiffChange", { bg = c.diff_change })
  hl("DiffDelete", { bg = c.diff_delete })
  hl("DiffText",   { bg = c.diff_text })

  -- nvim-cmp
  hl("CmpItemAbbr",              { fg = c.fg })
  hl("CmpItemAbbrDeprecated",    { fg = c.fg_muted, strikethrough = true })
  hl("CmpItemAbbrMatch",         { fg = c.blue, bold = true })
  hl("CmpItemAbbrMatchFuzzy",    { fg = c.blue })
  hl("CmpItemMenu",              { fg = c.fg_muted, italic = true })
  hl("CmpItemKindText",          { fg = c.fg })
  hl("CmpItemKindMethod",        { fg = c.blue })
  hl("CmpItemKindFunction",      { fg = c.blue })
  hl("CmpItemKindConstructor",   { fg = c.cyan })
  hl("CmpItemKindField",         { fg = c.cyan })
  hl("CmpItemKindVariable",      { fg = c.fg })
  hl("CmpItemKindClass",         { fg = c.cyan })
  hl("CmpItemKindInterface",     { fg = c.teal })
  hl("CmpItemKindModule",        { fg = c.purple })
  hl("CmpItemKindProperty",      { fg = c.cyan })
  hl("CmpItemKindUnit",          { fg = c.orange })
  hl("CmpItemKindValue",         { fg = c.orange })
  hl("CmpItemKindEnum",          { fg = c.cyan })
  hl("CmpItemKindKeyword",       { fg = c.purple })
  hl("CmpItemKindSnippet",       { fg = c.green })
  hl("CmpItemKindColor",         { fg = c.red })
  hl("CmpItemKindFile",          { fg = c.fg })
  hl("CmpItemKindReference",     { fg = c.purple })
  hl("CmpItemKindFolder",        { fg = c.yellow })
  hl("CmpItemKindEnumMember",    { fg = c.purple })
  hl("CmpItemKindConstant",      { fg = c.purple, bold = true })
  hl("CmpItemKindStruct",        { fg = c.cyan })
  hl("CmpItemKindEvent",         { fg = c.orange })
  hl("CmpItemKindOperator",      { fg = c.red })
  hl("CmpItemKindTypeParameter", { fg = c.teal })
end

return M
