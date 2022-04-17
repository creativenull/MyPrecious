local M = {}

M.plugin = {
  'ray-x/navigator.lua',

  -- after = {
  --   'nvim-treesitter',
  -- },

  requires = {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',                  -- https://github.com/williamboman/nvim-lsp-installer
    'ray-x/lsp_signature.nvim',                         -- https://github.com/ray-x/lsp_signature.nvim
    { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
  },

  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.preselectSupport = true
    capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
    capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
    capabilities.textDocument.completion.completionItem.deprecatedSupport = true
    capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
    capabilities.textDocument.completion.completionItem.tagSupport = {valueSet = {1}}
    capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = {'documentation', 'detail', 'additionalTextEdits'}
    }
    capabilities.workspace.configuration = true

    require("lsp_signature").setup()

    require("navigator").setup({
      on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
          vim.cmd [[
            augroup lsp_buf_format
              au! BufWritePost <buffer> :lua vim.lsp.buf.formatting_sync()
            augroup END
          ]]
        end
        print(client.name .. ' is now attached.')
      end,

      lsp_installer = true,

      default_mapping = false,
      keymaps = {},

      treesitter_analysis = true,

      lsp = {
        code_action = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
        code_lens_action = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
        display_diagnostic_qf = true,
        format_on_save = true,

        servers = {
          'sumneko_lua',
          'solargraph',
          'tsserver'
        },

--        sumneko_lua = {
--          sumneko_root_path = vim.fn.expand("$HOME") .. '.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server',
--          sumneko_binary = vim.fn.expand("$HOME") .. 'local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server'
--        }
--
      },
    })

    vim.cmd("autocmd FileType guihua lua require('cmp').setup.buffer {enabled = false }")
    vim.cmd("autocmd FileType guihua_rust lua require('cmp').setup.buffer {enabled = false }")
  end
}

return M
