" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { "\27LJ\2\nÙ\1\0\0\5\0\n\0\0146\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\b\0'\2\t\0B\0\2\1K\0\1\0\17luasnip file\nprintM<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>\20<Space><Space>s\6n\bset\vkeymap\bvim\25smithwebdev.snippets\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-tags"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-tags",
    url = "https://github.com/quangnguyen30192/cmp-nvim-tags"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip" },
    loaded = true,
    only_config = true
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n›\2\0\0\b\0\v\2+6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2€+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20€6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\b\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\t\2'\5\n\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÚ\1\0\1\3\1\a\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\19€6\1\2\0009\1\3\1B\1\1\2\15\0\1\0X\2\4€6\1\2\0009\1\4\1B\1\1\1X\1\n€6\1\5\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\6\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\rcomplete\21has_words_before\19expand_or_jump\23expand_or_jumpable\fluasnip\21select_next_item\fvisible”\1\0\1\4\1\5\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€6\1\2\0009\1\3\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€6\1\2\0009\1\4\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\tjump\rjumpable\fluasnip\21select_prev_item\fvisibleà\a\1\0\v\0008\0a6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\1B\2\1\0013\2\4\0009\3\5\0009\3\6\3'\5\a\0005\6\t\0004\a\3\0005\b\b\0>\b\1\a=\a\n\6'\a\v\0005\b\r\0004\t\3\0005\n\f\0>\n\1\t=\t\n\bB\3\5\0019\3\5\0005\5\17\0005\6\15\0003\a\14\0=\a\16\6=\6\18\0055\6\22\0009\a\19\0003\t\20\0005\n\21\0B\a\3\2=\a\23\0069\a\19\0003\t\24\0005\n\25\0B\a\3\2=\a\26\0069\a\19\0009\a\27\a)\tüÿB\a\2\2=\a\28\0069\a\19\0009\a\27\a)\t\4\0B\a\2\2=\a\29\0069\a\19\0009\a\30\aB\a\1\2=\a\31\0069\a\19\0009\a \a5\t#\0009\n!\0009\n\"\n=\n$\tB\a\2\2=\a%\0069\a\19\0009\a&\aB\a\1\2=\a'\6=\6\19\0054\6\b\0005\a(\0>\a\1\0065\a)\0>\a\2\0065\a*\0>\a\3\0065\a+\0>\a\4\0065\a,\0>\a\5\0065\a-\0>\a\6\0065\a.\0>\a\a\6=\6\n\0055\0063\0009\a/\0015\t0\0005\n1\0=\n2\tB\a\2\2=\a4\0065\a5\0=\a6\6=\0067\5B\3\2\0012\0\0€K\0\1\0\15formatting\17experimental\1\0\2\15ghost_text\1\16native_menu\1\vformat\1\0\0\tmenu\1\0\a\vbuffer\r[BUFFER]\ttags\v[TAGS]\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\fluasnip\v[SNIP]\tpath\v[PATH]\forgmode\14[ORGMODE]\1\0\2\rmaxwidth\0032\14with_text\1\15cmp_format\1\0\1\tname\forgmode\1\0\1\tname\tpath\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\ttags\1\0\1\tname\fluasnip\14<c-Space>\rcomplete\n<C-y>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\1\0\0\1\0\1\tname\vbuffer\6/\fsources\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\nsetup\0\tinit\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd LuaSnip ]]

-- Config for: LuaSnip
try_loadstring("\27LJ\2\nÙ\1\0\0\5\0\n\0\0146\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\b\0'\2\t\0B\0\2\1K\0\1\0\17luasnip file\nprintM<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>\20<Space><Space>s\6n\bset\vkeymap\bvim\25smithwebdev.snippets\frequire\0", "config", "LuaSnip")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
