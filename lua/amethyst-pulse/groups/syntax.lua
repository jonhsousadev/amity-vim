-- Highlight groups: Sintaxe padrão, HTML, Tree-sitter
local M = {}

function M.setup(c, hl)
  -- Sintaxe padrão
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

  -- HTML & XML
  hl("htmlTag",     { fg = c.fg_muted })
  hl("htmlEndTag",  { fg = c.fg_muted })
  hl("htmlTagName", { fg = c.teal })
  hl("htmlArg",     { fg = c.purple, italic = true })
  hl("htmlString",  { fg = c.orange })

  -- Tree-sitter: Tags
  hl("@tag",                        { fg = c.teal })
  hl("@tag.delimiter",              { fg = c.fg_muted })
  hl("@tag.delimiter.html",         { fg = c.fg_muted })
  hl("@tag.delimiter.xml",          { fg = c.fg_muted })
  hl("@tag.delimiter.tsx",          { fg = c.fg_muted })
  hl("@punctuation.bracket.html",   { fg = c.fg_muted })
  hl("@punctuation.bracket.tsx",    { fg = c.fg_muted })
  hl("@tag.tsx",                    { fg = c.teal })
  hl("@tag.builtin.tsx",            { fg = c.teal })
  hl("@tag.attribute.tsx",          { fg = c.purple, italic = true })
  hl("@tag.attribute",              { fg = c.purple, italic = true })

  -- Tree-sitter: Keywords
  hl("@keyword",                     { fg = c.purple, bold = true })
  hl("@keyword.import",              { fg = c.blue,   bold = true })
  hl("@keyword.conditional",         { fg = c.orange, bold = true, italic = true })
  hl("@keyword.conditional.ternary", { fg = c.orange, bold = true })
  hl("@keyword.repeat",              { fg = c.orange, bold = true, italic = true })
  hl("@keyword.return",              { fg = c.red,    bold = true })
  hl("@keyword.function",            { fg = c.purple, bold = true })
  hl("@keyword.coroutine",           { fg = c.purple, bold = true, italic = true })
  hl("@keyword.operator",            { fg = c.purple, bold = true })
  hl("@keyword.exception",           { fg = c.red,    bold = true })
  hl("@keyword.type",                { fg = c.cyan,   bold = true })
  hl("@keyword.control",             { fg = c.orange, bold = true, italic = true }) -- compat

  -- Tree-sitter: Geral
  hl("@operator",                    { fg = c.red,    bold = true })
  hl("@function",                    { fg = c.blue,   italic = true })
  hl("@variable",                    { fg = c.fg })
  hl("@variable.builtin",            { fg = c.purple })
  hl("@variable.parameter",          { fg = c.pink_muted })
  hl("@parameter",                   { fg = c.pink_muted })
  hl("@property",                    { fg = c.cyan,   bold = true })
  hl("@field",                       { fg = c.cyan,   bold = true })
  hl("@punctuation.bracket",         { fg = c.fg_muted })
  hl("@punctuation.delimiter",       { fg = c.fg_muted })

  -- JSON
  hl("jsonKeyword", { fg = c.cyan, bold = true })
  hl("jsonString",  { fg = c.str_orange })

  -- Markdown
  hl("markdownH1",     { fg = c.purple, bold = true })
  hl("markdownH2",     { fg = c.purple, bold = true })
  hl("markdownBold",   { fg = c.blue, bold = true })
  hl("markdownItalic", { fg = c.orange, italic = true })
  hl("markdownCode",   { fg = c.green })
end

return M
