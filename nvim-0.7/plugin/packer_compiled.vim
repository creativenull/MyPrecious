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
    config = { "\27LJ\2\n<\0\0\2\1\1\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\19expand_or_jumpC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2ˇˇB\0\2\1K\0\1\0\0¿\tjump\rjumpableM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\18change_choice\18choice_active¬\5\1\0\v\0!\0;6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\4\0009\2\5\0025\4\6\0004\5\0\b9\6\a\0015\a\v\0005\b\t\0004\t\3\0005\n\b\0>\n\1\t=\t\n\b=\b\f\a<\a\6\5=\5\r\4B\2\2\0016\2\14\0009\2\15\0029\2\16\0025\4\17\0'\5\18\0003\6\19\0005\a\20\0B\2\5\0016\2\14\0009\2\15\0029\2\16\0025\4\21\0'\5\22\0003\6\23\0005\a\24\0B\2\5\0016\2\14\0009\2\15\0029\2\16\2'\4\25\0'\5\26\0003\6\27\0B\2\4\0016\2\14\0009\2\15\0029\2\16\2'\4\28\0'\5\29\0'\6\30\0B\2\4\0016\2\31\0'\4 \0B\2\2\0012\0\0ÄK\0\1\0\17luasnip file\nprintM<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>\20<Space><Space>s\6n\0\bc-l\6i\1\0\1\vsilent\2\0\bc-k\1\3\0\0\6i\6s\1\0\1\vsilent\2\0\bc-j\1\3\0\0\6i\6s\bset\vkeymap\bvim\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\22<- Current Choice\fNonTest\15choiceNode\1\0\6\22ext_prio_increase\3\1\18ext_base_prio\3»\1\fhistory\2\17updateevents\30TextChanged, TextChangedI\25store_selection_keys\n<c-s>\24enable_autosnippets\1\15set_config\vconfig\23luasnip.util.types\fluasnip\25smithwebdev.snippets\frequire\0" },
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
  harpoon = {
    config = { "\27LJ\2\n•\4\0\0\a\0\19\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\17\0'\5\18\0\18\6\0\0B\1\5\1K\0\1\0007:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\15<leader>jm.:lua require(\"harpoon.ui\").nav_prev()<CR>\15<leader>jk.:lua require(\"harpoon.ui\").nav_next()<CR>\15<leader>jj0:lua require(\"harpoon.mark\").add_file()<CR>\15<leader>jf!:Telescope harpoon marks<CR>\15<leader>fj\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\fharpoon\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/opt/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\ny\0\0\a\0\a\0\n5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\1K\0\1\0\21<cmd>LazyGit<CR>\15<leader>gl\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
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
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope-luasnip.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-luasnip.nvim",
    url = "https://github.com/benfowler/telescope-luasnip.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    after = { "harpoon" },
    loaded = true,
    only_config = true
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
try_loadstring("\27LJ\2\nõ\2\0\0\b\0\v\2+6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\b\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\t\2'\5\n\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2d\0\1\5\0\5\0\r6\1\0\0'\3\1\0B\1\2\2\14\0\1\0X\2\1ÄK\0\1\0006\2\2\0'\4\1\0B\2\2\0029\2\3\0029\4\4\0B\2\2\1K\0\1\0\tbody\15lsp_expand\frequire\fluasnip\rprequire⁄\1\0\1\3\1\a\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä6\1\2\0009\1\3\1B\1\1\2\15\0\1\0X\2\4Ä6\1\2\0009\1\4\1B\1\1\1X\1\nÄ6\1\5\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\6\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\rcomplete\21has_words_before\19expand_or_jump\23expand_or_jumpable\fluasnip\21select_next_item\fvisibleî\1\0\1\4\1\5\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ6\1\2\0009\1\3\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä6\1\2\0009\1\4\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\tjump\rjumpable\fluasnip\21select_prev_item\fvisible‡\a\1\0\v\0008\0a6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\1B\2\1\0013\2\4\0009\3\5\0009\3\6\3'\5\a\0005\6\t\0004\a\3\0005\b\b\0>\b\1\a=\a\n\6'\a\v\0005\b\r\0004\t\3\0005\n\f\0>\n\1\t=\t\n\bB\3\5\0019\3\5\0005\5\17\0005\6\15\0003\a\14\0=\a\16\6=\6\18\0055\6\22\0009\a\19\0003\t\20\0005\n\21\0B\a\3\2=\a\23\0069\a\19\0003\t\24\0005\n\25\0B\a\3\2=\a\26\0069\a\19\0009\a\27\a)\t¸ˇB\a\2\2=\a\28\0069\a\19\0009\a\27\a)\t\4\0B\a\2\2=\a\29\0069\a\19\0009\a\30\aB\a\1\2=\a\31\0069\a\19\0009\a \a5\t#\0009\n!\0009\n\"\n=\n$\tB\a\2\2=\a%\0069\a\19\0009\a&\aB\a\1\2=\a'\6=\6\19\0054\6\b\0005\a(\0>\a\1\0065\a)\0>\a\2\0065\a*\0>\a\3\0065\a+\0>\a\4\0065\a,\0>\a\5\0065\a-\0>\a\6\0065\a.\0>\a\a\6=\6\n\0055\0063\0009\a/\0015\t0\0005\n1\0=\n2\tB\a\2\2=\a4\0065\a5\0=\a6\6=\0067\5B\3\2\0012\0\0ÄK\0\1\0\15formatting\17experimental\1\0\2\15ghost_text\1\16native_menu\1\vformat\1\0\0\tmenu\1\0\a\fluasnip\v[SNIP]\rnvim_lua\n[LUA]\ttags\v[TAGS]\rnvim_lsp\n[LSP]\vbuffer\r[BUFFER]\tpath\v[PATH]\forgmode\14[ORGMODE]\1\0\2\rmaxwidth\0032\14with_text\1\15cmp_format\1\0\1\tname\forgmode\1\0\1\tname\tpath\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\ttags\1\0\1\tname\fluasnip\14<c-Space>\rcomplete\n<C-y>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\1\0\0\1\0\1\tname\vbuffer\6/\fsources\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\nsetup\0\tinit\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\a\0\a\0\n5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\1K\0\1\0\21<cmd>LazyGit<CR>\15<leader>gl\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\0\5\1\b\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2-\1\0\0009\1\4\0015\3\6\0005\4\5\0>\0\6\4=\4\a\3B\1\2\1K\0\1\0\1¿\17find_command\1\0\1\14previewer\1\1\6\0\0\arg\f--files\f--iglob\n!.git\r--hidden\15find_files\vconfig\fstdpath\afn\bvimq\0\0\4\1\4\0\a-\0\0\0009\0\0\0005\2\2\0005\3\1\0=\3\3\2B\0\2\1K\0\1\0\1¿\17find_command\1\0\1\14previewer\1\1\6\0\0\arg\f--files\f--iglob\n!.git\r--hidden\15find_files*\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\17file_browser'\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\14live_grep%\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\fkeymapsm\0\0\6\2\b\0\f-\0\0\0009\0\0\0005\2\6\0005\3\4\0005\4\2\0-\5\1\0009\5\1\5=\5\3\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\1¿\2¿\rmappings\1\0\0\6i\1\0\0\n<C-q>\1\0\0\19send_to_qflist\rquickfix\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\ttagsP\0\0\3\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\fluasnip\15extensions\14telescope\frequire÷\n\1\0\n\0<\0Ö\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\b\0005\6\6\0005\a\5\0=\a\a\6=\6\t\0055\6\15\0005\a\r\0005\b\n\0004\t\0\0=\t\v\b4\t\0\0=\t\f\b=\b\14\a=\a\16\0064\a\0\0=\a\17\6=\6\18\5B\3\2\0019\3\19\0'\5\16\0B\3\2\0019\3\19\0'\5\20\0B\3\2\0016\3\21\0003\4\23\0=\4\22\0036\3\21\0003\4\25\0=\4\24\0036\3\21\0003\4\27\0=\4\26\0036\3\21\0003\4\29\0=\4\28\0036\3\21\0003\4\31\0=\4\30\0036\3\21\0003\4!\0=\4 \0036\3\21\0003\4#\0=\4\"\0036\3\21\0003\4%\0=\4$\0035\3&\0006\4'\0009\4(\0049\4)\4'\6\f\0'\a*\0'\b+\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a,\0'\b-\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a.\0'\b/\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a0\0'\b1\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a2\0'\b3\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a4\0'\b5\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a6\0'\b7\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a8\0'\b9\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a:\0'\b;\0\18\t\3\0B\4\5\0012\0\0ÄK\0\1\0!<Cmd>lua TelescopeTags()<CR>\15<leader>ft\31<Cmd>Telescope luasnip<CR>\15<leader>fs%<Cmd>lua TelescopeQuickFix()<CR>\15<leader>fq#<Cmd>lua TelescopeKeyMap()<CR>\15<leader>fm%<Cmd>lua TelescopeLiveGrep()<CR>\15<leader>fl!<Cmd>Telescope help_tags<CR>\15<leader>fh&<Cmd>lua TelescopeFindFiles()<CR>\15<leader>ff,<Cmd>lua TelescopeFindConfigFiles()<CR>\15<leader>fc\28:Telescope file_browser\15<leader>fb\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\0\21TelescopeLuaSnip\0\18TelescopeTags\0\22TelescopeQuickFix\0\20TelescopeKeyMap\0\22TelescopeLiveGrep\0\25TelescopeFileBrowser\0\23TelescopeFindFiles\0\29TelescopeFindConfigFiles\a_G\fluasnip\19load_extension\15extensions\tdash\17file_browser\1\0\0\rmappings\1\0\0\6n\6i\1\0\0\rdefaults\1\0\0\18layout_config\1\0\3\21sorting_strategy\14ascending\20layout_strategy\tflex\ruse_less\1\1\0\1\20prompt_position\btop\nsetup\22telescope.actions\22telescope.builtin\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd harpoon ]]

-- Config for: harpoon
try_loadstring("\27LJ\2\n•\4\0\0\a\0\19\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\17\0'\5\18\0\18\6\0\0B\1\5\1K\0\1\0007:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\15<leader>jm.:lua require(\"harpoon.ui\").nav_prev()<CR>\15<leader>jk.:lua require(\"harpoon.ui\").nav_next()<CR>\15<leader>jj0:lua require(\"harpoon.mark\").add_file()<CR>\15<leader>jf!:Telescope harpoon marks<CR>\15<leader>fj\6n\20nvim_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2\fharpoon\19load_extension\14telescope\frequire\0", "config", "harpoon")

vim.cmd [[ packadd LuaSnip ]]

-- Config for: LuaSnip
try_loadstring("\27LJ\2\n<\0\0\2\1\1\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3Ä-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\19expand_or_jumpC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2ˇˇB\0\2\1K\0\1\0\0¿\tjump\rjumpableM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\18change_choice\18choice_active¬\5\1\0\v\0!\0;6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\4\0009\2\5\0025\4\6\0004\5\0\b9\6\a\0015\a\v\0005\b\t\0004\t\3\0005\n\b\0>\n\1\t=\t\n\b=\b\f\a<\a\6\5=\5\r\4B\2\2\0016\2\14\0009\2\15\0029\2\16\0025\4\17\0'\5\18\0003\6\19\0005\a\20\0B\2\5\0016\2\14\0009\2\15\0029\2\16\0025\4\21\0'\5\22\0003\6\23\0005\a\24\0B\2\5\0016\2\14\0009\2\15\0029\2\16\2'\4\25\0'\5\26\0003\6\27\0B\2\4\0016\2\14\0009\2\15\0029\2\16\2'\4\28\0'\5\29\0'\6\30\0B\2\4\0016\2\31\0'\4 \0B\2\2\0012\0\0ÄK\0\1\0\17luasnip file\nprintM<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>\20<Space><Space>s\6n\0\bc-l\6i\1\0\1\vsilent\2\0\bc-k\1\3\0\0\6i\6s\1\0\1\vsilent\2\0\bc-j\1\3\0\0\6i\6s\bset\vkeymap\bvim\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\22<- Current Choice\fNonTest\15choiceNode\1\0\6\22ext_prio_increase\3\1\18ext_base_prio\3»\1\fhistory\2\17updateevents\30TextChanged, TextChangedI\25store_selection_keys\n<c-s>\24enable_autosnippets\1\15set_config\vconfig\23luasnip.util.types\fluasnip\25smithwebdev.snippets\frequire\0", "config", "LuaSnip")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
