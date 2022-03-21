local M = {}

M.plugin = {
  'michaelb/sniprun',
   
  run = 'bash ./install.sh',

  config = function()
    -- keybinds
    local u = require'smithwebdev.core.utils'
    local nnoremap = u.nnoremap
    local vnoremap = u.vnoremap

    nnoremap('<leader>sr', ':SnipRun<CR>',      { desc = 'Runs code block in editor'})
    vnoremap('<leader>sr', ":'<,'>SnipRun<CR>", { desc = 'Runs code block in editor'})
  end

  
}

return M
