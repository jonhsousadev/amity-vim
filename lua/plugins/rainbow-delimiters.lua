-- Rainbow Delimiters - colore parêntesis, colchetes e chaves por nível de profundidade
-- Plugin: https://gitlab.com/HiPhish/rainbow-delimiters.nvim

return {
  "HiPhish/rainbow-delimiters.nvim",
  event = { "BufReadPost", "BufNewFile" },
  -- init roda antes do plugin ser carregado, garantindo que vim.g.rainbow_delimiters
  -- esteja definido no momento em que o plugin inicializa
  init = function()
    vim.g.rainbow_delimiters = {
      strategy = {
        -- Estratégia global: por contexto (Tree-sitter)
        [""]         = "rainbow-delimiters.strategy.global",
        -- Para arquivos muito grandes, usar estratégia local (mais performático)
        commonlisp   = "rainbow-delimiters.strategy.local",
        -- Desabilita rainbow em HTML/XML e JSX/TSX (tags < > não devem ser coloridas)
        -- Os nomes aqui são linguagens do Tree-sitter, não filetypes do Vim
        html         = "rainbow-delimiters.strategy.no-op",
        xml          = "rainbow-delimiters.strategy.no-op",
        jsx          = "rainbow-delimiters.strategy.no-op",
        tsx          = "rainbow-delimiters.strategy.no-op",
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
