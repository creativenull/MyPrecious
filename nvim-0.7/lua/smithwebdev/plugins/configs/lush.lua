local M = {}

M.plugin = {
  'rktjmp/lush.nvim',

  config = function()
    local u = require'smithwebdev.core.utils'
    local noremap = u.noremap
    local nnoremap = u.nnoremap
    local inoremap = u.inoremap
    local tnoremap = u.tnoremap
    local vnoremap = u.vnoremap
    
    nnoremap('<leader><leader>cs', ':LushRunQuickstart<CR>', { desc = 'Overview of Lush creation features' })
  end
}

return M
