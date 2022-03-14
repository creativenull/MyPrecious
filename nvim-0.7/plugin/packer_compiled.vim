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
local package_path_str = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n=\0\0\2\0\2\0\t6\0\0\0009\0\1\0B\0\1\2\15\0\0\0X\1\3€6\0\0\0009\0\1\0B\0\1\1K\0\1\0\19expand_or_jump\alsD\0\0\3\0\3\0\v6\0\0\0009\0\1\0)\2ÿÿB\0\2\2\15\0\0\0X\1\4€6\0\0\0009\0\2\0)\2ÿÿB\0\2\1K\0\1\0\tjump\rjumpable\alsN\0\0\3\0\3\0\n6\0\0\0009\0\1\0B\0\1\2\15\0\0\0X\1\4€6\0\0\0009\0\2\0)\2\1\0B\0\2\1K\0\1\0\18change_choice\18choice_active\alsë\2\1\0\6\0\21\0%6\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0005\2\5\0'\3\6\0003\4\a\0005\5\b\0B\0\5\0016\0\2\0009\0\3\0009\0\4\0005\2\t\0'\3\n\0003\4\v\0005\5\f\0B\0\5\0016\0\2\0009\0\3\0009\0\4\0005\2\r\0'\3\14\0003\4\15\0B\0\4\0016\0\2\0009\0\3\0009\0\4\0'\2\16\0'\3\17\0'\4\18\0B\0\4\0016\0\19\0'\2\20\0B\0\2\1K\0\1\0\17luasnip file\nprintF<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/*<CR>\20<Space><Space>s\6n\0\bc-l\1\3\0\0\6i\6s\1\0\1\vsilent\2\0\bc-j\1\3\0\0\6i\6s\1\0\1\vsilent\2\0\bc-k\1\3\0\0\6i\6s\bset\vkeymap\bvim\25smithwebdev.snippets\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-tags"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-tags",
    url = "https://github.com/quangnguyen30192/cmp-nvim-tags"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip" },
    loaded = true,
    only_config = true
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd LuaSnip ]]

-- Config for: LuaSnip
try_loadstring("\27LJ\2\n=\0\0\2\0\2\0\t6\0\0\0009\0\1\0B\0\1\2\15\0\0\0X\1\3€6\0\0\0009\0\1\0B\0\1\1K\0\1\0\19expand_or_jump\alsD\0\0\3\0\3\0\v6\0\0\0009\0\1\0)\2ÿÿB\0\2\2\15\0\0\0X\1\4€6\0\0\0009\0\2\0)\2ÿÿB\0\2\1K\0\1\0\tjump\rjumpable\alsN\0\0\3\0\3\0\n6\0\0\0009\0\1\0B\0\1\2\15\0\0\0X\1\4€6\0\0\0009\0\2\0)\2\1\0B\0\2\1K\0\1\0\18change_choice\18choice_active\alsë\2\1\0\6\0\21\0%6\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0005\2\5\0'\3\6\0003\4\a\0005\5\b\0B\0\5\0016\0\2\0009\0\3\0009\0\4\0005\2\t\0'\3\n\0003\4\v\0005\5\f\0B\0\5\0016\0\2\0009\0\3\0009\0\4\0005\2\r\0'\3\14\0003\4\15\0B\0\4\0016\0\2\0009\0\3\0009\0\4\0'\2\16\0'\3\17\0'\4\18\0B\0\4\0016\0\19\0'\2\20\0B\0\2\1K\0\1\0\17luasnip file\nprintF<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/*<CR>\20<Space><Space>s\6n\0\bc-l\1\3\0\0\6i\6s\1\0\1\vsilent\2\0\bc-j\1\3\0\0\6i\6s\1\0\1\vsilent\2\0\bc-k\1\3\0\0\6i\6s\bset\vkeymap\bvim\25smithwebdev.snippets\frequire\0", "config", "LuaSnip")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
