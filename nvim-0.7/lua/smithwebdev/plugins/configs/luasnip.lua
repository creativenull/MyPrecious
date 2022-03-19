local M = {}

M.plugin = {
  'L3MON4D3/LuaSnip',

  config = function()
    require('smithwebdev.snippets')
    local ls = require('luasnip')
    local types = require('luasnip.util.types')

    ls.config.set_config {
      history = true,
      updateevents = "TextChanged, TextChangedI",
      ext_base_prio = 200,
      ext_prio_increase = 1,
      enable_autosnippets = false,
      store_selection_keys = "<c-s>",
      ext_opts = {
	      [types.choiceNode] = {
		      active = {
			      virt_text = { {'<- Current Choice', 'NonTest'} },
		      },
	      },
      },
    }

    -- keybinds
    vim.keymap.set("i", "<c-l>", function()
      if ls.choice_active() then 
        ls.change_choice(1)
      end
    end)

    vim.keymap.set("n", "<Space><Space>s", "<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>")

    print('luasnip file')
  end
}

return M
