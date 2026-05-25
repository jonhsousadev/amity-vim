-- Highlight groups: LSP Semantic Tokens e Diagnósticos
local M = {}

function M.setup(c, hl)
  -- LSP Semantic Tokens (Neovim 0.9+)
  hl("@lsp.type.class",          { fg = c.cyan })
  hl("@lsp.type.interface",      { fg = c.teal, italic = true })
  hl("@lsp.type.enum",           { fg = c.cyan })
  hl("@lsp.type.enumMember",     { fg = c.purple })
  hl("@lsp.type.function",       { fg = c.blue, italic = true })
  hl("@lsp.type.method",         { fg = c.blue, italic = true })
  hl("@lsp.type.parameter",      { fg = c.pink_muted })
  hl("@lsp.type.property",       { fg = c.cyan })
  hl("@lsp.type.variable",       { fg = c.fg })
  hl("@lsp.type.namespace",      { fg = c.purple, italic = true })
  hl("@lsp.type.typeParameter",  { fg = c.teal })
  hl("@lsp.type.decorator",      { fg = c.orange, italic = true })
  hl("@lsp.type.macro",          { fg = c.purple })
  hl("@lsp.type.builtinType",    { fg = c.cyan, bold = true })
  hl("@lsp.mod.deprecated",      { strikethrough = true })
  hl("@lsp.mod.readonly",        { bold = true })
  hl("@lsp.mod.defaultLibrary",  { fg = c.cyan, italic = true })
  hl("@lsp.mod.async",           { fg = c.purple, italic = true })

  -- Diagnósticos: ícones / texto
  hl("DiagnosticError",              { fg = c.red })
  hl("DiagnosticWarn",               { fg = c.yellow })
  hl("DiagnosticInfo",               { fg = c.blue })
  hl("DiagnosticHint",               { fg = c.teal })
  hl("DiagnosticOk",                 { fg = c.green })

  -- Sublinhas (undercurl com cor semântica)
  hl("DiagnosticUnderlineError",     { undercurl = true, sp = c.red })
  hl("DiagnosticUnderlineWarn",      { undercurl = true, sp = c.yellow })
  hl("DiagnosticUnderlineInfo",      { undercurl = true, sp = c.blue })
  hl("DiagnosticUnderlineHint",      { undercurl = true, sp = c.teal })

  -- Virtual text com fundo semântico
  hl("DiagnosticVirtualTextError",   { fg = c.red,    bg = c.diag_error_bg, italic = true })
  hl("DiagnosticVirtualTextWarn",    { fg = c.yellow, bg = c.diag_warn_bg,  italic = true })
  hl("DiagnosticVirtualTextInfo",    { fg = c.blue,   bg = c.diag_info_bg,  italic = true })
  hl("DiagnosticVirtualTextHint",    { fg = c.teal,   bg = c.diag_hint_bg,  italic = true })

  -- Floating e signs
  hl("DiagnosticFloatingError",      { fg = c.red })
  hl("DiagnosticFloatingWarn",       { fg = c.yellow })
  hl("DiagnosticFloatingInfo",       { fg = c.blue })
  hl("DiagnosticFloatingHint",       { fg = c.teal })
  hl("DiagnosticSignError",          { fg = c.red })
  hl("DiagnosticSignWarn",           { fg = c.yellow })
  hl("DiagnosticSignInfo",           { fg = c.blue })
  hl("DiagnosticSignHint",           { fg = c.teal })
end

return M
