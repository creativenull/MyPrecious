local ls       = require'luasnip'

-- snippet variables --
local s     = ls.snippet
local sa    = ls.s
local sn    = ls.snippet_node
local isn   = ls.indent_snippet_node
local t     = ls.text_node
local i     = ls.insert_node
local f     = ls.function_node
local c     = ls.choice_node
local d     = ls.dynamic_node
local r     = ls.restore_node
local event = require('luasnip.util.events')
local fmt   = require('luasnip.extras.fmt').fmt
local rep   = require('luasnip.extras').rep

local date  = function() return { os.date('%Y-%m-%d') } end

ls.snippets = {
  all = {
    s("ternary", {
      i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
    }),
    ls.parser.parse_snippet('expand', '-- this is what was expanded!')
  },

  lua = {
    s("req", fmt("local {} = require('{}')", { i(1), rep(1)})),
    s('pcreate', fmt("local M = {{}},\n\nM.plugin = {{\n  '{}',\n\n  config = function()\n    {}\n  end\n}}\n\nreturn M",  {i(1), i(2)})),
    s('keymap', fmt("{}noremap('{}',  '{}', {{ desc = '{}'}})", {i(1), i(2), i(3), i(4)}))
  },
}

print('snippets installed!')
