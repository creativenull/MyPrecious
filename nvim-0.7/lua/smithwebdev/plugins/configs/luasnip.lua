local M = {}

M.plugin = {
  'L3MON4D3/LuaSnip',

  after = 'nvim-cmp',

  config = function()
    require('smithwebdev.snippets')

    -- keybinds
    vim.keymap.set({"i", "s"}, "c-j", function()
      if ls.expand_or_jump() then
        ls.expand_or_jump()
      end
    end, { silent = true })

    vim.keymap.set({"i", "s"}, "c-k", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })

    vim.keymap.set("i", "c-l", function()
      if ls.choice_active() then 
        ls.change_choice(1)
      end
    end)

    vim.keymap.set("n", "<Space><Space>s", "<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>")
    --vim.keymap.set("n", "<Space><Space>s", "<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/langs/*<CR>")

    print('luasnip file')
  end
}

return M
