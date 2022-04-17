local M = {}

M.plugin = {
  'hoschi/yode-nvim',

  config = function()
    require("yode-nvim").setup()
  end
}

return M
