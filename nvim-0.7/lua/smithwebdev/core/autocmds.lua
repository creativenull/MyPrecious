-- local AutoSave = vim.api.nvim_create_augroup('AutoSave', { clear = true })
-- vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello'", group = AutoSave})
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'help',
  command = 'wincmd L'
  })
