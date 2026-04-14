-- Rainbow Delimiters - colore parêntesis, colchetes e chaves por nível de profundidade
-- Plugin: https://gitlab.com/HiPhish/rainbow-delimiters.nvim

return {
  "HiPhish/rainbow-delimiters.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local rainbow = require("rainbow-delimiters")

    vim.g.rainbow_delimiters = {
      strategy = {
        -- Estratégia global: por contexto (Tree-sitter)
        [""] = rainbow.strategy["global"],
        -- Para arquivos muito grandes, usar estratégia local (mais performático)
        commonlisp = rainbow.strategy["local"],
        -- Desabilita rainbow em HTML/XML (tags < > não devem ser coloridas)
        html = vim.NIL,
        xml  = vim.NIL,
      },
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
      },
      priority = {
        [""] = 110,
        lua = 210,
      },
      highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      },
    }
  end,
}
