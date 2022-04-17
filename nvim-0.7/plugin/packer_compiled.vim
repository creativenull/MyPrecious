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
    config = { "\27LJ\2\nM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\18change_choice\18choice_active«\6\1\0\v\0#\0@6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0B\0\2\0016\0\0\0'\2\a\0B\0\2\0026\1\0\0'\3\b\0B\1\2\0029\2\t\0009\2\n\0025\4\v\0004\5\0\b9\6\f\0015\a\16\0005\b\14\0004\t\3\0005\n\r\0>\n\1\t=\t\15\b=\b\17\a<\a\6\5=\5\18\4B\2\2\0019\2\19\0'\4\20\0005\5\21\0B\2\3\0019\2\19\0'\4\22\0005\5\23\0B\2\3\0016\2\24\0009\2\25\0029\2\26\2'\4\27\0'\5\28\0003\6\29\0B\2\4\0016\2\24\0009\2\25\0029\2\26\2'\4\30\0'\5\31\0'\6 \0B\2\4\0016\2!\0'\4\"\0B\2\2\0012\0\0ÄK\0\1\0\17luasnip file\nprintJ<cmd>lua require('luasnip.loaders.from_lua').edit_snippet_files()<CR>\21<Space><Space>se\6n\0\n<c-l>\6i\bset\vkeymap\bvim\1\2\0\0\6_\ball\1\2\0\0\thtml\truby\20filetype_extend\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\22<- Current Choice\fNonTest\15choiceNode\1\0\6\25store_selection_keys\n<c-s>\24enable_autosnippets\1\22ext_prio_increase\3\1\18ext_base_prio\3»\1\fhistory\2\17updateevents\30TextChanged, TextChangedI\15set_config\vconfig\23luasnip.util.types\fluasnip\1\0\1\npaths'~/.config/nvim-nightly/luasnippets\tload\29luasnip.loaders.from_lua\"luasnip.loaders.from_snipmate\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["animate.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/animate.vim",
    url = "https://github.com/camspiers/animate.vim"
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
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
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
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
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
  ["cmp-pandoc-references"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-pandoc-references",
    url = "https://github.com/jc-doyle/cmp-pandoc-references"
  },
  ["cmp-pandoc.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/cmp-pandoc.nvim",
    url = "https://github.com/aspeddro/cmp-pandoc.nvim"
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
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    config = { "\27LJ\2\n∫\5\0\0\v\0\25\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0009\3\a\0009\4\b\0009\5\t\0\18\6\2\0'\b\n\0'\t\v\0005\n\f\0B\6\4\1\18\6\2\0'\b\r\0'\t\14\0005\n\15\0B\6\4\1\18\6\2\0'\b\16\0'\t\17\0005\n\18\0B\6\4\1\18\6\2\0'\b\19\0'\t\20\0005\n\21\0B\6\4\1\18\6\2\0'\b\22\0'\t\23\0005\n\24\0B\6\4\1K\0\1\0\1\0\1\tdesc\27View all project marks7:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\15<leader>jm\1\0\1\tdesc\31Navigates to previous mark.:lua require(\"harpoon.ui\").nav_prev()<CR>\15<leader>jk\1\0\1\tdesc\27Navigates to next mark.:lua require(\"harpoon.ui\").nav_next()<CR>\15<leader>jj\1\0\1\tdesc Mark Files to revisit later0:lua require(\"harpoon.mark\").add_file()<CR>\15<leader>jf\1\0\1\tdesc\23Show harpoon marks!:Telescope harpoon marks<CR>\15<leader>fj\rvnoremap\rtnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\fharpoon\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/opt/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\ny\0\0\a\0\a\0\n5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\1K\0\1\0\21<cmd>LazyGit<CR>\15<leader>gl\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lens.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lens.vim",
    url = "https://github.com/camspiers/lens.vim"
  },
  ["lir-bookmark.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lir-bookmark.nvim",
    url = "https://github.com/tamago324/lir-bookmark.nvim"
  },
  ["lir.nvim"] = {
    config = { "\27LJ\2\n‰\1\0\0\a\0\v\0\0246\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0'\4\4\0'\5\5\0B\0\5\0016\0\0\0009\0\1\0009\0\6\0004\2\3\0005\3\n\0006\4\0\0009\4\a\0049\4\b\4'\6\t\0B\4\2\2>\4\1\3>\3\1\2+\3\1\0004\4\0\0B\0\4\1K\0\1\0\1\3\0\0\0\vNormal\b%:p\vexpand\afn\14nvim_echo=:<C-u>lua require\"lir.mark.actions\".toggle_mark(\"v\")<CR>\6J\6x\24nvim_buf_set_keymap\bapi\bvimG\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\2¿\14normal! j\bcmd\bvim\16toggle_markë\b\1\0\15\0D\0i6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0026\4\0\0'\6\5\0B\4\2\0029\4\6\0045\6\a\0005\a\b\0005\b\t\0=\b\n\a=\a\v\0063\a\f\0=\a\r\0065\a\15\0009\b\14\0=\b\16\a9\b\14\0=\b\17\a9\b\18\0=\b\19\a9\b\20\0=\b\21\a9\b\22\0=\b\23\a9\b\24\0=\b\25\a9\b\26\0=\b\27\a9\b\28\0=\b\29\a9\b\30\0=\b\31\a9\b \0=\b!\a9\b\"\0=\b#\a9\b$\0=\b%\a9\b&\0=\b'\a9\b(\0=\b)\a3\b*\0=\b+\a9\b,\3=\b-\a9\b.\3=\b/\a9\b0\3=\b1\a6\b\0\0'\n\2\0B\b\2\0029\b2\b=\b3\a6\b\0\0'\n\2\0B\b\2\0029\b4\b=\b5\a=\a6\6B\4\2\0016\4\0\0'\0067\0B\4\2\0029\4\6\0045\0068\0005\a9\0009\b\14\1=\b\16\a9\b\18\1=\b\19\a9\b\20\1=\b\21\a9\b\22\1=\b\23\a9\b:\1=\b\17\a=\a6\6B\4\2\0016\4\0\0'\6;\0B\4\2\0029\5<\0049\6=\0049\a>\0049\b?\0049\t@\4\18\n\6\0'\fA\0'\rB\0005\14C\0B\n\4\0012\0\0ÄK\0\1\0\1\0\1\tdesc%Toggle floating directory window):lua require\"lir.float\".toggle()<CR>\22<leader><leader>f\rvnoremap\rtnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\ropen_lir\1\0\0\1\0\1\18bookmark_path\20~/.lir_bookmark\17lir.bookmark\rmappings\aba\badd\6B\tlist\6p\npaste\6x\bcut\6c\tcopy\6J\0\6d\vdelete\6.\23toddle_show_hidden\6Y\14yank_path\6C\acd\6r\vrename\6a\fnewfile\6A\nmkdir\6q\tquit\t<BS>\aup\6t\ftabedit\6\\\vvsplit\6-\nsplit\t<CR>\6e\1\0\0\tedit\fon_init\0\nfloat\18curdir_window\1\0\2\venable\1\22highlight_dirname\1\1\0\1\rwinblend\3\0\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\2\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\25lir.bookmark.actions\16lir.actions\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lir.nvim",
    url = "https://github.com/tamago324/lir.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\ní\6\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3B\1\2\1K\0\1\0\24server_filetype_map\25rename_output_qflist\1\0\2\venable\1\21auto_open_qflist\1\23rename_action_keys\1\0\2\texec\t<CR>\tquit\n<C-c>\21code_action_keys\1\0\2\texec\t<CR>\tquit\6q\23finder_action_keys\1\0\6\vvsplit\6v\tquit\6q\nsplit\6s\topen\6o\14scroll_up\n<C-b>\16scroll_down\n<C-f>\23code_action_prompt\1\0\4\venable\2\tsign\2\18sign_priority\3(\17virtual_text\2\1\0\17\29diagnostic_prefix_format\t%d. \22max_preview_lines\3\n\26finder_reference_icon\nÔåë  \27finder_definition_icon\nÔåë  \21code_action_icon\tÔ†¥ \27diagnostic_header_icon\v ÔÜà  \15infor_sign\bÔëâ\ndebug\1\14hint_sign\bÔ†µ\21highlight_prefix\1\14warn_sign\bÔî©\30diagnostic_message_format\n%m %c\15error_sign\bÔôô\29use_saga_diagnostic_sign\2\25rename_prompt_prefix\b‚û§\17border_style\vsingle\28definition_preview_icon\nÔî∏  \nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lush.nvim"] = {
    config = { "\27LJ\2\nﬂ\1\0\0\v\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0009\5\6\0\18\6\2\0'\b\a\0'\t\b\0005\n\t\0B\6\4\1K\0\1\0\1\0\1\tdesc'Overview of Lush creation features\27:LushRunQuickstart<CR>\23<leader><leader>cs\rvnoremap\rtnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\nì\3\0\0\n\0\15\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1K\0\1\0\1\0\1\tdesc\26Stop Markdown Preview\29:MarkdownPreviewStop<cr>\23<leader><leader>ms\1\0\1\tdesc\26Open Markdown Preview\25:MarkdownPreview<cr>\23<leader><leader>mo\1\0\1\tdesc,Toggle Markdown file in default browser\31:MarkdownPreviewToggle<cr>\23<leader><leader>mm\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["marks.nvim"] = {
    config = { "\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\21default_mappings\2\nsigns\2\nsetup\nmarks\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentau/marks.nvim"
  },
  ["nabla.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nabla.nvim",
    url = "https://github.com/jbyuki/nabla.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n™\2\0\0\n\0\15\0\0256\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\1\18\4\2\0009\2\4\2'\5\5\0009\6\6\0005\b\b\0005\t\a\0=\t\t\bB\6\2\0A\2\2\0016\2\0\0'\4\n\0B\2\2\0029\2\v\0025\4\r\0005\5\f\0=\5\14\4B\2\2\1K\0\1\0\21disable_filetype\1\0\0\1\5\0\0\20TelescopePrompt\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    loaded = true,
    only_config = true
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nî\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\20DEFAULT_OPTIONS\1\0\0\1\0\b\bRGB\2\vcss_fn\2\bcss\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n–\2\0\0\v\0\26\0\0316\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\24\0005\4\22\0005\5\a\0005\6\4\0006\a\5\0=\a\6\6=\6\b\0055\6\n\0005\a\t\0=\a\v\6=\6\f\0055\6\17\0006\a\r\0009\a\14\a9\a\15\a'\t\16\0+\n\2\0B\a\3\2=\a\18\6=\6\19\0055\6\20\0=\6\21\5=\5\23\4=\4\25\3B\1\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\bvim\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\tpath\17runtime_path\1\0\1\fversion\vLuaJIT\nsetup\15solargraph\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÕ\5\0\0\6\0'\00056\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\0035\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\18\0005\4\16\0004\5\0\0=\5\17\4=\4\19\0035\4\20\0004\5\0\0=\5\21\0044\5\0\0=\5\22\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\4=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\17\3=\3 \2B\0\2\0016\0!\0009\0\"\0'\1$\0=\1#\0006\0!\0009\0\"\0'\1&\0=\1%\0K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\17textsubjects\1\0\1\venable\2\16textobjects\tmove\22goto_previous_end\24goto_previous_start\18goto_next_end\20goto_next_start\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\14swap_next\1\0\1\venable\2\vselect\1\0\0\fkeymaps\1\0\2\venable\2\14lookahead\2\fendwise\1\0\1\venable\2\14highlight&additional_vim_regex_highlighting\1\2\0\0\borg\fdisable\1\2\0\0\borg\1\0\1\venable\2\vindent\1\0\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\a\0\0\blua\truby\thtml\bcss\15javascript\nquery\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  orgmode = {
    config = { "\27LJ\2\nÜ\1\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0005\3\4\0004\4\0\0=\4\5\3B\1\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\5\nsetup\21setup_ts_grammar\forgmode\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  sniprun = {
    config = { "\27LJ\2\nÊ\1\0\0\b\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0005\a\6\0B\3\4\1\18\3\2\0'\5\4\0'\6\a\0005\a\b\0B\3\4\1K\0\1\0\1\0\1\tdesc\30Runs code block in editor\22:'<,'>SnipRun<CR>\1\0\1\tdesc\30Runs code block in editor\17:SnipRun<CR>\15<leader>sr\rvnoremap\rnnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["statusline.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/statusline.lua",
    url = "https://github.com/beauwilliams/statusline.lua"
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
  ["twilight.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-blockle"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-blockle",
    url = "https://github.com/jgdavey/vim-blockle"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-endwise",
    url = "https://github.com/tpope/vim-endwise"
  },
  ["vim-exchange"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-exchange",
    url = "https://github.com/tommcdo/vim-exchange"
  },
  ["vim-mkdir"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-mkdir",
    url = "https://github.com/pbrisbin/vim-mkdir"
  },
  ["vim-peekaboo"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-peekaboo",
    url = "https://github.com/junegunn/vim-peekaboo"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-rails"] = {
    config = { "\27LJ\2\n∆6\0\0\n\0”\1\0‚\0026\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1\18\5\2\0'\a\15\0'\b\16\0005\t\17\0B\5\4\1\18\5\2\0'\a\18\0'\b\19\0005\t\20\0B\5\4\1\18\5\2\0'\a\21\0'\b\22\0005\t\23\0B\5\4\1\18\5\2\0'\a\24\0'\b\25\0005\t\26\0B\5\4\1\18\5\2\0'\a\27\0'\b\28\0005\t\29\0B\5\4\1\18\5\2\0'\a\30\0'\b\31\0005\t \0B\5\4\1\18\5\2\0'\a!\0'\b\"\0005\t#\0B\5\4\1\18\5\2\0'\a$\0'\b%\0005\t&\0B\5\4\1\18\5\2\0'\a'\0'\b(\0005\t)\0B\5\4\1\18\5\2\0'\a*\0'\b+\0005\t,\0B\5\4\1\18\5\2\0'\a-\0'\b.\0005\t/\0B\5\4\1\18\5\2\0'\a0\0'\b1\0005\t2\0B\5\4\1\18\5\2\0'\a3\0'\b4\0005\t5\0B\5\4\1\18\5\2\0'\a6\0'\b7\0005\t8\0B\5\4\1\18\5\2\0'\a9\0'\b:\0005\t;\0B\5\4\1\18\5\2\0'\a<\0'\b=\0005\t>\0B\5\4\1\18\5\2\0'\a?\0'\b@\0005\tA\0B\5\4\1\18\5\2\0'\aB\0'\bC\0005\tD\0B\5\4\1\18\5\2\0'\aE\0'\bF\0005\tG\0B\5\4\1\18\5\2\0'\aH\0'\bI\0005\tJ\0B\5\4\1\18\5\2\0'\aK\0'\bL\0005\tM\0B\5\4\1\18\5\2\0'\aN\0'\bO\0005\tP\0B\5\4\1\18\5\2\0'\aQ\0'\bR\0005\tS\0B\5\4\1\18\5\2\0'\aT\0'\bU\0005\tV\0B\5\4\1\18\5\2\0'\aW\0'\bX\0005\tY\0B\5\4\1\18\5\2\0'\aZ\0'\b[\0005\t\\\0B\5\4\1\18\5\2\0'\a]\0'\b^\0B\5\3\1\18\5\2\0'\a_\0'\b`\0B\5\3\1\18\5\2\0'\aa\0'\bb\0005\tc\0B\5\4\1\18\5\2\0'\ad\0'\be\0005\tf\0B\5\4\1\18\5\2\0'\ag\0'\bh\0005\ti\0B\5\4\1\18\5\2\0'\aj\0'\bk\0005\tl\0B\5\4\1\18\5\2\0'\am\0'\bn\0B\5\3\1\18\5\2\0'\ao\0'\bp\0005\tq\0B\5\4\1\18\5\2\0'\ar\0'\bs\0005\tt\0B\5\4\1\18\5\2\0'\au\0'\bv\0005\tw\0B\5\4\1\18\5\2\0'\ax\0'\by\0005\tz\0B\5\4\1\18\5\4\0'\a{\0'\b|\0005\t}\0B\5\4\1\18\5\2\0'\a~\0'\b\0005\tÄ\0B\5\4\1\18\5\2\0'\aÅ\0'\bÇ\0005\tÉ\0B\5\4\1\18\5\2\0'\aÑ\0'\bÖ\0005\tÜ\0B\5\4\1\18\5\2\0'\aá\0'\bà\0005\tâ\0B\5\4\1\18\5\2\0'\aä\0'\bã\0005\tå\0B\5\4\1\18\5\2\0'\aç\0'\bé\0B\5\3\1\18\5\2\0'\aè\0'\bê\0005\të\0B\5\4\1\18\5\2\0'\aí\0'\bì\0005\tî\0B\5\4\1\18\5\2\0'\aï\0'\bñ\0005\tó\0B\5\4\1\18\5\2\0'\aò\0'\bô\0005\tö\0B\5\4\1\18\5\2\0'\aõ\0'\bú\0005\tù\0B\5\4\1\18\5\2\0'\aû\0'\bü\0005\t†\0B\5\4\1\18\5\2\0'\a°\0'\b¢\0005\t£\0B\5\4\1\18\5\2\0'\a§\0'\b•\0005\t¶\0B\5\4\1\18\5\2\0'\aß\0'\b®\0005\t©\0B\5\4\1\18\5\2\0'\a™\0'\b´\0005\t¨\0B\5\4\1\18\5\2\0'\a≠\0'\bÆ\0005\tØ\0B\5\4\1\18\5\2\0'\a∞\0'\b±\0005\t≤\0B\5\4\1\18\5\2\0'\a≥\0'\b¥\0005\tµ\0B\5\4\1\18\5\2\0'\a∂\0'\b∑\0005\t∏\0B\5\4\1\18\5\2\0'\aπ\0'\b∫\0005\tª\0B\5\4\1\18\5\2\0'\aº\0'\bΩ\0005\tæ\0B\5\4\1\18\5\2\0'\aø\0'\b¿\0005\t¡\0B\5\4\1\18\5\2\0'\a¬\0'\b√\0005\tƒ\0B\5\4\1\18\5\2\0'\aø\0'\b≈\0005\t∆\0B\5\4\1\18\5\2\0'\a«\0'\b»\0005\t…\0B\5\4\1\18\5\2\0'\a \0'\bÀ\0005\tÃ\0B\5\4\1\18\5\2\0'\aÕ\0'\bŒ\0005\tœ\0B\5\4\1\18\5\2\0'\a–\0'\b—\0005\t“\0B\5\4\1K\0\1\0\1\0\1\tdesc\30Rails Generate Rspec View\29:Generate rspec:view<CR>\25<leader><leader>rgRv\1\0\1\tdesc Rails Generate Rspec System\31:Generate rspec:system<CR>\25<leader><leader>rgRS\1\0\1\tdesc\"Rails Generate Rspec Scaffold!:Generate rspec:scaffold<CR>\25<leader><leader>rgRs\1\0\1\tdesc!Rails Generate Rspec Request :Generate rspec:request<CR>\25<leader><leader>rgRr\1\0\1\tdesc\31Rails Generate Rspec Model\30:Generate rspec:model<CR>\1\0\1\tdesc!Rails Generate Rspec Mailbox :Generate rspec:mailbox<CR>\28<leader><leader>rgRmbox\1\0\1\tdesc Rails Generate Rspec Mailer\31:Generate rspec:mailer<CR>\25<leader><leader>rgRm\1\0\1\tdesc\29Rails Generate Rspec Job\28:Generate rspec:job<CR>\25<leader><leader>rgRj\1\0\1\tdesc%Rails Generate Rspec Integration$:Generate rspec:integration<CR>\25<leader><leader>rgRI\1\0\1\tdesc!Rails Generate Rspec Install :Generate rspec:install<CR>\25<leader><leader>rgRi\1\0\1\tdesc Rails Generate Rspec Helper\31:Generate rspec:helper<CR>\25<leader><leader>rgRh\1\0\1\tdesc#Rails Generate Rspec Generator\":Generate rspec:generator<CR>\25<leader><leader>rgRg\1\0\1\tdesc!Rails Generate Rspec Feature :Generate rspec:feature<CR>\25<leader><leader>rgRf\1\0\1\tdesc$Rails Generate Rspec Controller#:Generate rspec:controller<CR>\25<leader><leader>rgRc\1\0\1\tdesc!Rails Generate Rspec Channel :Generate rspec:channel<CR>\26<leader><leader>rgRch\1\0\1\tdesc\29Enable Rails Live Reload\":!rails livereload:enable<CR>\25<leader><leader>rlre\1\0\1\tdesc\30Disable Rails Live Reload#:!rails livereload:disable<CR>\25<leader><leader>rlrd\1\0\1\tdesc\30Install Rails Live Reload#:!rails livereload:install<CR>\25<leader><leader>rlri\1\0\1\tdesc Rails Generate Devise Views\":Generate devise:views<Space>\25<leader><leader>rgdv\1\0\1\tdesc Rails Generate Devise Model\28:Generate devise<Space>\25<leader><leader>rgdm\1\0\1\tdesc&Rails Generate Devise Controllers(:Generate devise:controllers<Space>\25<leader><leader>rgdc\1\0\1\tdesc\"Rails Generate Devise Install\":Generate devise:install <CR>\25<leader><leader>rgdi\1\0\1\tdesc$Rails Generate Annotate Install#:Generate annotate:install<CR>\25<leader><leader>rgaiw:!ctags -R --languages=Ruby --exclude=.git --exclude=log . $(bundle list --paths) && echo \"tags\" >> .gitignore<CR>\23<leader><leader>rt\1\0\1\tdesc&open web browser for current view\17:Preview<CR>\23<leader><leader>rp\1\0\1\tdesc\29Edit Factory File in Tab\23<cmd>RTfactory<CR>\24<leader><leader>rft\1\0\1\tdesc!Edit Factory File in V Split\23<cmd>RVfactory<CR>\24<leader><leader>rfv\1\0\1\tdesc!Edit Factory File in H Split\23<cmd>RSfactory<CR>\24<leader><leader>rfs\1\0\1\tdesc\22Edit Factory File\22<cmd>Rfactory<CR>\23<leader><leader>rf\1\0\1\tdesc\23extract to partial\14:Extract \24<leader><leader>rex\1\0\1\tdesc\29edit relative in v split\16<cmd>RT<CR>\24<leader><leader>ret\1\0\1\tdesc\25edit relative in tab\16<cmd>RV<CR>\24<leader><leader>rev\1\0\1\tdesc\29edit relative in h split\16<cmd>RS<CR>\24<leader><leader>res\1\0\1\tdesc\23edit relative file\16<cmd>RE<CR>\24<leader><leader>ree\15<cmd>R<CR>\23<leader><leader>re\1\0\1\tdesc\30edit alternate in v split\16<cmd>AT<CR>\24<leader><leader>rat\1\0\1\tdesc\28edit alternate in tab},\16<cmd>AV<CR>\24<leader><leader>rav\1\0\1\tdesc\30edit alternate in h split\16<cmd>AS<CR>\24<leader><leader>ras\1\0\1\tdesc\24edit alternate file\16<cmd>AE<CR>\24<leader><leader>rae\15<cmd>A<CR>\23<leader><leader>ra%<cmd>Rails<CR> | :set nowrap<CR>\23<leader><leader>rR\1\0\1\tdesc Rails Generate Task Command\26:Generate task<Space>\24<leader><leader>rgt\1\0\1\tdesc/Rails Generate Scaffold Controller Command):Generate scaffold_controller<Space>\25<leader><leader>rgsc\1\0\1\tdesc$Rails Generate Scaffold Command\30:Generate scaffold<Space>\24<leader><leader>rgs\1\0\1\tdesc1Rails Generate Responders Controller Command+:Generate responders_controller<Space>\25<leader><leader>rgrc\1\0\1\tdesc$Rails Generate Resource Command\30:Generate resource<Space>\24<leader><leader>rgr\1\0\1\tdesc%Rails Generate Migration Command\31:Generate migration<Space>\26<leader><leader>rgmig\1\0\1\tdesc#Rails Generate Mailbox Command\29:Generate mailbox<Space>\27<leader><leader>rgmbox\1\0\1\tdesc\"Rails Generate Mailer Command\28:Generate mailer<Space>\27<leader><leader>rgmail\1\0\1\tdesc!Rails Generate Model Command\27:Generate model<Space>\24<leader><leader>rgm\1\0\1\tdesc$Rails Generate Jbuilder Command\30:Generate jbuilder<Space>\25<leader><leader>rgjb\1\0\1\tdesc\31Rails Generate Job Command\25:Generate job<Space>\24<leader><leader>rgj\1\0\1\tdesc\"Rails Generate Helper Command\28:Generate helper<Space>\24<leader><leader>rgh\1\0\1\tdesc#Rails Generate Channel Command\29:Generate channel<Space>\25<leader><leader>rgch\1\0\1\tdesc&Rails Generate Controller Command :Generate controller<Space>\24<leader><leader>rgc\1\0\1\tdesc\27Rails Generate Command\21:Generate<Space>\23<leader><leader>rG\1\0\1\tdesc\26Rails DB:Seed Command\24:!rails db:seed<CR>\25<leader><leader>rdbS\1\0\1\tdesc\27Rails DB:Setup Command\25:!rails db:setup<CR>\25<leader><leader>rdbs\1\0\1\tdesc\30Rails DB:Rollback Command\28:!rails db:rollback<CR>\25<leader><leader>rdbr\1\0\1\tdesc\29Rails DB:Migrate Command\27:!rails db:migrate<CR>\25<leader><leader>rdbm\1\0\1\tdesc\26Rails DB:Drop Command\24:!rails db:drop<CR>\25<leader><leader>rdbd\1\0\1\tdesc\28Rails DB:Create Command\26:!rails db:create<CR>\25<leader><leader>rdbc\1\0\1\tdesc+Rails DB:Drop Create & Migrate Command-:!rails db:drop db:create db:migrate<CR>\25<leader><leader>rdba\1\0\1\tdesc\26Bundle Update Command\24:!bundle update<CR>\24<leader><leader>rbu\1\0\1\tdesc\27Bundle Install Command\25:!bundle install<CR>\24<leader><leader>rbi\1\0\1\tdesc\23Bundle Add Command\24:!bundle add<Space>\24<leader><leader>rba\1\0\1\tdesc\22Rails CLI command\19:!rails<Space>\23<leader><leader>rr\1\0\1\tdesc\26Rails Destroy Command\20:Destroy<Space>\23<leader><leader>rD\1\0\1\tdesc&Open Rails Server New Tmux Window\21<cmd>Server!<CR>\23<leader><leader>rs\1\0\1\tdesc'Open Rails Console New Tmux Window\22<cmd>Console!<CR>\23<leader><leader>rc\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-rfactory"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-rfactory",
    url = "https://github.com/christoomey/vim-rfactory"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-ultest"] = {
    config = { "\27LJ\2\nÜ\4\0\0\n\0\21\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1\18\5\2\0'\a\15\0'\b\16\0005\t\17\0B\5\4\1\18\5\2\0'\a\18\0'\b\19\0005\t\20\0B\5\4\1K\0\1\0\1\0\1\tdesc\23Stop Running Tests\24<cmd>UltestStop<CR>\15<leader>ux\1\0\1\tdesc\26Toggle Summary Window\27<cmd>UltestSummary<CR>\15<leader>us\1\0\1\tdesc\30Run All Test Current File\20<cmd>Ultest<CR>\15<leader>ur\1\0\1\tdesc\29Run Nearest Test Current\27<cmd>UltestNearest<CR>\15<leader>uj\1\0\1\tdesc\26Attach Live Debugging\26<cmd>UltestAttach<CR>\15<leader>ua\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/vim-ultest",
    url = "https://github.com/rcarriga/vim-ultest"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n◊\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fplugins\1\0\0\fpresets\1\0\a\14operators\2\6g\2\6z\2\bnav\2\fwindows\2\17text_objects\2\fmotions\2\rspelling\1\0\2\fenabled\2\16suggestions\3\20\1\0\2\14registers\1\nmarks\1\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["yode-nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14yode-nvim\frequire\0" },
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/yode-nvim",
    url = "https://github.com/hoschi/yode-nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim-nightly/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\a\0\a\0\n5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\1K\0\1\0\21<cmd>LazyGit<CR>\15<leader>gl\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0¿\18change_choice\18choice_active«\6\1\0\v\0#\0@6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0B\0\2\0016\0\0\0'\2\a\0B\0\2\0026\1\0\0'\3\b\0B\1\2\0029\2\t\0009\2\n\0025\4\v\0004\5\0\b9\6\f\0015\a\16\0005\b\14\0004\t\3\0005\n\r\0>\n\1\t=\t\15\b=\b\17\a<\a\6\5=\5\18\4B\2\2\0019\2\19\0'\4\20\0005\5\21\0B\2\3\0019\2\19\0'\4\22\0005\5\23\0B\2\3\0016\2\24\0009\2\25\0029\2\26\2'\4\27\0'\5\28\0003\6\29\0B\2\4\0016\2\24\0009\2\25\0029\2\26\2'\4\30\0'\5\31\0'\6 \0B\2\4\0016\2!\0'\4\"\0B\2\2\0012\0\0ÄK\0\1\0\17luasnip file\nprintJ<cmd>lua require('luasnip.loaders.from_lua').edit_snippet_files()<CR>\21<Space><Space>se\6n\0\n<c-l>\6i\bset\vkeymap\bvim\1\2\0\0\6_\ball\1\2\0\0\thtml\truby\20filetype_extend\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\22<- Current Choice\fNonTest\15choiceNode\1\0\6\25store_selection_keys\n<c-s>\24enable_autosnippets\1\22ext_prio_increase\3\1\18ext_base_prio\3»\1\fhistory\2\17updateevents\30TextChanged, TextChangedI\15set_config\vconfig\23luasnip.util.types\fluasnip\1\0\1\npaths'~/.config/nvim-nightly/luasnippets\tload\29luasnip.loaders.from_lua\"luasnip.loaders.from_snipmate\14lazy_load luasnip.loaders.from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\nì\3\0\0\n\0\15\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1K\0\1\0\1\0\1\tdesc\26Stop Markdown Preview\29:MarkdownPreviewStop<cr>\23<leader><leader>ms\1\0\1\tdesc\26Open Markdown Preview\25:MarkdownPreview<cr>\23<leader><leader>mo\1\0\1\tdesc,Toggle Markdown file in default browser\31:MarkdownPreviewToggle<cr>\23<leader><leader>mm\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0", "config", "markdown-preview.nvim")
time([[Config for markdown-preview.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n≤\1\0\0\5\1\b\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2-\1\0\0009\1\4\0015\3\6\0005\4\5\0>\0\6\4=\4\a\3B\1\2\1K\0\1\0\1¿\17find_command\1\0\1\14previewer\1\1\6\0\0\arg\f--files\f--iglob\n!.git\r--hidden\15find_files\31$HOME/.config/nvim-nightly\vexpand\afn\bvimq\0\0\4\1\4\0\a-\0\0\0009\0\0\0005\2\2\0005\3\1\0=\3\3\2B\0\2\1K\0\1\0\1¿\17find_command\1\0\1\14previewer\1\1\6\0\0\arg\f--files\f--iglob\n!.git\r--hidden\15find_files*\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\17file_browser'\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\14live_grep%\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\fkeymapsm\0\0\6\2\b\0\f-\0\0\0009\0\0\0005\2\6\0005\3\4\0005\4\2\0-\5\1\0009\5\1\5=\5\3\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\1¿\2¿\rmappings\1\0\0\6i\1\0\0\n<C-q>\1\0\0\19send_to_qflist\rquickfix\"\0\0\3\1\1\0\5-\0\0\0009\0\0\0004\2\0\0B\0\2\1K\0\1\0\1¿\ttagsP\0\0\3\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\fluasnip\15extensions\14telescope\frequireæ\v\1\0\r\0C\0ë\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\b\0005\6\6\0005\a\5\0=\a\a\6=\6\t\0055\6\22\0005\a\20\0005\b\15\0005\t\v\0006\n\0\0'\f\3\0B\n\2\0029\n\n\n=\n\f\t5\n\r\0=\n\14\t=\t\16\b5\t\17\0006\n\0\0'\f\3\0B\n\2\0029\n\n\n=\n\18\t=\t\19\b=\b\21\a=\a\23\0064\a\0\0=\a\24\6=\6\25\5B\3\2\0019\3\26\0'\5\23\0B\3\2\0019\3\26\0'\5\27\0B\3\2\0016\3\28\0003\4\30\0=\4\29\0036\3\28\0003\4 \0=\4\31\0036\3\28\0003\4\"\0=\4!\0036\3\28\0003\4$\0=\4#\0036\3\28\0003\4&\0=\4%\0036\3\28\0003\4(\0=\4'\0036\3\28\0003\4*\0=\4)\0036\3\28\0003\4,\0=\4+\0035\3-\0006\4.\0009\4/\0049\0040\4'\6\19\0'\a1\0'\b2\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\a3\0'\b4\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\a5\0'\b6\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\a7\0'\b8\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\a9\0'\b:\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\a;\0'\b<\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\a=\0'\b>\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\a?\0'\b@\0\18\t\3\0B\4\5\0016\4.\0009\4/\0049\0040\4'\6\19\0'\aA\0'\bB\0\18\t\3\0B\4\5\0012\0\0ÄK\0\1\0!<Cmd>lua TelescopeTags()<CR>\15<leader>ft\31<Cmd>Telescope luasnip<CR>\15<leader>fs%<Cmd>lua TelescopeQuickFix()<CR>\15<leader>fq#<Cmd>lua TelescopeKeyMap()<CR>\15<leader>fm!<Cmd>Telescope help_tags<CR>\15<leader>fh%<Cmd>lua TelescopeLiveGrep()<CR>\15<leader>fg&<Cmd>lua TelescopeFindFiles()<CR>\15<leader>ff,<Cmd>lua TelescopeFindConfigFiles()<CR>\15<leader>fc\28:Telescope file_browser\15<leader>fb\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0\21TelescopeLuaSnip\0\18TelescopeTags\0\22TelescopeQuickFix\0\20TelescopeKeyMap\0\22TelescopeLiveGrep\0\25TelescopeFileBrowser\0\23TelescopeFindFiles\0\29TelescopeFindConfigFiles\a_G\fluasnip\19load_extension\15extensions\tdash\17file_browser\1\0\0\rmappings\1\0\0\6n\ajk\1\0\0\6i\1\0\0\ajj\1\2\1\0\t<esc\ttype\fcommand\n<esc>\1\0\0\nclose\rdefaults\1\0\0\18layout_config\1\0\3\ruse_less\1\21sorting_strategy\15descending\20layout_strategy\15horizontal\1\0\1\20prompt_position\vbottom\nsetup\22telescope.actions\22telescope.builtin\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÕ\5\0\0\6\0'\00056\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\0035\4\v\0=\4\f\3=\3\r\0025\3\14\0=\3\15\0025\3\18\0005\4\16\0004\5\0\0=\5\17\4=\4\19\0035\4\20\0004\5\0\0=\5\21\0044\5\0\0=\5\22\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0044\5\0\0=\5\26\0044\5\0\0=\5\27\0044\5\0\0=\5\28\4=\4\29\3=\3\30\0025\3\31\0004\4\0\0=\4\17\3=\3 \2B\0\2\0016\0!\0009\0\"\0'\1$\0=\1#\0006\0!\0009\0\"\0'\1&\0=\1%\0K\0\1\0\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\bopt\bvim\17textsubjects\1\0\1\venable\2\16textobjects\tmove\22goto_previous_end\24goto_previous_start\18goto_next_end\20goto_next_start\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\14swap_next\1\0\1\venable\2\vselect\1\0\0\fkeymaps\1\0\2\venable\2\14lookahead\2\fendwise\1\0\1\venable\2\14highlight&additional_vim_regex_highlighting\1\2\0\0\borg\fdisable\1\2\0\0\borg\1\0\1\venable\2\vindent\1\0\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\a\0\0\blua\truby\thtml\bcss\15javascript\nquery\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-rails
time([[Config for vim-rails]], true)
try_loadstring("\27LJ\2\n∆6\0\0\n\0”\1\0‚\0026\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1\18\5\2\0'\a\15\0'\b\16\0005\t\17\0B\5\4\1\18\5\2\0'\a\18\0'\b\19\0005\t\20\0B\5\4\1\18\5\2\0'\a\21\0'\b\22\0005\t\23\0B\5\4\1\18\5\2\0'\a\24\0'\b\25\0005\t\26\0B\5\4\1\18\5\2\0'\a\27\0'\b\28\0005\t\29\0B\5\4\1\18\5\2\0'\a\30\0'\b\31\0005\t \0B\5\4\1\18\5\2\0'\a!\0'\b\"\0005\t#\0B\5\4\1\18\5\2\0'\a$\0'\b%\0005\t&\0B\5\4\1\18\5\2\0'\a'\0'\b(\0005\t)\0B\5\4\1\18\5\2\0'\a*\0'\b+\0005\t,\0B\5\4\1\18\5\2\0'\a-\0'\b.\0005\t/\0B\5\4\1\18\5\2\0'\a0\0'\b1\0005\t2\0B\5\4\1\18\5\2\0'\a3\0'\b4\0005\t5\0B\5\4\1\18\5\2\0'\a6\0'\b7\0005\t8\0B\5\4\1\18\5\2\0'\a9\0'\b:\0005\t;\0B\5\4\1\18\5\2\0'\a<\0'\b=\0005\t>\0B\5\4\1\18\5\2\0'\a?\0'\b@\0005\tA\0B\5\4\1\18\5\2\0'\aB\0'\bC\0005\tD\0B\5\4\1\18\5\2\0'\aE\0'\bF\0005\tG\0B\5\4\1\18\5\2\0'\aH\0'\bI\0005\tJ\0B\5\4\1\18\5\2\0'\aK\0'\bL\0005\tM\0B\5\4\1\18\5\2\0'\aN\0'\bO\0005\tP\0B\5\4\1\18\5\2\0'\aQ\0'\bR\0005\tS\0B\5\4\1\18\5\2\0'\aT\0'\bU\0005\tV\0B\5\4\1\18\5\2\0'\aW\0'\bX\0005\tY\0B\5\4\1\18\5\2\0'\aZ\0'\b[\0005\t\\\0B\5\4\1\18\5\2\0'\a]\0'\b^\0B\5\3\1\18\5\2\0'\a_\0'\b`\0B\5\3\1\18\5\2\0'\aa\0'\bb\0005\tc\0B\5\4\1\18\5\2\0'\ad\0'\be\0005\tf\0B\5\4\1\18\5\2\0'\ag\0'\bh\0005\ti\0B\5\4\1\18\5\2\0'\aj\0'\bk\0005\tl\0B\5\4\1\18\5\2\0'\am\0'\bn\0B\5\3\1\18\5\2\0'\ao\0'\bp\0005\tq\0B\5\4\1\18\5\2\0'\ar\0'\bs\0005\tt\0B\5\4\1\18\5\2\0'\au\0'\bv\0005\tw\0B\5\4\1\18\5\2\0'\ax\0'\by\0005\tz\0B\5\4\1\18\5\4\0'\a{\0'\b|\0005\t}\0B\5\4\1\18\5\2\0'\a~\0'\b\0005\tÄ\0B\5\4\1\18\5\2\0'\aÅ\0'\bÇ\0005\tÉ\0B\5\4\1\18\5\2\0'\aÑ\0'\bÖ\0005\tÜ\0B\5\4\1\18\5\2\0'\aá\0'\bà\0005\tâ\0B\5\4\1\18\5\2\0'\aä\0'\bã\0005\tå\0B\5\4\1\18\5\2\0'\aç\0'\bé\0B\5\3\1\18\5\2\0'\aè\0'\bê\0005\të\0B\5\4\1\18\5\2\0'\aí\0'\bì\0005\tî\0B\5\4\1\18\5\2\0'\aï\0'\bñ\0005\tó\0B\5\4\1\18\5\2\0'\aò\0'\bô\0005\tö\0B\5\4\1\18\5\2\0'\aõ\0'\bú\0005\tù\0B\5\4\1\18\5\2\0'\aû\0'\bü\0005\t†\0B\5\4\1\18\5\2\0'\a°\0'\b¢\0005\t£\0B\5\4\1\18\5\2\0'\a§\0'\b•\0005\t¶\0B\5\4\1\18\5\2\0'\aß\0'\b®\0005\t©\0B\5\4\1\18\5\2\0'\a™\0'\b´\0005\t¨\0B\5\4\1\18\5\2\0'\a≠\0'\bÆ\0005\tØ\0B\5\4\1\18\5\2\0'\a∞\0'\b±\0005\t≤\0B\5\4\1\18\5\2\0'\a≥\0'\b¥\0005\tµ\0B\5\4\1\18\5\2\0'\a∂\0'\b∑\0005\t∏\0B\5\4\1\18\5\2\0'\aπ\0'\b∫\0005\tª\0B\5\4\1\18\5\2\0'\aº\0'\bΩ\0005\tæ\0B\5\4\1\18\5\2\0'\aø\0'\b¿\0005\t¡\0B\5\4\1\18\5\2\0'\a¬\0'\b√\0005\tƒ\0B\5\4\1\18\5\2\0'\aø\0'\b≈\0005\t∆\0B\5\4\1\18\5\2\0'\a«\0'\b»\0005\t…\0B\5\4\1\18\5\2\0'\a \0'\bÀ\0005\tÃ\0B\5\4\1\18\5\2\0'\aÕ\0'\bŒ\0005\tœ\0B\5\4\1\18\5\2\0'\a–\0'\b—\0005\t“\0B\5\4\1K\0\1\0\1\0\1\tdesc\30Rails Generate Rspec View\29:Generate rspec:view<CR>\25<leader><leader>rgRv\1\0\1\tdesc Rails Generate Rspec System\31:Generate rspec:system<CR>\25<leader><leader>rgRS\1\0\1\tdesc\"Rails Generate Rspec Scaffold!:Generate rspec:scaffold<CR>\25<leader><leader>rgRs\1\0\1\tdesc!Rails Generate Rspec Request :Generate rspec:request<CR>\25<leader><leader>rgRr\1\0\1\tdesc\31Rails Generate Rspec Model\30:Generate rspec:model<CR>\1\0\1\tdesc!Rails Generate Rspec Mailbox :Generate rspec:mailbox<CR>\28<leader><leader>rgRmbox\1\0\1\tdesc Rails Generate Rspec Mailer\31:Generate rspec:mailer<CR>\25<leader><leader>rgRm\1\0\1\tdesc\29Rails Generate Rspec Job\28:Generate rspec:job<CR>\25<leader><leader>rgRj\1\0\1\tdesc%Rails Generate Rspec Integration$:Generate rspec:integration<CR>\25<leader><leader>rgRI\1\0\1\tdesc!Rails Generate Rspec Install :Generate rspec:install<CR>\25<leader><leader>rgRi\1\0\1\tdesc Rails Generate Rspec Helper\31:Generate rspec:helper<CR>\25<leader><leader>rgRh\1\0\1\tdesc#Rails Generate Rspec Generator\":Generate rspec:generator<CR>\25<leader><leader>rgRg\1\0\1\tdesc!Rails Generate Rspec Feature :Generate rspec:feature<CR>\25<leader><leader>rgRf\1\0\1\tdesc$Rails Generate Rspec Controller#:Generate rspec:controller<CR>\25<leader><leader>rgRc\1\0\1\tdesc!Rails Generate Rspec Channel :Generate rspec:channel<CR>\26<leader><leader>rgRch\1\0\1\tdesc\29Enable Rails Live Reload\":!rails livereload:enable<CR>\25<leader><leader>rlre\1\0\1\tdesc\30Disable Rails Live Reload#:!rails livereload:disable<CR>\25<leader><leader>rlrd\1\0\1\tdesc\30Install Rails Live Reload#:!rails livereload:install<CR>\25<leader><leader>rlri\1\0\1\tdesc Rails Generate Devise Views\":Generate devise:views<Space>\25<leader><leader>rgdv\1\0\1\tdesc Rails Generate Devise Model\28:Generate devise<Space>\25<leader><leader>rgdm\1\0\1\tdesc&Rails Generate Devise Controllers(:Generate devise:controllers<Space>\25<leader><leader>rgdc\1\0\1\tdesc\"Rails Generate Devise Install\":Generate devise:install <CR>\25<leader><leader>rgdi\1\0\1\tdesc$Rails Generate Annotate Install#:Generate annotate:install<CR>\25<leader><leader>rgaiw:!ctags -R --languages=Ruby --exclude=.git --exclude=log . $(bundle list --paths) && echo \"tags\" >> .gitignore<CR>\23<leader><leader>rt\1\0\1\tdesc&open web browser for current view\17:Preview<CR>\23<leader><leader>rp\1\0\1\tdesc\29Edit Factory File in Tab\23<cmd>RTfactory<CR>\24<leader><leader>rft\1\0\1\tdesc!Edit Factory File in V Split\23<cmd>RVfactory<CR>\24<leader><leader>rfv\1\0\1\tdesc!Edit Factory File in H Split\23<cmd>RSfactory<CR>\24<leader><leader>rfs\1\0\1\tdesc\22Edit Factory File\22<cmd>Rfactory<CR>\23<leader><leader>rf\1\0\1\tdesc\23extract to partial\14:Extract \24<leader><leader>rex\1\0\1\tdesc\29edit relative in v split\16<cmd>RT<CR>\24<leader><leader>ret\1\0\1\tdesc\25edit relative in tab\16<cmd>RV<CR>\24<leader><leader>rev\1\0\1\tdesc\29edit relative in h split\16<cmd>RS<CR>\24<leader><leader>res\1\0\1\tdesc\23edit relative file\16<cmd>RE<CR>\24<leader><leader>ree\15<cmd>R<CR>\23<leader><leader>re\1\0\1\tdesc\30edit alternate in v split\16<cmd>AT<CR>\24<leader><leader>rat\1\0\1\tdesc\28edit alternate in tab},\16<cmd>AV<CR>\24<leader><leader>rav\1\0\1\tdesc\30edit alternate in h split\16<cmd>AS<CR>\24<leader><leader>ras\1\0\1\tdesc\24edit alternate file\16<cmd>AE<CR>\24<leader><leader>rae\15<cmd>A<CR>\23<leader><leader>ra%<cmd>Rails<CR> | :set nowrap<CR>\23<leader><leader>rR\1\0\1\tdesc Rails Generate Task Command\26:Generate task<Space>\24<leader><leader>rgt\1\0\1\tdesc/Rails Generate Scaffold Controller Command):Generate scaffold_controller<Space>\25<leader><leader>rgsc\1\0\1\tdesc$Rails Generate Scaffold Command\30:Generate scaffold<Space>\24<leader><leader>rgs\1\0\1\tdesc1Rails Generate Responders Controller Command+:Generate responders_controller<Space>\25<leader><leader>rgrc\1\0\1\tdesc$Rails Generate Resource Command\30:Generate resource<Space>\24<leader><leader>rgr\1\0\1\tdesc%Rails Generate Migration Command\31:Generate migration<Space>\26<leader><leader>rgmig\1\0\1\tdesc#Rails Generate Mailbox Command\29:Generate mailbox<Space>\27<leader><leader>rgmbox\1\0\1\tdesc\"Rails Generate Mailer Command\28:Generate mailer<Space>\27<leader><leader>rgmail\1\0\1\tdesc!Rails Generate Model Command\27:Generate model<Space>\24<leader><leader>rgm\1\0\1\tdesc$Rails Generate Jbuilder Command\30:Generate jbuilder<Space>\25<leader><leader>rgjb\1\0\1\tdesc\31Rails Generate Job Command\25:Generate job<Space>\24<leader><leader>rgj\1\0\1\tdesc\"Rails Generate Helper Command\28:Generate helper<Space>\24<leader><leader>rgh\1\0\1\tdesc#Rails Generate Channel Command\29:Generate channel<Space>\25<leader><leader>rgch\1\0\1\tdesc&Rails Generate Controller Command :Generate controller<Space>\24<leader><leader>rgc\1\0\1\tdesc\27Rails Generate Command\21:Generate<Space>\23<leader><leader>rG\1\0\1\tdesc\26Rails DB:Seed Command\24:!rails db:seed<CR>\25<leader><leader>rdbS\1\0\1\tdesc\27Rails DB:Setup Command\25:!rails db:setup<CR>\25<leader><leader>rdbs\1\0\1\tdesc\30Rails DB:Rollback Command\28:!rails db:rollback<CR>\25<leader><leader>rdbr\1\0\1\tdesc\29Rails DB:Migrate Command\27:!rails db:migrate<CR>\25<leader><leader>rdbm\1\0\1\tdesc\26Rails DB:Drop Command\24:!rails db:drop<CR>\25<leader><leader>rdbd\1\0\1\tdesc\28Rails DB:Create Command\26:!rails db:create<CR>\25<leader><leader>rdbc\1\0\1\tdesc+Rails DB:Drop Create & Migrate Command-:!rails db:drop db:create db:migrate<CR>\25<leader><leader>rdba\1\0\1\tdesc\26Bundle Update Command\24:!bundle update<CR>\24<leader><leader>rbu\1\0\1\tdesc\27Bundle Install Command\25:!bundle install<CR>\24<leader><leader>rbi\1\0\1\tdesc\23Bundle Add Command\24:!bundle add<Space>\24<leader><leader>rba\1\0\1\tdesc\22Rails CLI command\19:!rails<Space>\23<leader><leader>rr\1\0\1\tdesc\26Rails Destroy Command\20:Destroy<Space>\23<leader><leader>rD\1\0\1\tdesc&Open Rails Server New Tmux Window\21<cmd>Server!<CR>\23<leader><leader>rs\1\0\1\tdesc'Open Rails Console New Tmux Window\22<cmd>Console!<CR>\23<leader><leader>rc\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0", "config", "vim-rails")
time([[Config for vim-rails]], false)
-- Config for: orgmode
time([[Config for orgmode]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0005\3\4\0004\4\0\0=\4\5\3B\1\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\5\nsetup\21setup_ts_grammar\forgmode\frequire\0", "config", "orgmode")
time([[Config for orgmode]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n–\2\0\0\v\0\26\0\0316\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\24\0005\4\22\0005\5\a\0005\6\4\0006\a\5\0=\a\6\6=\6\b\0055\6\n\0005\a\t\0=\a\v\6=\6\f\0055\6\17\0006\a\r\0009\a\14\a9\a\15\a'\t\16\0+\n\2\0B\a\3\2=\a\18\6=\6\19\0055\6\20\0=\6\21\5=\5\23\4=\4\25\3B\1\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\bvim\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\tpath\17runtime_path\1\0\1\fversion\vLuaJIT\nsetup\15solargraph\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-ultest
time([[Config for vim-ultest]], true)
try_loadstring("\27LJ\2\nÜ\4\0\0\n\0\21\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0\18\5\2\0'\a\6\0'\b\a\0005\t\b\0B\5\4\1\18\5\2\0'\a\t\0'\b\n\0005\t\v\0B\5\4\1\18\5\2\0'\a\f\0'\b\r\0005\t\14\0B\5\4\1\18\5\2\0'\a\15\0'\b\16\0005\t\17\0B\5\4\1\18\5\2\0'\a\18\0'\b\19\0005\t\20\0B\5\4\1K\0\1\0\1\0\1\tdesc\23Stop Running Tests\24<cmd>UltestStop<CR>\15<leader>ux\1\0\1\tdesc\26Toggle Summary Window\27<cmd>UltestSummary<CR>\15<leader>us\1\0\1\tdesc\30Run All Test Current File\20<cmd>Ultest<CR>\15<leader>ur\1\0\1\tdesc\29Run Nearest Test Current\27<cmd>UltestNearest<CR>\15<leader>uj\1\0\1\tdesc\26Attach Live Debugging\26<cmd>UltestAttach<CR>\15<leader>ua\rvnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0", "config", "vim-ultest")
time([[Config for vim-ultest]], false)
-- Config for: lush.nvim
time([[Config for lush.nvim]], true)
try_loadstring("\27LJ\2\nﬂ\1\0\0\v\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0009\5\6\0\18\6\2\0'\b\a\0'\t\b\0005\n\t\0B\6\4\1K\0\1\0\1\0\1\tdesc'Overview of Lush creation features\27:LushRunQuickstart<CR>\23<leader><leader>cs\rvnoremap\rtnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\frequire\0", "config", "lush.nvim")
time([[Config for lush.nvim]], false)
-- Config for: lir.nvim
time([[Config for lir.nvim]], true)
try_loadstring("\27LJ\2\n‰\1\0\0\a\0\v\0\0246\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0'\4\4\0'\5\5\0B\0\5\0016\0\0\0009\0\1\0009\0\6\0004\2\3\0005\3\n\0006\4\0\0009\4\a\0049\4\b\4'\6\t\0B\4\2\2>\4\1\3>\3\1\2+\3\1\0004\4\0\0B\0\4\1K\0\1\0\1\3\0\0\0\vNormal\b%:p\vexpand\afn\14nvim_echo=:<C-u>lua require\"lir.mark.actions\".toggle_mark(\"v\")<CR>\6J\6x\24nvim_buf_set_keymap\bapi\bvimG\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\2¿\14normal! j\bcmd\bvim\16toggle_markë\b\1\0\15\0D\0i6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0026\4\0\0'\6\5\0B\4\2\0029\4\6\0045\6\a\0005\a\b\0005\b\t\0=\b\n\a=\a\v\0063\a\f\0=\a\r\0065\a\15\0009\b\14\0=\b\16\a9\b\14\0=\b\17\a9\b\18\0=\b\19\a9\b\20\0=\b\21\a9\b\22\0=\b\23\a9\b\24\0=\b\25\a9\b\26\0=\b\27\a9\b\28\0=\b\29\a9\b\30\0=\b\31\a9\b \0=\b!\a9\b\"\0=\b#\a9\b$\0=\b%\a9\b&\0=\b'\a9\b(\0=\b)\a3\b*\0=\b+\a9\b,\3=\b-\a9\b.\3=\b/\a9\b0\3=\b1\a6\b\0\0'\n\2\0B\b\2\0029\b2\b=\b3\a6\b\0\0'\n\2\0B\b\2\0029\b4\b=\b5\a=\a6\6B\4\2\0016\4\0\0'\0067\0B\4\2\0029\4\6\0045\0068\0005\a9\0009\b\14\1=\b\16\a9\b\18\1=\b\19\a9\b\20\1=\b\21\a9\b\22\1=\b\23\a9\b:\1=\b\17\a=\a6\6B\4\2\0016\4\0\0'\6;\0B\4\2\0029\5<\0049\6=\0049\a>\0049\b?\0049\t@\4\18\n\6\0'\fA\0'\rB\0005\14C\0B\n\4\0012\0\0ÄK\0\1\0\1\0\1\tdesc%Toggle floating directory window):lua require\"lir.float\".toggle()<CR>\22<leader><leader>f\rvnoremap\rtnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\ropen_lir\1\0\0\1\0\1\18bookmark_path\20~/.lir_bookmark\17lir.bookmark\rmappings\aba\badd\6B\tlist\6p\npaste\6x\bcut\6c\tcopy\6J\0\6d\vdelete\6.\23toddle_show_hidden\6Y\14yank_path\6C\acd\6r\vrename\6a\fnewfile\6A\nmkdir\6q\tquit\t<BS>\aup\6t\ftabedit\6\\\vvsplit\6-\nsplit\t<CR>\6e\1\0\0\tedit\fon_init\0\nfloat\18curdir_window\1\0\2\venable\1\22highlight_dirname\1\1\0\1\rwinblend\3\0\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\2\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\25lir.bookmark.actions\16lir.actions\frequire\0", "config", "lir.nvim")
time([[Config for lir.nvim]], false)
-- Config for: yode-nvim
time([[Config for yode-nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14yode-nvim\frequire\0", "config", "yode-nvim")
time([[Config for yode-nvim]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n◊\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fplugins\1\0\0\fpresets\1\0\a\14operators\2\6g\2\6z\2\bnav\2\fwindows\2\17text_objects\2\fmotions\2\rspelling\1\0\2\fenabled\2\16suggestions\3\20\1\0\2\14registers\1\nmarks\1\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nõ\2\0\0\b\0\v\2+6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2Ä+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\b\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\t\2'\5\n\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¡\1\0\1\3\3\5\0\28-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\18Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\tÄ-\1\2\0\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\5¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\tjump\rjumpable\21select_prev_item\fvisible¿\v\1\0\16\0F\0¢\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\4\5\0039\5\6\1B\5\1\0013\5\a\0009\6\b\0005\b\f\0005\t\n\0003\n\t\0=\n\v\t=\t\r\b4\t\0\0=\t\14\b9\t\15\0009\t\16\t9\t\17\t5\v\19\0009\f\15\0009\f\18\f)\14¸ˇB\f\2\2=\f\20\v9\f\15\0009\f\18\f)\14\4\0B\f\2\2=\f\21\v9\f\15\0003\14\22\0005\15\23\0B\f\3\2=\f\24\v9\f\15\0003\14\25\0005\15\26\0B\f\3\2=\f\27\v9\f\15\0009\f\28\fB\f\1\2=\f\29\v9\f\15\0009\f\30\f5\14\31\0B\f\2\2=\f \vB\t\2\2=\t\15\b9\t!\0009\t\"\t4\v\a\0005\f#\0>\f\1\v5\f$\0>\f\2\v5\f%\0>\f\3\v5\f&\0>\f\4\v5\f'\0>\f\5\v5\f(\0>\f\6\v4\f\3\0005\r)\0>\r\1\f5\r*\0>\r\2\fB\t\3\2=\t\"\b5\t/\0009\n+\0015\f,\0005\r-\0=\r.\fB\n\2\2=\n0\t=\t1\bB\6\2\0019\6\b\0009\0062\6'\b3\0005\t8\0009\n\15\0009\n\16\n9\n2\n5\f5\0009\r\15\0009\r4\rB\r\1\2=\r\24\f9\r\15\0009\r6\rB\r\1\2=\r\27\f9\r\15\0009\r\30\r5\0157\0B\r\2\2=\r \fB\n\2\2=\n\15\t4\n\3\0005\v9\0>\v\1\n=\n\"\t5\n;\0005\v:\0=\v<\n=\n=\tB\6\3\0019\6\b\0009\0062\6'\b>\0005\tA\0009\n\15\0009\n\16\n9\n2\n5\f?\0009\r\15\0009\r4\rB\r\1\2=\r\24\f9\r\15\0009\r6\rB\r\1\2=\r\27\f9\r\15\0009\r\30\r5\15@\0B\r\2\2=\r \fB\n\2\2=\n\15\t9\n!\0009\n\"\n4\f\3\0005\rB\0>\r\1\f4\r\3\0005\14C\0>\14\1\rB\n\3\2=\n\"\t5\nE\0005\vD\0=\v<\n=\n=\tB\6\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\2\tname\rwildmenu\14separator\6|\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\1\0\1\vselect\2\1\0\0\6:\tview\fentries\1\0\0\1\0\2\tname\rwildmenu\14separator\6|\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\0\1\0\1\vselect\2\21select_prev_item\1\0\0\21select_next_item\6/\fcmdline\15formatting\vformat\1\0\0\tmenu\1\0\t\rnvim_lsp\n[LSP]\nemoji\f[EMOJI]\forgmode\n[ORG]\vpandoc\v[PDOC]\tpath\v[PATH]\fluasnip\v[SNIP]\vbuffer\r[BUFFER]\rnvim_lua\n[LUA]\ttags\v[TAGS]\1\0\1\tmode\16symbol_text\15cmp_format\1\0\1\tname\28nvim_lsp_signature_help\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\20cmp-pandoc.nvim\1\0\1\tname\22pandoc_references\1\0\1\tname\forgmode\1\0\1\tname\nemoji\1\0\1\tname\fluasnip\1\0\1\tname\bLSP\fsources\vconfig\ajk\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\n<C-k>\1\3\0\0\6i\6s\0\n<C-j>\1\3\0\0\6i\6s\0\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\vwindow\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\tinit\23trigger_completion\27smithwebdev.core.utils\fluasnip\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\nÊ\1\0\0\b\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0005\a\6\0B\3\4\1\18\3\2\0'\5\4\0'\6\a\0005\a\b\0B\3\4\1K\0\1\0\1\0\1\tdesc\30Runs code block in editor\22:'<,'>SnipRun<CR>\1\0\1\tdesc\30Runs code block in editor\17:SnipRun<CR>\15<leader>sr\rvnoremap\rnnoremap\27smithwebdev.core.utils\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\ní\6\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0034\4\0\0=\4\14\3B\1\2\1K\0\1\0\24server_filetype_map\25rename_output_qflist\1\0\2\venable\1\21auto_open_qflist\1\23rename_action_keys\1\0\2\texec\t<CR>\tquit\n<C-c>\21code_action_keys\1\0\2\texec\t<CR>\tquit\6q\23finder_action_keys\1\0\6\vvsplit\6v\tquit\6q\nsplit\6s\topen\6o\14scroll_up\n<C-b>\16scroll_down\n<C-f>\23code_action_prompt\1\0\4\venable\2\tsign\2\18sign_priority\3(\17virtual_text\2\1\0\17\29diagnostic_prefix_format\t%d. \22max_preview_lines\3\n\26finder_reference_icon\nÔåë  \27finder_definition_icon\nÔåë  \21code_action_icon\tÔ†¥ \27diagnostic_header_icon\v ÔÜà  \15infor_sign\bÔëâ\ndebug\1\14hint_sign\bÔ†µ\21highlight_prefix\1\14warn_sign\bÔî©\30diagnostic_message_format\n%m %c\15error_sign\bÔôô\29use_saga_diagnostic_sign\2\25rename_prompt_prefix\b‚û§\17border_style\vsingle\28definition_preview_icon\nÔî∏  \nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nî\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\20DEFAULT_OPTIONS\1\0\0\1\0\b\bRGB\2\vcss_fn\2\bcss\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\21default_mappings\2\nsigns\2\nsetup\nmarks\frequire\0", "config", "marks.nvim")
time([[Config for marks.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n™\2\0\0\n\0\15\0\0256\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\1\18\4\2\0009\2\4\2'\5\5\0009\6\6\0005\b\b\0005\t\a\0=\t\t\bB\6\2\0A\2\2\0016\2\0\0'\4\n\0B\2\2\0029\2\v\0025\4\r\0005\5\f\0=\5\14\4B\2\2\1K\0\1\0\21disable_filetype\1\0\0\1\5\0\0\20TelescopePrompt\vguihua\16guihua_rust\15clap_input\nsetup\19nvim-autopairs\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd harpoon ]]

-- Config for: harpoon
try_loadstring("\27LJ\2\n∫\5\0\0\v\0\25\0(6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0009\3\a\0009\4\b\0009\5\t\0\18\6\2\0'\b\n\0'\t\v\0005\n\f\0B\6\4\1\18\6\2\0'\b\r\0'\t\14\0005\n\15\0B\6\4\1\18\6\2\0'\b\16\0'\t\17\0005\n\18\0B\6\4\1\18\6\2\0'\b\19\0'\t\20\0005\n\21\0B\6\4\1\18\6\2\0'\b\22\0'\t\23\0005\n\24\0B\6\4\1K\0\1\0\1\0\1\tdesc\27View all project marks7:lua require(\"harpoon.ui\").toggle_quick_menu()<CR>\15<leader>jm\1\0\1\tdesc\31Navigates to previous mark.:lua require(\"harpoon.ui\").nav_prev()<CR>\15<leader>jk\1\0\1\tdesc\27Navigates to next mark.:lua require(\"harpoon.ui\").nav_next()<CR>\15<leader>jj\1\0\1\tdesc Mark Files to revisit later0:lua require(\"harpoon.mark\").add_file()<CR>\15<leader>jf\1\0\1\tdesc\23Show harpoon marks!:Telescope harpoon marks<CR>\15<leader>fj\rvnoremap\rtnoremap\rinoremap\rnnoremap\fnoremap\27smithwebdev.core.utils\fharpoon\19load_extension\14telescope\frequire\0", "config", "harpoon")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
