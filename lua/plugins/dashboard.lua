-- Override do dashboard padrão do LazyVim.
-- Troca o header "LazyVim" por "Amity" — remetendo a amizade, harmonia e boas relações.

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
 █████╗  ███╗   ███╗ ██╗ ████████╗ ██╗   ██╗
██╔══██╗ ████╗ ████║ ██║ ╚══██╔══╝ ╚██╗ ██╔╝
███████║ ██╔████╔██║ ██║    ██║     ╚████╔╝ 
██╔══██║ ██║╚██╔╝██║ ██║    ██║      ╚██╔╝  
██║  ██║ ██║ ╚═╝ ██║ ██║    ██║       ██║   
╚═╝  ╚═╝ ╚═╝     ╚═╝ ╚═╝    ╚═╝       ╚═╝   ]],
        },
      },
    },
  },
}
