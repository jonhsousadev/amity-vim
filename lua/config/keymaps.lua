-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Atalho para sair do Diffview ou do modo diff nativo
vim.keymap.set("n", "<leader>gq", function()
  if vim.wo.diff then
    vim.cmd("diffoff!")
  end
  vim.cmd("DiffviewClose")
end, { desc = "Sair do modo Diff (Amity Exit)" })
