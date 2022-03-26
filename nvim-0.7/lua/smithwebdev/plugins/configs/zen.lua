local M = {}

M.plugin = {
  'folke/zen-mode.nvim',

  config = function()
    require'zen-mode'.setup({})
  end
}

return M
