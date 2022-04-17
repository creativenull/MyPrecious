local M = {}

M.plugin = {
  'L3MON4D3/LuaSnip',

  config = function()
    --require('smithwebdev.snippets')
    require('luasnip.loaders.from_vscode').lazy_load()
    require('luasnip.loaders.from_snipmate').lazy_load()
    require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim-nightly/luasnippets"})
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

    ls.filetype_extend("ruby", { "html" })
    ls.filetype_extend("all", { "_" })


    -- keybinds
    vim.keymap.set("i", "<c-l>", function()
      if ls.choice_active() then 
        ls.change_choice(1)
      end
    end)

    vim.keymap.set("n", "<Space><Space>se", "<cmd>lua require('luasnip.loaders.from_lua').edit_snippet_files()<CR>")

    print('luasnip file')
  end
}

return M
