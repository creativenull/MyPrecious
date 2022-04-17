local M = {}

M.plugin = {
  'neovim/nvim-lspconfig', -- https://github.com/neovim/nvim-lspconfig

  config = function()
    local config = require('lspconfig')

    config.solargraph.setup{
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = runtime_path,
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    }

--    local servers = { 'solargraph' }
--    for _, lsp in pairs(server) do
--      require('lspconfig')[lsp].setup {
--        on_attach = on_attach,
--        flags = {
--          debounce_text_changes = 150
--        }
--      }
--    end
  end
}

return M
