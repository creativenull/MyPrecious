local ls      = require('luasnip')
local snip    = ls.snippet
local node    = ls.snippet_node
local isn     = ls.indent_snippet_node
local text    = ls.text_node
local insert  = ls.insert_node
local func    = ls.function_node
local choice  = ls.choice_node
local dynamic = ls.dynamic_node
local restore = ls.restore_node
-- local l       = require('luasnip.extras').lambda
-- local rep     = require('luasnip.extras').rep
-- local p       = require('luasnip.extras').partial
-- local m       = require('luasnip.extras').match
-- local n       = require('luasnip.extras').nonempty
-- local dl      = require('luasnip.extras').dynamic_lambda
-- local fmt     = require('luasnip.extras.fmt').fmt
-- local fmta    = require('luasnip.extras.fmta').fmta
-- local types   = require('luasnip.util.types')
-- local conds   = require('luasnip.extras.expand_conditions')
-- local events  = require('luasnip.util.events')
-- local ai      = require('luasnip.nodes.absolute_indexer')

ls.snippets = {
  ruby = {
    snip("ternary", {
      insert(1, "cond"), text(" ? "), insert(2, "then"), text(" : "), insert(3, "else")
    })
  },
  lua = {
    snip('keymap', {
      text("keymap(\""),
      insert(1, "mode"),
      text("\", \""),
      insert(2, "binding"),
      text("\", \""),
      insert(3, "command"),
      text("\", opts)")
    }),
    snip('plugin', {
      text("local M = {}\n\nM.plugin = {\t")
    })
  }
}
--local date = function() return {os.date('%Y-%m-%d')} end
--ls.snippets = {
--  all = {
--    snip({
--      trig = "date",
--      name = "Date",
--      dscr = "Date in the form of YYYY-MM-DD"
--    })
--  }
--}
--
--snip({
--  trig = "meta",
--  name = "Metadata",
--  dscr = "Yaml metadata format for markdown"
--},
--{
--  text({"---",
--    "title: "}), insert(1, "note_title"), text({"",
--    "author: "}), insert(2, "author"), text({"",
--    "data: "}), func(date, {}), text({"",
--    "tags: ["}), insert(4), text({"]",
--    "comments: true",
--    "---", 
--  ""}),
--  insert(0)
--})


-- **local ls     = require"luasnip"
-- **local s      = ls.snippet
-- **local sn     = ls.snippet_node
-- **local isn    = ls.indent_snippet_node
-- **local t      = ls.text_node
-- **local i      = ls.insert_node
-- **local f      = ls.function_node
-- **local c      = ls.choice_node
-- **local d      = ls.dynamic_node
-- **local r      = ls.restore_node
-- **local events = require("luasnip.util.events")
-- **local ai     = require("luasnip.nodes.absolute_indexer")
