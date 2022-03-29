-- local AutoSave = vim.api.nvim_create_augroup('AutoSave', { clear = true })
-- vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello'", group = AutoSave})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'help',
  command = 'wincmd L'
  })

--local auto = vim.cmd
--auto [[
--    augroup autosave
--        au!
--        let blacklist = ['packer', 'netrw', 'TelescopePrompt', 'lspinfo', 'lsp-installer', 'query', 'tsplayground', 'text', 'harpoon', 'scratch']
--        au BufEnter * if &filetype == "" | setlocal ft=text | endif
--        au TextChanged,InsertLeave * if index(blacklist, &ft) < 0 && &modifiable && &buftype == ''| silent w | endif
--    augroup END
--  ]]

