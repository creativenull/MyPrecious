local M = {}

M.plugin = {
  'ThePrimeagen/harpoon',

  after = {
    'telescope.nvim',
  },

  config = function()
    require('telescope').load_extension('harpoon')

    --keybindings
    local default_opts = {noremap = true, silent = true}
    vim.api.nvim_set_keymap('n', '<leader>fj', ':Telescope harpoon marks<CR>', default_opts)
    vim.api.nvim_set_keymap('n', '<leader>jf', ':lua require("harpoon.mark").add_file()<CR>', default_opts) --, Mark Files to revisit later
    vim.api.nvim_set_keymap('n', '<leader>jj', ':lua require("harpoon.ui").nav_next()<CR>', default_opts) --, Navigates to next mark
    vim.api.nvim_set_keymap('n', '<leader>jk', ':lua require("harpoon.ui").nav_prev()<CR>', default_opts) --, Navigates to previous mark
    vim.api.nvim_set_keymap('n', '<leader>jm', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', default_opts) --, View all project marks
    -- nnoremap('<leader>fj', ':Telescope harpoon marks<CR>')
    -- nnoremap('<leader>jf', ':lua require("harpoon.mark").add_file()<CR>') --, Mark Files to revisit later
    -- nnoremap('<leader>jj', ':lua require("harpoon.ui").nav_next()<CR>') --, Navigates to next mark
    -- nnoremap('<leader>jk', ':lua require("harpoon.ui").nav_prev()<CR>') --, Navigates to previous mark
    -- nnoremap('<leader>jm', ':lua require("harpoon.ui").toggle_quick_menu()<CR>') --, View all project marks
  end
}

return M
