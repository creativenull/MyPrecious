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
  'animate',             -- https://github.com/camspiers/animate.vim
  'indent_blankline',    -- https://github.com/lukas-reineke/indent-blankline.nvim
  'vim-smoothie',        -- https://github.com/psliwka/vim-smoothie

  -- Completion & Snippets -- 
  'luasnip',             -- https://github.com/L3MON4D3/LuaSnip
  'cmp',                 -- https://github.com/hrsh7th/nvim-cmp

  -- Editing
  'easyalign',          -- https://github.com/junegunn/vim-easy-align
  'emmet',               -- https://github.com/mattn/emmet-vim
  'hlslens',             -- https://github.com/kevinhwang91/nvim-hlslens
  'marks',               -- https://github.com/chentau/marks.nvim
  'peekabo',             -- https://github.com/junegunn/vim-peekaboo
  'surround',            -- https://github.com/tpope/vim-surround

  -- Filetype
  'markdown_preview',    -- https://github.com/iamcco/markdown-preview.nvim
  'rails',               -- https://github.com/tpope/vim-rails
  'sniprun',             -- https://github.com/michaelb/sniprun

  -- Fuzzy / File Finder
  'harpoon', -- https://github.com/ThePrimeagen/harpoon
  'telescope',           -- https://github.com/nvim-telescope/telescope.nvim

  -- Git
  'lazygit',             -- https://github.com/kdheepak/lazygit.nvim

  -- Keybinds
  'whichkey',            -- https://github.com/folke/which-key.nvim

  -- Treesitter/ Syntax Highlighting
  'treesitter',          -- https://github.com/nvim-treesitter/nvim-treesitter
}

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  for _, v in pairs(plugins) do
    use(require('smithwebdev.plugins.configs.'..v).plugin)
  end
end)

print('Plugins connected...')
