local M = {}

M.plugin = {
  'nvim-treesitter/nvim-treesitter',
  'RRethy/nvim-treesitter-endwise', -- https://github.com/RRethy/nvim-treesitter-endwise

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = 'maintained',
     indent = {
        enable = true,
      },
      highlight = {
        enable = true,
      },
      endwise = {
        enable = true,
      },
    })
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  end
}

return M
