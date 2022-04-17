local install_path = os.getenv('HOME').. '/.local/share/nvim-nightly/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  local plugin_repo = 'https://github.com/wbthomason/packer.nvim'
  local cli = string.format('!git clone %s %s', plugin_repo, install_path)
  vim.cmd(cli)
end

vim.cmd 'packadd packer.nvim'
local packer = require'packer'

-- Use your local data path and not plugin/
-- this is `~/.local/share/nvim/site/plugin/packer_compiled.lua` in WSL/Linux and MacOS
packer.init {
  package_root = os.getenv('HOME') .. '/.local/share/nvim-nightly/site/pack',
  compile_path = os.getenv('HOME') .. '/.config/nvim-nightly/plugin/packer_compiled.vim',
}

local plugins = {

  -- Aesthetics --
  'animate',          -- https://github.com/camspiers/animate.vim
  'indent_blankline', -- https://github.com/lukas-reineke/indent-blankline.nvim
  --  'colorbuddy', -- https://github.com/tjdevries/colorbuddy.nvim
  'lush',             -- https://github.com/rktjmp/lush.nvim
  'statusline', -- https://github.com/beauwilliams/statusline.lua
  'vim-smoothie',     -- https://github.com/psliwka/vim-smoothie

  -- Completion & Snippets -- 
  'luasnip',          -- https://github.com/L3MON4D3/LuaSnip
  'cmp',              -- https://github.com/hrsh7th/nvim-cmp

  -- Editing --
  'autopairs',  -- https://github.com/windwp/nvim-autopairs
  'colorizer',        -- https://github.com/norcalli/nvim-colorizer.lua
  'easyalign',        -- https://github.com/junegunn/vim-easy-align
  'emmet',            -- https://github.com/mattn/emmet-vim
  'hlslens',          -- https://github.com/kevinhwang91/nvim-hlslens
  'leap',             -- https://github.com/ggandor/leap.nvim
  'marks',            -- https://github.com/chentau/marks.nvim
  'peekabo',          -- https://github.com/junegunn/vim-peekaboo
  'surround',         -- https://github.com/tpope/vim-surround
  'vim-exchange', -- https://github.com/tommcdo/vim-exchange
  'yode',             -- https://github.com/hoschi/yode-nvim
  'zen', -- https://github.com/folke/zen-mode.nvim

  -- Filetype --
  'markdown_preview', -- https://github.com/iamcco/markdown-preview.nvim
  'rails',            -- https://github.com/tpope/vim-rails
  'sniprun',          -- https://github.com/michaelb/sniprun

  -- Fuzzy / File Finder --
  'harpoon',          -- https://github.com/ThePrimeagen/harpoon
  'lir',              -- https://github.com/tamago324/lir.nvim
  'telescope',        -- https://github.com/nvim-telescope/telescope.nvim

  -- Git --
  'lazygit',          -- https://github.com/kdheepak/lazygit.nvim

  -- Keybinds --
  'whichkey',         -- https://github.com/folke/which-key.nvim

  -- LSP/Navigator --
  'lspconfig',
  'lspsaga',
  --'navigator',        -- https://github.com/ray-x/navigator.lua

  -- Project Organization --
  'orgmode', --https://github.com/nvim-orgmode/orgmode
  'vim-mkdir', -- https://github.com/pbrisbin/vim-mkdir

  -- Testing --
  'vim-ultest', -- https://github.com/rcarriga/vim-ultest

  -- Treesitter/ Syntax Highlighting --
  'treesitter',       -- https://github.com/nvim-treesitter/nvim-treesitter
}

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  for _, v in pairs(plugins) do
    use(require('smithwebdev.plugins.configs.'..v).plugin)
  end
end)

vim.cmd 'PackerSync'
print('Plugins connected...')
