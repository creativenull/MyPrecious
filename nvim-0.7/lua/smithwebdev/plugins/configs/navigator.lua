local M = {}

M.plugin = {
  'ray-x/navigator.lua',
  
  after = {
    'nvim-treesitter',
  },

  requires = {
    'neovim/nvim-lspconfig',
    'ray-x/lsp_signature.nvim',
    { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
  },

  config = function()
  end
}

return M
