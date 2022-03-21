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
    config = { "\27LJ\2\nM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\18change_choice\18choice_active¿\5\1\0\v\0\28\00056\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\3\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0026\1\0\0'\3\6\0B\1\2\0029\2\a\0009\2\b\0025\4\t\0004\5\0\b9\6\n\0015\a\14\0005\b\f\0004\t\3\0005\n\v\0>\n\1\t=\t\r\b=\b\15\a<\a\6\5=\5\16\4B\2\2\0016\2\17\0009\2\18\0029\2\19\2'\4\20\0'\5\21\0003\6\22\0B\2\4\0016\2\17\0009\2\18\0029\2\19\2'\4\23\0'\5\24\0'\6\25\0B\2\4\0016\2\26\0'\4\27\0B\2\2\0012\0\0ÄK\0\1\0\17luasnip file\nprintM<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>\20<Space><Space>s\6n\0\n<c-l>\6i\bset\vkeymap\bvim\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\22<- Current Choice\fNonTest\15choiceNode\1\0\6\22ext_prio_increase\3\1\18ext_base_prio\3»\1\24enable_autosnippets\1\17updateevents\30TextChanged, TextChangedI\25store_selection_keys\n<c-s>\fhistory\2\15set_config\vconfig\23luasnip.util.types\fluasnip\"luasnip.loaders.from_snipmate\14lazy_load luasnip.loaders.from_vscode\25smithwebdev.snippets\frequire\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["animate.vim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/animate.vim",
    url = "https://github.com/camspiers/animate.vim"
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
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    config = { "\27LJ\2\n•\4\0\0\a\0\19\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\17\0'\5\18\0\18\6\0\0B\1\5\1K\0\1\0007:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\15<leader>jm.:lua require(\"harpoon.ui\").nav_prev()<CR>\15<leader>jk.:lua require(\"harpoon.ui\").nav_next()<CR>\15<leader>jj0:lua require(\"harpoon.mark\").add_file()<CR>\15<leader>jf!:Telescope harpoon marks<CR>\15<leader>fj\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\fharpoon\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/opt/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\ny\0\0\a\0\a\0\n5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\1K\0\1\0\21<cmd>LazyGit<CR>\15<leader>gl\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lens.vim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/lens.vim",
    url = "https://github.com/camspiers/lens.vim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\nì\3\0\0\n\0\15\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1K\0\1\0\1\0\1\tdesc\26Stop Markdown Preview\29:MarkdownPreviewStop<cr>\23<leader><leader>ms\1\0\1\tdesc\26Open Markdown Preview\25:MarkdownPreview<cr>\23<leader><leader>mo\1\0\1\tdesc,Toggle Markdown file in default browser\31:MarkdownPreviewToggle<cr>\23<leader><leader>mm\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["marks.nvim"] = {
    config = { "\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\nsigns\2\21default_mappings\2\nsetup\nmarks\frequire\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentau/marks.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nõ\2\0\0\b\0\v\2+6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\b\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\t\2'\5\n\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2[\0\1\5\0\4\0\r6\1\0\0'\3\1\0B\1\2\2\14\0\1\0X\2\1ÄK\0\1\0006\2\0\0'\4\1\0B\2\2\0029\2\2\0029\4\3\0B\2\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire‘\1\0\1\3\2\6\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ6\1\4\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\5\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\rcomplete\21has_words_before\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\tjump\rjumpable\21select_prev_item\fvisibleÒ\a\1\0\f\0009\0d6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\1B\3\1\0013\3\5\0009\4\6\0009\4\a\4'\6\b\0005\a\n\0004\b\3\0005\t\t\0>\t\1\b=\b\v\a'\b\f\0005\t\14\0004\n\3\0005\v\r\0>\v\1\n=\n\v\tB\4\5\0019\4\6\0005\6\18\0005\a\16\0003\b\15\0=\b\17\a=\a\19\0065\a\23\0009\b\20\0003\n\21\0005\v\22\0B\b\3\2=\b\24\a9\b\20\0003\n\25\0005\v\26\0B\b\3\2=\b\27\a9\b\20\0009\b\28\b)\n¸ˇB\b\2\2=\b\29\a9\b\20\0009\b\28\b)\n\4\0B\b\2\2=\b\30\a9\b\20\0009\b\31\bB\b\1\2=\b \a9\b\20\0009\b!\b5\n$\0009\v\"\0009\v#\v=\v%\nB\b\2\2=\b&\a9\b\20\0009\b'\bB\b\1\2=\b(\a=\a\20\0064\a\b\0005\b)\0>\b\1\a5\b*\0>\b\2\a5\b+\0>\b\3\a5\b,\0>\b\4\a5\b-\0>\b\5\a5\b.\0>\b\6\a5\b/\0>\b\a\a=\a\v\0065\a4\0009\b0\0015\n1\0005\v2\0=\v3\nB\b\2\2=\b5\a5\b6\0=\b7\a=\a8\6B\4\2\0012\0\0ÄK\0\1\0\15formatting\17experimental\1\0\2\16native_menu\1\15ghost_text\1\vformat\1\0\0\tmenu\1\0\a\ttags\v[TAGS]\vbuffer\r[BUFFER]\forgmode\14[ORGMODE]\tpath\v[PATH]\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\fluasnip\v[SNIP]\1\0\2\rmaxwidth\0032\14with_text\1\15cmp_format\1\0\1\tname\forgmode\1\0\1\tname\tpath\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\ttags\1\0\1\tname\fluasnip\14<c-Space>\rcomplete\ajk\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\1\0\0\1\0\1\tname\vbuffer\6/\fsources\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\nsetup\0\tinit\fluasnip\flspkind\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  sniprun = {
    config = { "\27LJ\2\nÊ\1\0\0\b\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0005\a\6\0B\3\4\1\18\3\2\0'\5\4\0'\6\a\0005\a\b\0B\3\4\1K\0\1\0\1\0\1\tdesc\30Runs code block in editor\22:'<,'>SnipRun<CR>\1\0\1\tdesc\30Runs code block in editor\17:SnipRun<CR>\15<leader>sr\rvnoremap\rnnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope-luasnip.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-luasnip.nvim",
    url = "https://github.com/benfowler/telescope-luasnip.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    after = { "harpoon" },
    loaded = true,
    only_config = true
  },
  ["vim-blockle"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-blockle",
    url = "https://github.com/jgdavey/vim-blockle"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-endwise",
    url = "https://github.com/tpope/vim-endwise"
  },
  ["vim-peekaboo"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-peekaboo",
    url = "https://github.com/junegunn/vim-peekaboo"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-rails"] = {
    config = { "\27LJ\2\n’/\0\0\n\0¬\1\0«\0026\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1\18\5\2\0'\a\15\0'\b\16\0005\t\17\0B\5\4\1\18\5\2\0'\a\18\0'\b\19\0005\t\20\0B\5\4\1\18\5\2\0'\a\21\0'\b\22\0005\t\23\0B\5\4\1\18\5\2\0'\a\24\0'\b\25\0005\t\26\0B\5\4\1\18\5\2\0'\a\27\0'\b\28\0005\t\29\0B\5\4\1\18\5\2\0'\a\30\0'\b\31\0005\t \0B\5\4\1\18\5\2\0'\a!\0'\b\"\0005\t#\0B\5\4\1\18\5\2\0'\a$\0'\b%\0005\t&\0B\5\4\1\18\5\2\0'\a'\0'\b(\0005\t)\0B\5\4\1\18\5\2\0'\a*\0'\b+\0005\t,\0B\5\4\1\18\5\2\0'\a-\0'\b.\0005\t/\0B\5\4\1\18\5\2\0'\a0\0'\b1\0005\t2\0B\5\4\1\18\5\2\0'\a3\0'\b4\0005\t5\0B\5\4\1\18\5\2\0'\a6\0'\b7\0005\t8\0B\5\4\1\18\5\2\0'\a9\0'\b:\0005\t;\0B\5\4\1\18\5\2\0'\a<\0'\b=\0005\t>\0B\5\4\1\18\5\2\0'\a?\0'\b@\0005\tA\0B\5\4\1\18\5\2\0'\aB\0'\bC\0005\tD\0B\5\4\1\18\5\2\0'\aE\0'\bF\0005\tG\0B\5\4\1\18\5\2\0'\aH\0'\bI\0005\tJ\0B\5\4\1\18\5\2\0'\aK\0'\bL\0005\tM\0B\5\4\1\18\5\2\0'\aN\0'\bO\0005\tP\0B\5\4\1\18\5\2\0'\aQ\0'\bR\0005\tS\0B\5\4\1\18\5\2\0'\aT\0'\bU\0005\tV\0B\5\4\1\18\5\2\0'\aW\0'\bX\0005\tY\0B\5\4\1\18\5\2\0'\aZ\0'\b[\0B\5\3\1\18\5\2\0'\a\\\0'\b]\0B\5\3\1\18\5\2\0'\a^\0'\b_\0005\t`\0B\5\4\1\18\5\2\0'\aa\0'\bb\0005\tc\0B\5\4\1\18\5\2\0'\ad\0'\be\0005\tf\0B\5\4\1\18\5\2\0'\ag\0'\bh\0005\ti\0B\5\4\1\18\5\2\0'\aj\0'\bk\0B\5\3\1\18\5\2\0'\al\0'\bm\0005\tn\0B\5\4\1\18\5\2\0'\ao\0'\bp\0005\tq\0B\5\4\1\18\5\2\0'\ar\0'\bs\0005\tt\0B\5\4\1\18\5\2\0'\au\0'\bv\0005\tw\0B\5\4\1\18\5\4\0'\ax\0'\by\0B\5\3\1\18\5\2\0'\az\0'\b{\0005\t|\0B\5\4\1\18\5\2\0'\a}\0'\b~\0005\t\0B\5\4\1\18\5\2\0'\aÄ\0'\bÅ\0005\tÇ\0B\5\4\1\18\5\2\0'\aÉ\0'\bÑ\0005\tÖ\0B\5\4\1\18\5\2\0'\aÜ\0'\bá\0B\5\3\1\18\5\2\0'\aà\0'\bâ\0B\5\3\1\18\5\2\0'\aä\0'\bã\0005\tå\0B\5\4\1\18\5\2\0'\aç\0'\bé\0005\tè\0B\5\4\1\18\5\2\0'\aê\0'\bë\0005\tí\0B\5\4\1\18\5\2\0'\aì\0'\bî\0005\tï\0B\5\4\1\18\5\2\0'\añ\0'\bó\0005\tò\0B\5\4\1\18\5\2\0'\aô\0'\bö\0005\tõ\0B\5\4\1\18\5\2\0'\aú\0'\bù\0005\tû\0B\5\4\1\18\5\2\0'\aü\0'\b†\0005\t°\0B\5\4\1\18\5\2\0'\a¢\0'\b£\0005\t§\0B\5\4\1\18\5\2\0'\a•\0'\b¶\0005\tß\0B\5\4\1\18\5\2\0'\a®\0'\b©\0005\t™\0B\5\4\1\18\5\2\0'\a´\0'\b¨\0005\t≠\0B\5\4\1\18\5\2\0'\aÆ\0'\bØ\0005\t∞\0B\5\4\1\18\5\2\0'\a±\0'\b≤\0005\t≥\0B\5\4\1\18\5\2\0'\aÆ\0'\b¥\0005\tµ\0B\5\4\1\18\5\2\0'\a∂\0'\b∑\0005\t∏\0B\5\4\1\18\5\2\0'\aπ\0'\b∫\0005\tª\0B\5\4\1\18\5\2\0'\aº\0'\bΩ\0005\tæ\0B\5\4\1\18\5\2\0'\aø\0'\b¿\0005\t¡\0B\5\4\1K\0\1\0\1\0\1\tdesc\27Rails Generate Command\29:Generate rspec:view<CR>\25<leader><leader>rgRv\1\0\1\tdesc\27Rails Generate Command\31:Generate rspec:system<CR>\25<leader><leader>rgRS\1\0\1\tdesc\27Rails Generate Command!:Generate rspec:scaffold<CR>\25<leader><leader>rgRs\1\0\1\tdesc\27Rails Generate Command :Generate rspec:request<CR>\25<leader><leader>rgRr\1\0\1\tdesc\27Rails Generate Command\30:Generate rspec:model<CR>\1\0\1\tdesc\27Rails Generate Command :Generate rspec:mailbox<CR>\28<leader><leader>rgRmbox\1\0\1\tdesc\27Rails Generate Command\31:Generate rspec:mailer<CR>\25<leader><leader>rgRm\1\0\1\tdesc\27Rails Generate Command\28:Generate rspec:job<CR>\25<leader><leader>rgRj\1\0\1\tdesc\27Rails Generate Command$:Generate rspec:integration<CR>\25<leader><leader>rgRI\1\0\1\tdesc\27Rails Generate Command :Generate rspec:install<CR>\25<leader><leader>rgRi\1\0\1\tdesc\27Rails Generate Command\31:Generate rspec:helper<CR>\25<leader><leader>rgRh\1\0\1\tdesc\27Rails Generate Command\":Generate rspec:generator<CR>\25<leader><leader>rgRg\1\0\1\tdesc\27Rails Generate Command :Generate rspec:feature<CR>\25<leader><leader>rgRf\1\0\1\tdesc\27Rails Generate Command#:Generate rspec:controller<CR>\25<leader><leader>rgRc\1\0\1\tdesc\27Rails Generate Command :Generate rspec:channel<CR>\26<leader><leader>rgRch\1\0\1\tdesc\27Rails Generate Command :Generate devise:views <CR>\25<leader><leader>rgdv\1\0\1\tdesc\27Rails Generate Command&:Generate devise:controllers <CR>\25<leader><leader>rgdc\1\0\1\tdesc\27Rails Generate Command\":Generate devise:install <CR>\25<leader><leader>rgdi\1\0\1\tdesc\27Rails Generate Command#:Generate annotate:install<CR>\25<leader><leader>rgaiw:!ctags -R --languages=Ruby --exclude=.git --exclude=log . $(bundle list --paths) && echo \"tags\" >> .gitignore<CR>\23<leader><leader>rt\17:Preview<CR>\23<leader><leader>rp\1\0\1\tdesc\29Edit Factory File in Tab\23<cmd>RTfactory<CR>\24<leader><leader>rft\1\0\1\tdesc!Edit Factory File in V Split\23<cmd>RVfactory<CR>\24<leader><leader>rfv\1\0\1\tdesc!Edit Factory File in H Split\23<cmd>RSfactory<CR>\24<leader><leader>rfs\1\0\1\tdesc\22Edit Factory File\22<cmd>Rfactory<CR>\23<leader><leader>rf\14:Extract \24<leader><leader>rex\1\0\1\tdesc\29edit relative in v split\16<cmd>RT<CR>\24<leader><leader>ret\1\0\1\tdesc\25edit relative in tab\16<cmd>RV<CR>\24<leader><leader>rev\1\0\1\tdesc\29edit relative in h split\16<cmd>RS<CR>\24<leader><leader>res\1\0\1\tdesc\23edit relative file\16<cmd>RE<CR>\24<leader><leader>ree\15<cmd>R<CR>\23<leader><leader>re\1\0\1\tdesc\30edit alternate in v split\16<cmd>AT<CR>\24<leader><leader>rat\1\0\1\tdesc\28edit alternate in tab},\16<cmd>AV<CR>\24<leader><leader>rav\1\0\1\tdesc\30edit alternate in h split\16<cmd>AS<CR>\24<leader><leader>ras\1\0\1\tdesc\24edit alternate file\16<cmd>AE<CR>\24<leader><leader>rae\15<cmd>A<CR>\23<leader><leader>ra%<cmd>Rails<CR> | :set nowrap<CR>\23<leader><leader>rR\1\0\1\tdesc\27Rails Generate Command\26:Generate task<Space>\24<leader><leader>rgt\1\0\1\tdesc\27Rails Generate Command):Generate scaffold_controller<Space>\25<leader><leader>rgsc\1\0\1\tdesc\27Rails Generate Command\30:Generate scaffold<Space>\24<leader><leader>rgs\1\0\1\tdesc\27Rails Generate Command+:Generate responders_controller<Space>\25<leader><leader>rgrc\1\0\1\tdesc\27Rails Generate Command\30:Generate resource<Space>\24<leader><leader>rgr\1\0\1\tdesc\27Rails Generate Command\31:Generate migration<Space>\26<leader><leader>rgmig\1\0\1\tdesc\27Rails Generate Command\29:Generate mailbox<Space>\27<leader><leader>rgmbox\1\0\1\tdesc\27Rails Generate Command\28:Generate mailer<Space>\27<leader><leader>rgmail\1\0\1\tdesc\27Rails Generate Command\27:Generate model<Space>\24<leader><leader>rgm\1\0\1\tdesc\27Rails Generate Command\30:Generate jbuilder<Space>\25<leader><leader>rgjb\1\0\1\tdesc\27Rails Generate Command\25:Generate job<Space>\24<leader><leader>rgj\1\0\1\tdesc\27Rails Generate Command\28:Generate helper<Space>\24<leader><leader>rgh\1\0\1\tdesc\27Rails Generate Command\29:Generate channel<Space>\25<leader><leader>rgch\1\0\1\tdesc\27Rails Generate Command :Generate controller<Space>\24<leader><leader>rgc\1\0\1\tdesc\27Rails Generate Command\21:Generate<Space>\23<leader><leader>rG\1\0\1\tdesc\26Rails DB:Seed Command\24:!rails db:seed<CR>\25<leader><leader>rdbS\1\0\1\tdesc\27Rails DB:Setup Command\25:!rails db:setup<CR>\25<leader><leader>rdbs\1\0\1\tdesc\27Rails DB:Setup Command\28:!rails db:rollback<CR>\25<leader><leader>rdbr\1\0\1\tdesc\29Rails DB:Migrate Command\27:!rails db:migrate<CR>\25<leader><leader>rdbm\1\0\1\tdesc\29Rails DB:Migrate Command\24:!rails db:drop<CR>\25<leader><leader>rdbd\1\0\1\tdesc\29Rails DB:Migrate Command\26:!rails db:create<CR>\25<leader><leader>rdbc\1\0\1\tdesc\26Bundle Update Command\24:!bundle update<CR>\24<leader><leader>rbu\1\0\1\tdesc\27Bundle Install Command\25:!bundle install<CR>\24<leader><leader>rbi\1\0\1\tdesc\23Bundle Add Command\24:!bundle add<Space>\24<leader><leader>rba\1\0\1\tdesc\22Rails CLI command\19:!rails<Space>\23<leader><leader>rr\1\0\1\tdesc\26Rails Destroy Command\20:Destroy<Space>\23<leader><leader>rD\1\0\1\tdesc&Open Rails Server New Tmux Window\21<cmd>Server!<CR>\23<leader><leader>rs\1\0\1\tdesc'Open Rails Console New Tmux Window\22<cmd>Console!<CR>\23<leader><leader>rc\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-rfactory"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-rfactory",
    url = "https://github.com/christoomey/vim-rfactory"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n◊\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fplugins\1\0\0\fpresets\1\0\a\6z\2\bnav\2\fwindows\2\17text_objects\2\fmotions\2\14operators\2\6g\2\rspelling\1\0\2\fenabled\2\16suggestions\3\20\1\0\2\nmarks\1\14registers\1\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/smith/.local/share/nvim-nightly/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\nì\3\0\0\n\0\15\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1K\0\1\0\1\0\1\tdesc\26Stop Markdown Preview\29:MarkdownPreviewStop<cr>\23<leader><leader>ms\1\0\1\tdesc\26Open Markdown Preview\25:MarkdownPreview<cr>\23<leader><leader>mo\1\0\1\tdesc,Toggle Markdown file in default browser\31:MarkdownPreviewToggle<cr>\23<leader><leader>mm\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0", "config", "markdown-preview.nvim")
time([[Config for markdown-preview.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n≤\1\0\0\5\1\b\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2-\1\0\0009\1\4\0015\3\6\0005\4\5\0>\0\6\4=\4\a\3B\1\2\1K\0\1\0\1¿\17find_command\1\0\1\14previewer\1\1\6\0\0\arg\f--files\f--iglob\n!.git\r--hidden\15find_files\31$HOME/.config/nvim-nightly\vexpand\afn\bvimq\0\0\4\1\4\0\a-\0\0\0009\0\0\0005\2\2\0005\3\1\0=\3\3\2B\0\2\1K\0\1\0\1¿\17find_command\1\0\1\14previewer\1\1\6\0\0\arg\f--files\f--iglob\n!.git\r--hidden\15find_files*\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\17file_browser'\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\14live_grep%\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\fkeymapsm\0\0\6\2\b\0\f-\0\0\0009\0\0\0005\2\6\0005\3\4\0005\4\2\0-\5\1\0009\5\1\5=\5\3\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\1¿\2¿\rmappings\1\0\0\6i\1\0\0\n<C-q>\1\0\0\19send_to_qflist\rquickfix\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\ttagsP\0\0\3\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\fluasnip\15extensions\14telescope\frequire÷\n\1\0\n\0<\0Ö\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\b\0005\6\6\0005\a\5\0=\a\a\6=\6\t\0055\6\15\0005\a\r\0005\b\n\0004\t\0\0=\t\v\b4\t\0\0=\t\f\b=\b\14\a=\a\16\0064\a\0\0=\a\17\6=\6\18\5B\3\2\0019\3\19\0'\5\16\0B\3\2\0019\3\19\0'\5\20\0B\3\2\0016\3\21\0003\4\23\0=\4\22\0036\3\21\0003\4\25\0=\4\24\0036\3\21\0003\4\27\0=\4\26\0036\3\21\0003\4\29\0=\4\28\0036\3\21\0003\4\31\0=\4\30\0036\3\21\0003\4!\0=\4 \0036\3\21\0003\4#\0=\4\"\0036\3\21\0003\4%\0=\4$\0035\3&\0006\4'\0009\4(\0049\4)\4'\6\f\0'\a*\0'\b+\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a,\0'\b-\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a.\0'\b/\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a0\0'\b1\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a2\0'\b3\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a4\0'\b5\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a6\0'\b7\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a8\0'\b9\0\18\t\3\0B\4\5\0016\4'\0009\4(\0049\4)\4'\6\f\0'\a:\0'\b;\0\18\t\3\0B\4\5\0012\0\0ÄK\0\1\0!<Cmd>lua TelescopeTags()<CR>\15<leader>ft\31<Cmd>Telescope luasnip<CR>\15<leader>fs%<Cmd>lua TelescopeQuickFix()<CR>\15<leader>fq#<Cmd>lua TelescopeKeyMap()<CR>\15<leader>fm%<Cmd>lua TelescopeLiveGrep()<CR>\15<leader>fl!<Cmd>Telescope help_tags<CR>\15<leader>fh&<Cmd>lua TelescopeFindFiles()<CR>\15<leader>ff,<Cmd>lua TelescopeFindConfigFiles()<CR>\15<leader>fc\28:Telescope file_browser\15<leader>fb\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0\21TelescopeLuaSnip\0\18TelescopeTags\0\22TelescopeQuickFix\0\20TelescopeKeyMap\0\22TelescopeLiveGrep\0\25TelescopeFileBrowser\0\23TelescopeFindFiles\0\29TelescopeFindConfigFiles\a_G\fluasnip\19load_extension\15extensions\tdash\17file_browser\1\0\0\rmappings\1\0\0\6n\6i\1\0\0\rdefaults\1\0\0\18layout_config\1\0\3\21sorting_strategy\14ascending\ruse_less\1\20layout_strategy\tflex\1\0\1\20prompt_position\btop\nsetup\22telescope.actions\22telescope.builtin\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\nsigns\2\21default_mappings\2\nsetup\nmarks\frequire\0", "config", "marks.nvim")
time([[Config for marks.nvim]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\a\0\a\0\n5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\1K\0\1\0\21<cmd>LazyGit<CR>\15<leader>gl\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: vim-rails
time([[Config for vim-rails]], true)
try_loadstring("\27LJ\2\n’/\0\0\n\0¬\1\0«\0026\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1\18\5\2\0'\a\15\0'\b\16\0005\t\17\0B\5\4\1\18\5\2\0'\a\18\0'\b\19\0005\t\20\0B\5\4\1\18\5\2\0'\a\21\0'\b\22\0005\t\23\0B\5\4\1\18\5\2\0'\a\24\0'\b\25\0005\t\26\0B\5\4\1\18\5\2\0'\a\27\0'\b\28\0005\t\29\0B\5\4\1\18\5\2\0'\a\30\0'\b\31\0005\t \0B\5\4\1\18\5\2\0'\a!\0'\b\"\0005\t#\0B\5\4\1\18\5\2\0'\a$\0'\b%\0005\t&\0B\5\4\1\18\5\2\0'\a'\0'\b(\0005\t)\0B\5\4\1\18\5\2\0'\a*\0'\b+\0005\t,\0B\5\4\1\18\5\2\0'\a-\0'\b.\0005\t/\0B\5\4\1\18\5\2\0'\a0\0'\b1\0005\t2\0B\5\4\1\18\5\2\0'\a3\0'\b4\0005\t5\0B\5\4\1\18\5\2\0'\a6\0'\b7\0005\t8\0B\5\4\1\18\5\2\0'\a9\0'\b:\0005\t;\0B\5\4\1\18\5\2\0'\a<\0'\b=\0005\t>\0B\5\4\1\18\5\2\0'\a?\0'\b@\0005\tA\0B\5\4\1\18\5\2\0'\aB\0'\bC\0005\tD\0B\5\4\1\18\5\2\0'\aE\0'\bF\0005\tG\0B\5\4\1\18\5\2\0'\aH\0'\bI\0005\tJ\0B\5\4\1\18\5\2\0'\aK\0'\bL\0005\tM\0B\5\4\1\18\5\2\0'\aN\0'\bO\0005\tP\0B\5\4\1\18\5\2\0'\aQ\0'\bR\0005\tS\0B\5\4\1\18\5\2\0'\aT\0'\bU\0005\tV\0B\5\4\1\18\5\2\0'\aW\0'\bX\0005\tY\0B\5\4\1\18\5\2\0'\aZ\0'\b[\0B\5\3\1\18\5\2\0'\a\\\0'\b]\0B\5\3\1\18\5\2\0'\a^\0'\b_\0005\t`\0B\5\4\1\18\5\2\0'\aa\0'\bb\0005\tc\0B\5\4\1\18\5\2\0'\ad\0'\be\0005\tf\0B\5\4\1\18\5\2\0'\ag\0'\bh\0005\ti\0B\5\4\1\18\5\2\0'\aj\0'\bk\0B\5\3\1\18\5\2\0'\al\0'\bm\0005\tn\0B\5\4\1\18\5\2\0'\ao\0'\bp\0005\tq\0B\5\4\1\18\5\2\0'\ar\0'\bs\0005\tt\0B\5\4\1\18\5\2\0'\au\0'\bv\0005\tw\0B\5\4\1\18\5\4\0'\ax\0'\by\0B\5\3\1\18\5\2\0'\az\0'\b{\0005\t|\0B\5\4\1\18\5\2\0'\a}\0'\b~\0005\t\0B\5\4\1\18\5\2\0'\aÄ\0'\bÅ\0005\tÇ\0B\5\4\1\18\5\2\0'\aÉ\0'\bÑ\0005\tÖ\0B\5\4\1\18\5\2\0'\aÜ\0'\bá\0B\5\3\1\18\5\2\0'\aà\0'\bâ\0B\5\3\1\18\5\2\0'\aä\0'\bã\0005\tå\0B\5\4\1\18\5\2\0'\aç\0'\bé\0005\tè\0B\5\4\1\18\5\2\0'\aê\0'\bë\0005\tí\0B\5\4\1\18\5\2\0'\aì\0'\bî\0005\tï\0B\5\4\1\18\5\2\0'\añ\0'\bó\0005\tò\0B\5\4\1\18\5\2\0'\aô\0'\bö\0005\tõ\0B\5\4\1\18\5\2\0'\aú\0'\bù\0005\tû\0B\5\4\1\18\5\2\0'\aü\0'\b†\0005\t°\0B\5\4\1\18\5\2\0'\a¢\0'\b£\0005\t§\0B\5\4\1\18\5\2\0'\a•\0'\b¶\0005\tß\0B\5\4\1\18\5\2\0'\a®\0'\b©\0005\t™\0B\5\4\1\18\5\2\0'\a´\0'\b¨\0005\t≠\0B\5\4\1\18\5\2\0'\aÆ\0'\bØ\0005\t∞\0B\5\4\1\18\5\2\0'\a±\0'\b≤\0005\t≥\0B\5\4\1\18\5\2\0'\aÆ\0'\b¥\0005\tµ\0B\5\4\1\18\5\2\0'\a∂\0'\b∑\0005\t∏\0B\5\4\1\18\5\2\0'\aπ\0'\b∫\0005\tª\0B\5\4\1\18\5\2\0'\aº\0'\bΩ\0005\tæ\0B\5\4\1\18\5\2\0'\aø\0'\b¿\0005\t¡\0B\5\4\1K\0\1\0\1\0\1\tdesc\27Rails Generate Command\29:Generate rspec:view<CR>\25<leader><leader>rgRv\1\0\1\tdesc\27Rails Generate Command\31:Generate rspec:system<CR>\25<leader><leader>rgRS\1\0\1\tdesc\27Rails Generate Command!:Generate rspec:scaffold<CR>\25<leader><leader>rgRs\1\0\1\tdesc\27Rails Generate Command :Generate rspec:request<CR>\25<leader><leader>rgRr\1\0\1\tdesc\27Rails Generate Command\30:Generate rspec:model<CR>\1\0\1\tdesc\27Rails Generate Command :Generate rspec:mailbox<CR>\28<leader><leader>rgRmbox\1\0\1\tdesc\27Rails Generate Command\31:Generate rspec:mailer<CR>\25<leader><leader>rgRm\1\0\1\tdesc\27Rails Generate Command\28:Generate rspec:job<CR>\25<leader><leader>rgRj\1\0\1\tdesc\27Rails Generate Command$:Generate rspec:integration<CR>\25<leader><leader>rgRI\1\0\1\tdesc\27Rails Generate Command :Generate rspec:install<CR>\25<leader><leader>rgRi\1\0\1\tdesc\27Rails Generate Command\31:Generate rspec:helper<CR>\25<leader><leader>rgRh\1\0\1\tdesc\27Rails Generate Command\":Generate rspec:generator<CR>\25<leader><leader>rgRg\1\0\1\tdesc\27Rails Generate Command :Generate rspec:feature<CR>\25<leader><leader>rgRf\1\0\1\tdesc\27Rails Generate Command#:Generate rspec:controller<CR>\25<leader><leader>rgRc\1\0\1\tdesc\27Rails Generate Command :Generate rspec:channel<CR>\26<leader><leader>rgRch\1\0\1\tdesc\27Rails Generate Command :Generate devise:views <CR>\25<leader><leader>rgdv\1\0\1\tdesc\27Rails Generate Command&:Generate devise:controllers <CR>\25<leader><leader>rgdc\1\0\1\tdesc\27Rails Generate Command\":Generate devise:install <CR>\25<leader><leader>rgdi\1\0\1\tdesc\27Rails Generate Command#:Generate annotate:install<CR>\25<leader><leader>rgaiw:!ctags -R --languages=Ruby --exclude=.git --exclude=log . $(bundle list --paths) && echo \"tags\" >> .gitignore<CR>\23<leader><leader>rt\17:Preview<CR>\23<leader><leader>rp\1\0\1\tdesc\29Edit Factory File in Tab\23<cmd>RTfactory<CR>\24<leader><leader>rft\1\0\1\tdesc!Edit Factory File in V Split\23<cmd>RVfactory<CR>\24<leader><leader>rfv\1\0\1\tdesc!Edit Factory File in H Split\23<cmd>RSfactory<CR>\24<leader><leader>rfs\1\0\1\tdesc\22Edit Factory File\22<cmd>Rfactory<CR>\23<leader><leader>rf\14:Extract \24<leader><leader>rex\1\0\1\tdesc\29edit relative in v split\16<cmd>RT<CR>\24<leader><leader>ret\1\0\1\tdesc\25edit relative in tab\16<cmd>RV<CR>\24<leader><leader>rev\1\0\1\tdesc\29edit relative in h split\16<cmd>RS<CR>\24<leader><leader>res\1\0\1\tdesc\23edit relative file\16<cmd>RE<CR>\24<leader><leader>ree\15<cmd>R<CR>\23<leader><leader>re\1\0\1\tdesc\30edit alternate in v split\16<cmd>AT<CR>\24<leader><leader>rat\1\0\1\tdesc\28edit alternate in tab},\16<cmd>AV<CR>\24<leader><leader>rav\1\0\1\tdesc\30edit alternate in h split\16<cmd>AS<CR>\24<leader><leader>ras\1\0\1\tdesc\24edit alternate file\16<cmd>AE<CR>\24<leader><leader>rae\15<cmd>A<CR>\23<leader><leader>ra%<cmd>Rails<CR> | :set nowrap<CR>\23<leader><leader>rR\1\0\1\tdesc\27Rails Generate Command\26:Generate task<Space>\24<leader><leader>rgt\1\0\1\tdesc\27Rails Generate Command):Generate scaffold_controller<Space>\25<leader><leader>rgsc\1\0\1\tdesc\27Rails Generate Command\30:Generate scaffold<Space>\24<leader><leader>rgs\1\0\1\tdesc\27Rails Generate Command+:Generate responders_controller<Space>\25<leader><leader>rgrc\1\0\1\tdesc\27Rails Generate Command\30:Generate resource<Space>\24<leader><leader>rgr\1\0\1\tdesc\27Rails Generate Command\31:Generate migration<Space>\26<leader><leader>rgmig\1\0\1\tdesc\27Rails Generate Command\29:Generate mailbox<Space>\27<leader><leader>rgmbox\1\0\1\tdesc\27Rails Generate Command\28:Generate mailer<Space>\27<leader><leader>rgmail\1\0\1\tdesc\27Rails Generate Command\27:Generate model<Space>\24<leader><leader>rgm\1\0\1\tdesc\27Rails Generate Command\30:Generate jbuilder<Space>\25<leader><leader>rgjb\1\0\1\tdesc\27Rails Generate Command\25:Generate job<Space>\24<leader><leader>rgj\1\0\1\tdesc\27Rails Generate Command\28:Generate helper<Space>\24<leader><leader>rgh\1\0\1\tdesc\27Rails Generate Command\29:Generate channel<Space>\25<leader><leader>rgch\1\0\1\tdesc\27Rails Generate Command :Generate controller<Space>\24<leader><leader>rgc\1\0\1\tdesc\27Rails Generate Command\21:Generate<Space>\23<leader><leader>rG\1\0\1\tdesc\26Rails DB:Seed Command\24:!rails db:seed<CR>\25<leader><leader>rdbS\1\0\1\tdesc\27Rails DB:Setup Command\25:!rails db:setup<CR>\25<leader><leader>rdbs\1\0\1\tdesc\27Rails DB:Setup Command\28:!rails db:rollback<CR>\25<leader><leader>rdbr\1\0\1\tdesc\29Rails DB:Migrate Command\27:!rails db:migrate<CR>\25<leader><leader>rdbm\1\0\1\tdesc\29Rails DB:Migrate Command\24:!rails db:drop<CR>\25<leader><leader>rdbd\1\0\1\tdesc\29Rails DB:Migrate Command\26:!rails db:create<CR>\25<leader><leader>rdbc\1\0\1\tdesc\26Bundle Update Command\24:!bundle update<CR>\24<leader><leader>rbu\1\0\1\tdesc\27Bundle Install Command\25:!bundle install<CR>\24<leader><leader>rbi\1\0\1\tdesc\23Bundle Add Command\24:!bundle add<Space>\24<leader><leader>rba\1\0\1\tdesc\22Rails CLI command\19:!rails<Space>\23<leader><leader>rr\1\0\1\tdesc\26Rails Destroy Command\20:Destroy<Space>\23<leader><leader>rD\1\0\1\tdesc&Open Rails Server New Tmux Window\21<cmd>Server!<CR>\23<leader><leader>rs\1\0\1\tdesc'Open Rails Console New Tmux Window\22<cmd>Console!<CR>\23<leader><leader>rc\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0", "config", "vim-rails")
time([[Config for vim-rails]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\nÊ\1\0\0\b\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0005\a\6\0B\3\4\1\18\3\2\0'\5\4\0'\6\a\0005\a\b\0B\3\4\1K\0\1\0\1\0\1\tdesc\30Runs code block in editor\22:'<,'>SnipRun<CR>\1\0\1\tdesc\30Runs code block in editor\17:SnipRun<CR>\15<leader>sr\rvnoremap\rnnoremap\27smithwebdev.core.utils\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nõ\2\0\0\b\0\v\2+6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\b\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\t\2'\5\n\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2[\0\1\5\0\4\0\r6\1\0\0'\3\1\0B\1\2\2\14\0\1\0X\2\1ÄK\0\1\0006\2\0\0'\4\1\0B\2\2\0029\2\2\0029\4\3\0B\2\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire‘\1\0\1\3\2\6\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ6\1\4\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\5\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\rcomplete\21has_words_before\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\tjump\rjumpable\21select_prev_item\fvisibleÒ\a\1\0\f\0009\0d6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\1B\3\1\0013\3\5\0009\4\6\0009\4\a\4'\6\b\0005\a\n\0004\b\3\0005\t\t\0>\t\1\b=\b\v\a'\b\f\0005\t\14\0004\n\3\0005\v\r\0>\v\1\n=\n\v\tB\4\5\0019\4\6\0005\6\18\0005\a\16\0003\b\15\0=\b\17\a=\a\19\0065\a\23\0009\b\20\0003\n\21\0005\v\22\0B\b\3\2=\b\24\a9\b\20\0003\n\25\0005\v\26\0B\b\3\2=\b\27\a9\b\20\0009\b\28\b)\n¸ˇB\b\2\2=\b\29\a9\b\20\0009\b\28\b)\n\4\0B\b\2\2=\b\30\a9\b\20\0009\b\31\bB\b\1\2=\b \a9\b\20\0009\b!\b5\n$\0009\v\"\0009\v#\v=\v%\nB\b\2\2=\b&\a9\b\20\0009\b'\bB\b\1\2=\b(\a=\a\20\0064\a\b\0005\b)\0>\b\1\a5\b*\0>\b\2\a5\b+\0>\b\3\a5\b,\0>\b\4\a5\b-\0>\b\5\a5\b.\0>\b\6\a5\b/\0>\b\a\a=\a\v\0065\a4\0009\b0\0015\n1\0005\v2\0=\v3\nB\b\2\2=\b5\a5\b6\0=\b7\a=\a8\6B\4\2\0012\0\0ÄK\0\1\0\15formatting\17experimental\1\0\2\16native_menu\1\15ghost_text\1\vformat\1\0\0\tmenu\1\0\a\ttags\v[TAGS]\vbuffer\r[BUFFER]\forgmode\14[ORGMODE]\tpath\v[PATH]\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\fluasnip\v[SNIP]\1\0\2\rmaxwidth\0032\14with_text\1\15cmp_format\1\0\1\tname\forgmode\1\0\1\tname\tpath\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\ttags\1\0\1\tname\fluasnip\14<c-Space>\rcomplete\ajk\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\1\0\0\1\0\1\tname\vbuffer\6/\fsources\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\nsetup\0\tinit\fluasnip\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\18change_choice\18choice_active¿\5\1\0\v\0\28\00056\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\3\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0026\1\0\0'\3\6\0B\1\2\0029\2\a\0009\2\b\0025\4\t\0004\5\0\b9\6\n\0015\a\14\0005\b\f\0004\t\3\0005\n\v\0>\n\1\t=\t\r\b=\b\15\a<\a\6\5=\5\16\4B\2\2\0016\2\17\0009\2\18\0029\2\19\2'\4\20\0'\5\21\0003\6\22\0B\2\4\0016\2\17\0009\2\18\0029\2\19\2'\4\23\0'\5\24\0'\6\25\0B\2\4\0016\2\26\0'\4\27\0B\2\2\0012\0\0ÄK\0\1\0\17luasnip file\nprintM<cmd>source ~/.config/nvim-nightly/lua/smithwebdev/snippets/init.lua<CR>\20<Space><Space>s\6n\0\n<c-l>\6i\bset\vkeymap\bvim\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\22<- Current Choice\fNonTest\15choiceNode\1\0\6\22ext_prio_increase\3\1\18ext_base_prio\3»\1\24enable_autosnippets\1\17updateevents\30TextChanged, TextChangedI\25store_selection_keys\n<c-s>\fhistory\2\15set_config\vconfig\23luasnip.util.types\fluasnip\"luasnip.loaders.from_snipmate\14lazy_load luasnip.loaders.from_vscode\25smithwebdev.snippets\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n◊\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fplugins\1\0\0\fpresets\1\0\a\6z\2\bnav\2\fwindows\2\17text_objects\2\fmotions\2\14operators\2\6g\2\rspelling\1\0\2\fenabled\2\16suggestions\3\20\1\0\2\nmarks\1\14registers\1\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd harpoon ]]

-- Config for: harpoon
try_loadstring("\27LJ\2\n•\4\0\0\a\0\19\00006\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\v\0'\5\f\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\r\0'\5\14\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\15\0'\5\16\0\18\6\0\0B\1\5\0016\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\17\0'\5\18\0\18\6\0\0B\1\5\1K\0\1\0007:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\15<leader>jm.:lua require(\"harpoon.ui\").nav_prev()<CR>\15<leader>jk.:lua require(\"harpoon.ui\").nav_next()<CR>\15<leader>jj0:lua require(\"harpoon.mark\").add_file()<CR>\15<leader>jf!:Telescope harpoon marks<CR>\15<leader>fj\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\fharpoon\19load_extension\14telescope\frequire\0", "config", "harpoon")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
