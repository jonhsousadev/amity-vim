-- Tema Amethyst Pulse para Neovim
-- Versão: 3.0.0

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "amethyst-pulse"

require("amethyst-pulse").load()
