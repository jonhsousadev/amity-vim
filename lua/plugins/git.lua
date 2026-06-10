-- Git: gitsigns com blame virtual text ativo por defeito
-- lazygit configurado via Snacks (<leader>gg)
return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      -- Mostra blame da linha actual em texto virtual (cinzento)
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- no fim da linha
        delay = 500,           -- ms após parar de escrever
      },
      current_line_blame_formatter = " <author>, <author_time:%d/%m/%Y> · <summary>",
    },
  },
  
  -- Configure Snacks to use real lazygit
  {
    "folke/snacks.nvim",
    opts = {
      lazygit = {
        enabled = true,
        -- Use the actual lazygit terminal application
        configure = true,
      },
    },
  },
}
