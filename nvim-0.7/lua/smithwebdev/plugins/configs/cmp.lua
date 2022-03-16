local M = {}

M.plugin = {
  'hrsh7th/nvim-cmp',

  requires = {
    -- CMP Addons --
    'hrsh7th/cmp-buffer',                  -- https://github.com/hrsh7th/cmp-buffer
    'hrsh7th/cmp-cmdline',                 -- https://github.com/hrsh7th/cmp-cmdline
    'octaltree/cmp-look',                  -- https://github.com/octaltree/cmp-look
    'saadparwaiz1/cmp_luasnip',            -- https://github.com/saadparwaiz1/cmp_luasnip
    'hrsh7th/cmp-nvim-lsp',                -- https://github.com/hrsh7th/cmp-nvim-lsp
    'hrsh7th/cmp-nvim-lua',                -- https://github.com/hrsh7th/cmp-nvim-lua
    'quangnguyen30192/cmp-nvim-tags',      -- https://github.com/quangnguyen30192/cmp-nvim-tags
    'hrsh7th/cmp-path',                    -- https://github.com/hrsh7th/cmp-path
    'ray-x/cmp-treesitter',                -- https://github.com/ray-x/cmp-treesitter
    'quangnguyen30192/cmp-nvim-ultisnips', -- https://github.com/quangnguyen30192/cmp-nvim-ultisnips

    -- Additional 
    'onsails/lspkind-nvim',                -- https://github.com/onsails/lspkind-nvim},
    'windwp/nvim-autopairs',               -- https://github.com/windwp/nvim-autopairs

    -- Premade Snippet Plugins
    'honza/vim-snippets',                  -- https://github.com/honza/vim-snippets
    'rafamadriz/friendly-snippets',        -- https://github.com/rafamadriz/friendly-snippets
  },

  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')

    
  end
}

return M
