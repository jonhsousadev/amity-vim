return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Deixa os itens filtrados visíveis
        hide_dotfiles = false, -- NÃO esconde arquivos com ponto
        hide_gitignored = false, -- NÃO esconde arquivos do gitignore
      },
    },
    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
        default = "*",
      },
    },
  },
}
