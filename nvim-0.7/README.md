# Nightly Configuration

The basis of this configuration is to continue to build on my understanding of
Neovim, prepare for the upcoming release of 0.7 version, and to further polish
my axe. Within this configuration file, the goal is to provide a DRY and modular
experience when changes or updates are needed/ performed.

All Plugins listed will have their own file that includes any dependencies or
additional plugins that support the main plugin. This helps to keep the plugin
init file clean, while keeping the responsibility of each plugin tightly
coupled.

#### TODO
- Attempt to find a solution to make snippets more modular. Instead of one large file, there should be a way to not only break into filetypes, but to create the snippet based on the filetype of file currently working on


#### Included Plugins
[CMP](https://github.com/hrsh7th/nvim-cmp) - Completion plugin
  - Additional CMP Plugins
    - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
    - [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
    - [cmp-look](https://github.com/octaltree/cmp-look)
    - [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    - [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
    - [cmp-nvim-tags](https://github.com/quangnguyen30192/cmp-nvim-tags)
    - [cmp-path](https://github.com/hrsh7th/cmp-path)
    - [cmp-treesitter](https://github.com/ray-x/cmp-treesitter)
    - [cmp-nvim-ultisnips](https://github.com/quangnguyen30192/cmp-nvim-ultisnips)
  - Premade Snippet Plugins
    - [vim-snippets](https://github.com/honza/vim-snippets)
    - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)


[LuaSnip](https://github.com/L3MON4D3/LuaSnip)

#### Inspirations
[Elianiva's
Dotfiles](https://github.com/elianiva/dotfiles/tree/master/config/nvim)


