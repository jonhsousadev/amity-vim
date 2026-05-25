-- Amethyst Pulse — init do módulo
local M = {}

function M.load()
  local palette  = require("amethyst-pulse.palette")
  local c        = palette.colors

  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  require("amethyst-pulse.groups.editor").setup(c, hl)
  require("amethyst-pulse.groups.syntax").setup(c, hl)
  require("amethyst-pulse.groups.lsp").setup(c, hl)
  require("amethyst-pulse.groups.plugins").setup(c, hl)

  -- Desabilitar semantic tokens do LSP (evita sobrescrever treesitter)
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if client then
        client.server_capabilities.semanticTokensProvider = nil
      end
    end,
  })

  -- Links de compatibilidade
  vim.cmd("highlight! link @markup.heading.1.markdown markdownH1")
  vim.cmd("highlight! link @markup.heading.2.markdown markdownH2")
  vim.cmd("highlight! link @markup.italic             markdownItalic")
  vim.cmd("highlight! link @markup.strong             markdownBold")
  vim.cmd("highlight! link @tag.tsx                   @tag")
  vim.cmd("highlight! link @tag.builtin.tsx            @tag")
  vim.cmd("highlight! link @tag.attribute.tsx          @tag.attribute")
  vim.cmd("highlight! link @tag.delimiter.tsx          @tag.delimiter")
end

return M
