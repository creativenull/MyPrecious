local ls       = require'luasnip'

-- snippet variables --
local s     = ls.snippet
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

local date  = function() return { os.date('%Y-%m-%d') } end

ls.snippets = {
  all = {
    s("ternary", {
      i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
    }),
    ls.parser.parse_snippet('expand', '-- this is what was expanded!')
  },

  lua = {
    ls.parser.parse_snippet('lf', 'local $1 = function($2)\n  $0\nend'),
  },
}

print('snippets installed!')
