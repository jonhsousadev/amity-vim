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

-- Atalho para voltar ao Dashboard/Welcome Screen (uH = UI Home)
vim.keymap.set("n", "<leader>uH", function()
  local ok_snacks, snacks = pcall(require, "snacks")
  if ok_snacks and snacks.dashboard then
    snacks.dashboard.open()
  elseif pcall(require, "alpha") then
    vim.cmd("Alpha")
  else
    pcall(vim.cmd, "Dashboard")
  end
end, { desc = "Ir para o Dashboard (Home)" })

-- Ponte de Comentários Inteligentes (VS Code Style)
local map = vim.keymap.set

-- 1. Modo Normal: Comenta a linha atual e continua no modo normal
map("n", "<C-/>", "gcc", { remap = true, desc = "Toggle Comment" })
map("n", "<C-_>", "gcc", { remap = true, desc = "Toggle Comment (Fallback)" })

-- 2. Modo Visual: Comenta toda a seleção visual de uma vez só
map("v", "<C-/>", "gc", { remap = true, desc = "Toggle Comment Selection" })
map("v", "<C-_>", "gc", { remap = true, desc = "Toggle Comment Selection (Fallback)" })

-- 3. Modo de Inserção: Comenta a linha e te coloca DE VOLTA na escrita instantaneamente!
-- O comando 'gi' faz o cursor voltar exatamente para a última posição de digitação.
map("i", "<C-/>", "<Esc>gccgi", { remap = true, desc = "Comment & Continue Typing" })
map("i", "<C-_>", "<Esc>gccgi", { remap = true, desc = "Comment & Continue Typing (Fallback)" })
