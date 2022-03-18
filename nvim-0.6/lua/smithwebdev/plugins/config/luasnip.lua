local M = {}

M.plugin = {
  'L3MON4D3/LuaSnip',

  after = 'nvim-cmp',

  config = function()
    require('smithwebdev.snippets')

    -- keymaps
    -- vim.keymap.set("n", "<Space><Space>s", "<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/*<CR>")
    local opts = {noremap = true, silent = true}
    vim.api.nvim_set_keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
    vim.api.nvim_set_keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
    vim.api.nvim_set_keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
    vim.api.nvim_set_keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
  end
}

return M
