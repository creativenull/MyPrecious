local M = {}

M.plugin = {
  'neovim/nvim-lspconfig', -- https://github.com/neovim/nvim-lspconfig

  config = function()
    require'lspconfig'.solargraph.setup{}
  end
}

return M
