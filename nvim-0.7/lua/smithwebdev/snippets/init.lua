local ls       = require'luasnip'

-- snippet variables --
local snip     = ls.snippet
local node     = ls.snippet_node
local text     = ls.text_node
local insert   = ls.insert_node
local func     = ls.function_node
local choic    = ls.choice_node
local dynamicn = ls.dynamic_node

ls.config.set_config {
  history = true,
  updateevents = "TextChanged, TextChangedI",
  ext_base_prio = 200,
  ext_prio_increase = 1,
  enable_autosnippets = false,
  store_selection_keys = "<c-s>",
}

ls.snippets = {
  all = {
    -- Available in any filetype
    ls.parser.parse_snippet("expand", "--this is what was expanded!"),
  },
}


print('snippets installed!')
