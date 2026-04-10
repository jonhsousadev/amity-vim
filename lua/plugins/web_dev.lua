return {
  -- 1. Configuração de LSP (Linguagens)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- TypeScript / JavaScript
        vtsls = {},
        -- Angular (Necessário para produtividade no dia a dia)
        angularls = {},
        -- HTML / CSS
        html = {},
        cssls = {},
        -- Tailwind CSS (Se você usar)
        tailwindcss = {},
      },
    },
  },

  -- 2. Formatação de Código (Prettier é essencial para Web)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        -- Usa o Prettier para tudo relacionado a Web
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
      },
    },
  },

  -- 3. Melhorias na UI (Cores e ícones nos arquivos)
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- 4. Suporte a JSON/YAML avançado (Esquemas de validação)
  {
    "b0o/SchemaStore.nvim",
    lazy = true,
    version = false,
  },
}
