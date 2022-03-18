local ls       = require'luasnip'

-- snippet variables --
local snip     = ls.snippet
local node     = ls.snippet_node
local text     = ls.text_node
local insert   = ls.insert_node
local func     = ls.function_node
local choic    = ls.choice_node
local dynamicn = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt

local date = function() return { os.date('%Y-%m-%d') } end

--ls.snippets = {
--  all = {
--    snip({
--      trig = 'date',
--      name = 'Date',
--      dscr = 'Date in the form of YYYY-MM-DD'
--    }),
--  }
--}
print('snippets installed!')


