-- Ficheiro: lua/plugins/amethyst-pulse.lua
-- Este ficheiro configura o tema Amethyst Pulse para Neovim usando a API de highlights.

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "amethyst-pulse",
    },
  },
  {
    -- Criamos um "plugin" local que define o tema
    dir = vim.fn.stdpath("config"),
    name = "amethyst-pulse-theme",
    priority = 1000, -- Garante que carrega antes de tudo
    config = function()
      local colors = {
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
        line_nr = "#4A3B5C",
        border = "#2D283A",
      }

      local groups = {
        -- Editor UI
        Normal = { fg = colors.fg, bg = colors.bg },
        NormalFloat = { fg = colors.fg, bg = colors.bg_dark },
        Cursor = { fg = colors.bg, bg = colors.orange },
        CursorLine = { bg = "#282330" },
        LineNr = { fg = colors.line_nr },
        CursorLineNr = { fg = colors.purple, bold = true },
        Visual = { bg = colors.selection },
        Search = { fg = colors.bg, bg = colors.amber },
        Pmenu = { fg = colors.fg, bg = colors.bg_dark },
        PmenuSel = { fg = colors.purple, bg = "#2D2438", bold = true },
        FloatBorder = { fg = colors.purple },
        VertSplit = { fg = colors.border },
        WinSeparator = { fg = colors.border },

        -- Syntax
        Comment = { fg = colors.comment, italic = true },
        Keyword = { fg = colors.orange, italic = true, bold = true },
        Statement = { fg = colors.purple, bold = true },
        Conditional = { fg = colors.orange, italic = true, bold = true },
        Function = { fg = colors.blue, italic = true },
        String = { fg = colors.orange },
        Number = { fg = colors.cyan },
        Boolean = { fg = colors.purple, bold = true },
        Operator = { fg = colors.red, bold = true },
        Type = { fg = colors.cyan, bold = true },
        Identifier = { fg = colors.fg },
        Property = { fg = colors.cyan, bold = true },
        Parameter = { fg = "#E0AFAF" },

        -- LSP & Treesitter
        ["@variable"] = { fg = colors.fg },
        ["@parameter"] = { fg = "#E0AFAF" },
        ["@function"] = { fg = colors.blue, italic = true },
        ["@keyword"] = { fg = colors.orange, italic = true, bold = true },
        ["@property"] = { fg = colors.cyan, bold = true },
        ["@field"] = { fg = colors.cyan, bold = true },
        ["@tag"] = { fg = "#4EC9B0" },
        ["@tag.attribute"] = { fg = colors.purple, italic = true },

        -- Plugins (Telescope, Neo-tree, etc)
        TelescopeBorder = { fg = colors.purple },
        TelescopePromptBorder = { fg = colors.amber },
        NeoTreeNormal = { fg = colors.fg, bg = colors.bg_dark },
        NeoTreeWinSeparator = { fg = colors.border },
      }

      -- Aplicar os grupos
      for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
      end

      vim.g.colors_name = "amethyst-pulse"
    end,
  },
}
