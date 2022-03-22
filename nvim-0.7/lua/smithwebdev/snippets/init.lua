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
    s('keymap', fmt("{}noremap('{}',  '{}', {{ desc = '{}'}})", {i(1), i(2), i(3), i(4)})),
    s('pcreate', fmt([[
    local M = {{}},

    M.plugin = {{
      '{}',

      config = function()
        {}
      end
    }}

    return M]],
    {i(1), i(2)})),

    --s("auc", fmt("vim.api.nvim_create_autocmd('{}')", i(1))),

    --s('auc', fmt([[
    --  vim.api.nvim_create_autocmd('{}', {
    --    pattern = '{}',
    --    command = '{}'{}
    --    }), {i(1), i(2), i(3), c(4, sn(nil, fmt(",\n  group = {}"), i(0))), t""}]]))

    s('auc', fmt(
    [[vim.api.nvim_create_autocmd('{}', {{
      pattern = '{}',
      command = '{}'
    }})]], 
    {i(1), i(2), i(3)})),

    s(agroup, c(1, {
      t("some text here"),
      i(nil, 'Heres something else'),
      t("this closes out the choices") }))
    }
  }

  print('snippets installed!')
