return {
  -- Renderiza cores em tempo real em códigos CSS e classes Tailwind
  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufReadPre",
    opts = {
      render = "background", -- 'background' | 'foreground' | 'virtual'
      enable_named_colors = true,
      enable_tailwind = true,
    },
  },

  -- Transforma erros do TypeScript em janelas limpas e fáceis de ler
  {
    "OlegGulevskyy/better-ts-errors.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    ft = { "typescript", "typescriptreact" },
    config = function()
      require("better-ts-errors").setup()
    end,
  },

  -- Fecha e renomeia tags HTML, JSX e TSX automaticamente
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = true,
        },
      })
    end,
  },

  -- Mostra versões e atualizações disponíveis no package.json
  {
    "vuki656/package-info.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    ft = "json",
    config = function()
      require("package-info").setup({
        colors = {
          up_to_date = "#3C4048",
          outdated = "#d19a66",
        },
        icons = {
          enable = true,
          style = {
            up_to_date = "|  ",
            outdated = "|  ",
          },
        },
        autostart = true,
        hide_up_to_date = false,
        hide_unstable_versions = false,
      })
    end,
  },
}
